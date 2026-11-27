# BuyerAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyerActivity**](BuyerAPI.md#createbuyeractivity) | **POST** /v1/buyer/activity | Report an item your user is looking at, and get our answer.
[**createBuyerAuctionBid**](BuyerAPI.md#createbuyerauctionbid) | **POST** /v1/buyer/auctions/{slug}/bids | Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.
[**createBuyerAuctionPay**](BuyerAPI.md#createbuyerauctionpay) | **POST** /v1/buyer/auctions/{slug}/pay | Pay for an auction you won whose automatic charge did not go through.
[**createBuyerAuctionRetract**](BuyerAPI.md#createbuyerauctionretract) | **POST** /v1/buyer/auctions/{slug}/retract | Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.
[**createBuyerBoard**](BuyerAPI.md#createbuyerboard) | **POST** /v1/buyer/boards | Create an outfit board.
[**createBuyerBoardItem**](BuyerAPI.md#createbuyerboarditem) | **POST** /v1/buyer/boards/{id}/items | Add a listing (by slug) to a board, at the next free spot.
[**createBuyerBreakSpotHold**](BuyerAPI.md#createbuyerbreakspothold) | **POST** /v1/buyer/breaks/{id}/spots/{spotId}/hold | Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.
[**createBuyerBuybackRequest**](BuyerAPI.md#createbuyerbuybackrequest) | **POST** /v1/buyer/buybacks/{id}/request | Ask Crossly to buy an item back under its buyback guarantee.
[**createBuyerCartItem**](BuyerAPI.md#createbuyercartitem) | **POST** /v1/buyer/cart/items | Add a listing to your cart.
[**createBuyerCartItemSaveForLater**](BuyerAPI.md#createbuyercartitemsaveforlater) | **POST** /v1/buyer/cart/items/{id}/save-for-later | Move a cart line to saved-for-later.
[**createBuyerCartOptimizer**](BuyerAPI.md#createbuyercartoptimizer) | **POST** /v1/buyer/cart-optimizer | Cart optimizer: send a shopping list (one item per line, \&quot;2 Charizard Base Set\&quot;) and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.
[**createBuyerCartQuote**](BuyerAPI.md#createbuyercartquote) | **POST** /v1/buyer/cart/quote | Price the cart, delivered — item, shipping, tax, total.
[**createBuyerCartSavedMoveToCart**](BuyerAPI.md#createbuyercartsavedmovetocart) | **POST** /v1/buyer/cart/saved/{id}/move-to-cart | Move a saved item back into your cart, at today’s price.
[**createBuyerCaseCounter**](BuyerAPI.md#createbuyercasecounter) | **POST** /v1/buyer/cases/{id}/counter | Propose your own refund figure on a case.
[**createBuyerCaseEscalate**](BuyerAPI.md#createbuyercaseescalate) | **POST** /v1/buyer/cases/{id}/escalate | Ask Crossly to step in on a case.
[**createBuyerCaseMessage**](BuyerAPI.md#createbuyercasemessage) | **POST** /v1/buyer/cases/{id}/messages | Post a message on a case thread.
[**createBuyerCaseRespond**](BuyerAPI.md#createbuyercaserespond) | **POST** /v1/buyer/cases/{id}/respond | Accept or reject the seller’s partial-refund offer on a case.
[**createBuyerCaseWithdraw**](BuyerAPI.md#createbuyercasewithdraw) | **POST** /v1/buyer/cases/{id}/withdraw | Withdraw a case you opened.
[**createBuyerCatalogListingRental**](BuyerAPI.md#createbuyercataloglistingrental) | **POST** /v1/buyer/catalog/listings/{slug}/rental | Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.
[**createBuyerCatalogListingRentalQuote**](BuyerAPI.md#createbuyercataloglistingrentalquote) | **POST** /v1/buyer/catalog/listings/{slug}/rental/quote | Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. &#x60;problem&#x60; says why the dates can’t be booked.
[**createBuyerCatalogListingVideoRequest**](BuyerAPI.md#createbuyercataloglistingvideorequest) | **POST** /v1/buyer/catalog/listings/{slug}/video-requests | Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.
[**createBuyerCompany**](BuyerAPI.md#createbuyercompany) | **POST** /v1/buyer/company | Create a buyer company: name, taxId?, website?. You become its owner; a user is in at most one company.
[**createBuyerCompanyApproval**](BuyerAPI.md#createbuyercompanyapproval) | **POST** /v1/buyer/company/approvals | Ask for approval of a trade order above your limit: sellerUserId, amountCents, note?, poReference?. Good for 7 days, used once at checkout.
[**createBuyerCompanyApprovalDecide**](BuyerAPI.md#createbuyercompanyapprovaldecide) | **POST** /v1/buyer/company/approvals/{id}/decide | Approve or decline a pending request (owner, accounts payable): decision approved | declined, note?.
[**createBuyerCompanyMember**](BuyerAPI.md#createbuyercompanymember) | **POST** /v1/buyer/company/members | Invite a teammate by email (owner): role owner | buyer | accounts_payable | viewer, approvalLimitCents for a buyer (orders above it need an approval).
[**createBuyerConversationInvite**](BuyerAPI.md#createbuyerconversationinvite) | **POST** /v1/buyer/conversations/{id}/invite | Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.
[**createBuyerConversationJoin**](BuyerAPI.md#createbuyerconversationjoin) | **POST** /v1/buyer/conversations/join/{token} | Join a chat you were invited into, as a guest.
[**createBuyerEventRsvp**](BuyerAPI.md#createbuyereventrsvp) | **POST** /v1/buyer/events/{slug}/rsvp | RSVP to an event: going (counts against its capacity) or interested.
[**createBuyerFeedback**](BuyerAPI.md#createbuyerfeedback) | **POST** /v1/buyer/feedback | Leave feedback on up to 25 orders at once, with optional detailed seller ratings.
[**createBuyerFitRef**](BuyerAPI.md#createbuyerfitref) | **POST** /v1/buyer/fit/refs | Save a reference garment (flat measurements, inches) to compare listings against.
[**createBuyerFollowingSellerSeen**](BuyerAPI.md#createbuyerfollowingsellerseen) | **POST** /v1/buyer/following/sellers/seen | Clear the \&quot;new listings\&quot; count on a followed seller, or on all of them.
[**createBuyerGiftCard**](BuyerAPI.md#createbuyergiftcard) | **POST** /v1/buyer/gift-cards | Start a gift card purchase.
[**createBuyerGiftCardRedeem**](BuyerAPI.md#createbuyergiftcardredeem) | **POST** /v1/buyer/gift-cards/redeem | Redeem a gift card code into your own balance.
[**createBuyerGroupBuyJoin**](BuyerAPI.md#createbuyergroupbuyjoin) | **POST** /v1/buyer/group-buys/{id}/join | Join a group buy with a quantity (up to its per-buyer max): a hold (or, for pay-now pools, a charge refunded the difference) at the starting price, settled at the price the group reaches. &#x60;linkToken&#x60; opens a link-only pool. Checked against this key’s spending controls; send an Idempotency-Key.
[**createBuyerGroupBuyLeave**](BuyerAPI.md#createbuyergroupbuyleave) | **POST** /v1/buyer/group-buys/{id}/leave | Leave a group buy and release your hold.
[**createBuyerHunt**](BuyerAPI.md#createbuyerhunt) | **POST** /v1/buyer/hunts | Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). &#x60;offer&#x60; and &#x60;buy&#x60; modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.
[**createBuyerInstantOfferAccept**](BuyerAPI.md#createbuyerinstantofferaccept) | **POST** /v1/buyer/instant-offers/{id}/accept | Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.
[**createBuyerLayawayCancel**](BuyerAPI.md#createbuyerlayawaycancel) | **POST** /v1/buyer/layaways/{id}/cancel | Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).
[**createBuyerLayawayPay**](BuyerAPI.md#createbuyerlayawaypay) | **POST** /v1/buyer/layaways/{id}/pay | Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.
[**createBuyerListingAudioSummary**](BuyerAPI.md#createbuyerlistingaudiosummary) | **POST** /v1/buyer/listings/{slug}/audio-summary | Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.
[**createBuyerListingSplit**](BuyerAPI.md#createbuyerlistingsplit) | **POST** /v1/buyer/listings/{slug}/split | Split a purchase: one pay link per person; nobody is charged until all have paid.
[**createBuyerListingSubscribe**](BuyerAPI.md#createbuyerlistingsubscribe) | **POST** /v1/buyer/listings/{slug}/subscribe | Subscribe &amp; save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.
[**createBuyerListingTryOn**](BuyerAPI.md#createbuyerlistingtryon) | **POST** /v1/buyer/listings/{slug}/try-on | Render an AI try-on of this listing on the buyer’s own photo (base64 &#x60;photo&#x60;, or &#x60;reuseLastPhoto&#x60;). &#x60;confirmSelfAdult&#x60; must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.
[**createBuyerMarketBid**](BuyerAPI.md#createbuyermarketbid) | **POST** /v1/buyer/market/bids | Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.
[**createBuyerMarketWatch**](BuyerAPI.md#createbuyermarketwatch) | **POST** /v1/buyer/market/watches | Watch a market variant: alert at or below a price, or on any drop.
[**createBuyerOffer**](BuyerAPI.md#createbuyeroffer) | **POST** /v1/buyer/offers | Offer a price on a listing.
[**createBuyerOfferRespond**](BuyerAPI.md#createbuyerofferrespond) | **POST** /v1/buyer/offers/{id}/respond | Answer a seller’s counteroffer — accept, decline, or counter back.
[**createBuyerOrderCancel**](BuyerAPI.md#createbuyerordercancel) | **POST** /v1/buyer/orders/{id}/cancel | Cancel an order before it ships — refunds it in full.
[**createBuyerOrderInr**](BuyerAPI.md#createbuyerorderinr) | **POST** /v1/buyer/orders/{id}/inr | Open an item-not-received case.
[**createBuyerOrderReceived**](BuyerAPI.md#createbuyerorderreceived) | **POST** /v1/buyer/orders/{id}/received | Confirm you received an order.
[**createBuyerOrderTip**](BuyerAPI.md#createbuyerordertip) | **POST** /v1/buyer/orders/{id}/tip | Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.
[**createBuyerPackFairnessRotate**](BuyerAPI.md#createbuyerpackfairnessrotate) | **POST** /v1/buyer/packs/fairness/rotate | Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.
[**createBuyerPackOpen**](BuyerAPI.md#createbuyerpackopen) | **POST** /v1/buyer/packs/{slug}/open | Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.
[**createBuyerPackOpeningSellBack**](BuyerAPI.md#createbuyerpackopeningsellback) | **POST** /v1/buyer/pack-openings/{id}/sell-back | Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.
[**createBuyerPassportClaim**](BuyerAPI.md#createbuyerpassportclaim) | **POST** /v1/buyer/passports/{code}/claim | Claim a passport as the item’s current owner — the buyer of its latest Crossly sale, or (after a sale on another marketplace) with the transfer code from the card in the box — shown as “in its owner’s hands” until it sells again.
[**createBuyerProtectionPlanCancel**](BuyerAPI.md#createbuyerprotectionplancancel) | **POST** /v1/buyer/protection-plans/{id}/cancel | Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.
[**createBuyerPurchaseFit**](BuyerAPI.md#createbuyerpurchasefit) | **POST** /v1/buyer/purchases/{id}/fit | Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.
[**createBuyerPurchaseReturn**](BuyerAPI.md#createbuyerpurchasereturn) | **POST** /v1/buyer/purchases/{id}/return | Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, &#x60;fit&#x60; (small | large) says which way, and it feeds your size memory.
[**createBuyerRegistry**](BuyerAPI.md#createbuyerregistry) | **POST** /v1/buyer/registries | Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.
[**createBuyerRegistryGiftThanked**](BuyerAPI.md#createbuyerregistrygiftthanked) | **POST** /v1/buyer/registries/{id}/gifts/{giftId}/thanked | Tick a gift as thanked (or untick it).
[**createBuyerRentalArrivalPhoto**](BuyerAPI.md#createbuyerrentalarrivalphoto) | **POST** /v1/buyer/rentals/{id}/arrival-photos | Photograph a rental on arrival (URLs you uploaded): your side of the condition record.
[**createBuyerRentalBuyout**](BuyerAPI.md#createbuyerrentalbuyout) | **POST** /v1/buyer/rentals/{id}/buyout | Buy the item you are renting: the price less the rent-to-own credit → clientSecret.
[**createBuyerRentalCancel**](BuyerAPI.md#createbuyerrentalcancel) | **POST** /v1/buyer/rentals/{id}/cancel | Cancel a rental that has not shipped: everything is refunded.
[**createBuyerRentalClaimResponse**](BuyerAPI.md#createbuyerrentalclaimresponse) | **POST** /v1/buyer/rentals/{id}/claim-response | Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).
[**createBuyerRentalDelivered**](BuyerAPI.md#createbuyerrentaldelivered) | **POST** /v1/buyer/rentals/{id}/delivered | Confirm your rental arrived.
[**createBuyerRentalExtension**](BuyerAPI.md#createbuyerrentalextension) | **POST** /v1/buyer/rentals/{id}/extensions | Ask for more days. Auto-approved extensions return a clientSecret to pay with Stripe.
[**createBuyerRentalExtensionPay**](BuyerAPI.md#createbuyerrentalextensionpay) | **POST** /v1/buyer/rentals/{id}/extensions/{extensionId}/pay | Pay for an extension the seller approved → clientSecret.
[**createBuyerRentalIdentityStart**](BuyerAPI.md#createbuyerrentalidentitystart) | **POST** /v1/buyer/rentals/identity/start | Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open &#x60;url&#x60; (hosted) or use &#x60;clientSecret&#x60; with Stripe.js.
[**createBuyerRentalReturnShipped**](BuyerAPI.md#createbuyerrentalreturnshipped) | **POST** /v1/buyer/rentals/{id}/return-shipped | Say you sent your rental back (optionally with photos).
[**createBuyerReturnCancel**](BuyerAPI.md#createbuyerreturncancel) | **POST** /v1/buyer/returns/{id}/cancel | Cancel a return before it ships.
[**createBuyerReturnTracking**](BuyerAPI.md#createbuyerreturntracking) | **POST** /v1/buyer/returns/{id}/tracking | Add tracking to a return you shipped on your own label.
[**createBuyerSellerClubJoin**](BuyerAPI.md#createbuyersellerclubjoin) | **POST** /v1/buyer/sellers/{sellerUserId}/club/join | Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.
[**createBuyerSellerLoyaltyJoin**](BuyerAPI.md#createbuyersellerloyaltyjoin) | **POST** /v1/buyer/sellers/{sellerUserId}/loyalty/join | Join a seller’s loyalty club. Invite-only clubs take only invited buyers. Your tier and its perks are granted at once.
[**createBuyerSellerReport**](BuyerAPI.md#createbuyersellerreport) | **POST** /v1/buyer/sellers/{username}/report | Report a seller to Crossly’s trust team.
[**createBuyerSplitCancel**](BuyerAPI.md#createbuyersplitcancel) | **POST** /v1/buyer/splits/{id}/cancel | Cancel a split you organised; every held share is released.
[**createBuyerStoreReport**](BuyerAPI.md#createbuyerstorereport) | **POST** /v1/buyer/stores/{slug}/report | Report a store to Crossly’s trust team.
[**createBuyerTogether**](BuyerAPI.md#createbuyertogether) | **POST** /v1/buyer/together | Start a shop-together room.
[**createBuyerTogetherItem**](BuyerAPI.md#createbuyertogetheritem) | **POST** /v1/buyer/together/{code}/items | Add a listing to a shop-together board.
[**createBuyerTogetherItemVote**](BuyerAPI.md#createbuyertogetheritemvote) | **POST** /v1/buyer/together/{code}/items/{id}/vote | Vote an item on a room’s board up (1), down (-1) or clear (0).
[**createBuyerTogetherJoin**](BuyerAPI.md#createbuyertogetherjoin) | **POST** /v1/buyer/together/{code}/join | Join a shop-together room by its code.
[**createBuyerTogetherLeave**](BuyerAPI.md#createbuyertogetherleave) | **POST** /v1/buyer/together/{code}/leave | Leave a shop-together room.
[**createBuyerTogetherMessage**](BuyerAPI.md#createbuyertogethermessage) | **POST** /v1/buyer/together/{code}/messages | Say something in a shop-together room.
[**createBuyerTotalRequest**](BuyerAPI.md#createbuyertotalrequest) | **POST** /v1/buyer/total-requests | Ask a seller for one combined shipping total on everything of theirs in your cart.
[**createBuyerVaultList**](BuyerAPI.md#createbuyervaultlist) | **POST** /v1/buyer/vault/{id}/list | Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.
[**createBuyerVaultUnlist**](BuyerAPI.md#createbuyervaultunlist) | **POST** /v1/buyer/vault/{id}/unlist | Take a vault item off the market; it stays stored.
[**createBuyerVaultWithdraw**](BuyerAPI.md#createbuyervaultwithdraw) | **POST** /v1/buyer/vault/{id}/withdraw | Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.
[**createBuyerWholesaleCatalogApply**](BuyerAPI.md#createbuyerwholesalecatalogapply) | **POST** /v1/buyer/wholesale/catalogs/{storeSlug}/{catalogSlug}/apply | Apply to a store&#39;s wholesale catalog: { message?, answers [{ id, value }], resaleCertUrl?, resaleCertState?, taxId?, businessInfo? }. The seller&#39;s requirements are enforced (400 trade_apply_requirements names the first one missing); the seller reviews the request.
[**createBuyerWholesaleFreightRequest**](BuyerAPI.md#createbuyerwholesalefreightrequest) | **POST** /v1/buyer/wholesale/freight-requests | Ask a seller to quote freight for their lines in your cart (an order over their pallet threshold): { sellerUserId, weightLbs?, shipTo? { postalCode, country, city?, region?, liftgate?, dock? }, note? }. One open request per seller.
[**createBuyerWholesaleInvoicePayLink**](BuyerAPI.md#createbuyerwholesaleinvoicepaylink) | **POST** /v1/buyer/wholesale/invoices/{id}/pay-link | A hosted payment page for an on-account invoice: amountCents? (part of the balance, at least $1), method? card | ach. Nothing is charged until the buyer completes the page.
[**createBuyerWholesaleOrderSheet**](BuyerAPI.md#createbuyerwholesaleordersheet) | **POST** /v1/buyer/wholesale/order-sheets | Save an order sheet: name, lines [{ platformListingId, listingVariantId?, catalogId?, quantity }] from one seller, optional catalogId, poReference, note.
[**createBuyerWholesaleQuote**](BuyerAPI.md#createbuyerwholesalequote) | **POST** /v1/buyer/wholesale/quotes | Ask one seller for a quote: items [{ platformListingId, listingVariantId?, quantity, targetUnitPriceCents? }] (one seller per quote), optional catalogId, note, poReference.
[**createBuyerWholesaleQuoteAccept**](BuyerAPI.md#createbuyerwholesalequoteaccept) | **POST** /v1/buyer/wholesale/quotes/{id}/accept | Accept an answered quote: its priced items go into your cart at the quoted quantities, locked at the quoted prices until the quote expires (changing a line&#39;s quantity drops the lock). Paying happens at checkout on Crossly.
[**createBuyerWholesaleQuoteWithdraw**](BuyerAPI.md#createbuyerwholesalequotewithdraw) | **POST** /v1/buyer/wholesale/quotes/{id}/withdraw | Withdraw a quote request that is still requested or answered.
[**createBuyerWholesaleUploadValidate**](BuyerAPI.md#createbuyerwholesaleuploadvalidate) | **POST** /v1/buyer/wholesale/upload/validate | Validate a CSV / PO against one catalog: rows [{ line, sku, quantity }] are matched by SKU (item or option SKU, or listing slug), merged per item and priced today; unmatched rows come back by line.
[**createBuyerWishlist**](BuyerAPI.md#createbuyerwishlist) | **POST** /v1/buyer/wishlists | Create a wishlist.
[**createBuyerWishlistInvite**](BuyerAPI.md#createbuyerwishlistinvite) | **POST** /v1/buyer/wishlists/{id}/invite | Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.
[**createBuyerWishlistItem**](BuyerAPI.md#createbuyerwishlistitem) | **POST** /v1/buyer/wishlists/{id}/items | Add a listing to a wishlist.
[**createBuyerWishlistJoin**](BuyerAPI.md#createbuyerwishlistjoin) | **POST** /v1/buyer/wishlists/join/{token} | Join a wishlist you were invited to edit.
[**createBuyerWishlistShare**](BuyerAPI.md#createbuyerwishlistshare) | **POST** /v1/buyer/wishlists/{id}/share | Share a wishlist — makes it public and returns its link.
[**deleteBuyerBoard**](BuyerAPI.md#deletebuyerboard) | **DELETE** /v1/buyer/boards/{id} | Delete a board.
[**deleteBuyerBoardItem**](BuyerAPI.md#deletebuyerboarditem) | **DELETE** /v1/buyer/boards/{id}/items/{platformListingId} | Take a listing off a board.
[**deleteBuyerBreakSpotHold**](BuyerAPI.md#deletebuyerbreakspothold) | **DELETE** /v1/buyer/breaks/{id}/spots/{spotId}/hold | Release a break spot you hold.
[**deleteBuyerCartItem**](BuyerAPI.md#deletebuyercartitem) | **DELETE** /v1/buyer/cart/items/{id} | Remove a line from your cart.
[**deleteBuyerCartSaved**](BuyerAPI.md#deletebuyercartsaved) | **DELETE** /v1/buyer/cart/saved/{id} | Remove an item from saved-for-later. Returns the remaining list.
[**deleteBuyerCompanyMember**](BuyerAPI.md#deletebuyercompanymember) | **DELETE** /v1/buyer/company/members/{id} | Remove a member or cancel an invite (owner), or leave the company (your own member id).
[**deleteBuyerConversationGuest**](BuyerAPI.md#deletebuyerconversationguest) | **DELETE** /v1/buyer/conversations/{id}/guests/{userId} | Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).
[**deleteBuyerCreationReview**](BuyerAPI.md#deletebuyercreationreview) | **DELETE** /v1/buyer/creations/{format}/{id}/review | Remove your review of a creation (its vote leaves the rating with it).
[**deleteBuyerEventRsvp**](BuyerAPI.md#deletebuyereventrsvp) | **DELETE** /v1/buyer/events/{slug}/rsvp | Take back your RSVP.
[**deleteBuyerFitRef**](BuyerAPI.md#deletebuyerfitref) | **DELETE** /v1/buyer/fit/refs/{id} | Delete a reference garment.
[**deleteBuyerHomeGuestbook**](BuyerAPI.md#deletebuyerhomeguestbook) | **DELETE** /v1/buyer/home/guestbook/{id} | Hide a line from your home’s guestbook.
[**deleteBuyerMarketBid**](BuyerAPI.md#deletebuyermarketbid) | **DELETE** /v1/buyer/market/bids/{id} | Cancel a resting market bid.
[**deleteBuyerMarketWatch**](BuyerAPI.md#deletebuyermarketwatch) | **DELETE** /v1/buyer/market/watches/{id} | Stop watching a market variant.
[**deleteBuyerOffer**](BuyerAPI.md#deletebuyeroffer) | **DELETE** /v1/buyer/offers/{id} | Withdraw an offer you made that the seller has not answered.
[**deleteBuyerRecentlyViewed**](BuyerAPI.md#deletebuyerrecentlyviewed) | **DELETE** /v1/buyer/recently-viewed/{slug} | Remove one listing from your recently viewed.
[**deleteBuyerRecentlyViewed2**](BuyerAPI.md#deletebuyerrecentlyviewed2) | **DELETE** /v1/buyer/recently-viewed | Clear your recently viewed list.
[**deleteBuyerRegistry**](BuyerAPI.md#deletebuyerregistry) | **DELETE** /v1/buyer/registries/{id} | Delete a registry (and the wishlist behind it).
[**deleteBuyerSellerClubJoin**](BuyerAPI.md#deletebuyersellerclubjoin) | **DELETE** /v1/buyer/sellers/{sellerUserId}/club/join | Leave a seller’s loyalty club.
[**deleteBuyerSellerLoyaltyJoin**](BuyerAPI.md#deletebuyersellerloyaltyjoin) | **DELETE** /v1/buyer/sellers/{sellerUserId}/loyalty/join | Leave a seller’s loyalty club.
[**deleteBuyerTogetherItem**](BuyerAPI.md#deletebuyertogetheritem) | **DELETE** /v1/buyer/together/{code}/items/{id} | Take an item you added off a room’s board.
[**deleteBuyerTotalRequest**](BuyerAPI.md#deletebuyertotalrequest) | **DELETE** /v1/buyer/total-requests/{id} | Cancel a total request you made.
[**deleteBuyerTryOn**](BuyerAPI.md#deletebuyertryon) | **DELETE** /v1/buyer/try-ons/{id} | Delete a try-on and its images — or pass &#x60;all&#x60; to delete every photo and result.
[**deleteBuyerWholesaleOrderSheet**](BuyerAPI.md#deletebuyerwholesaleordersheet) | **DELETE** /v1/buyer/wholesale/order-sheets/{id} | Delete an order sheet.
[**deleteBuyerWishlist**](BuyerAPI.md#deletebuyerwishlist) | **DELETE** /v1/buyer/wishlists/{id} | Delete a wishlist and everything on it.
[**deleteBuyerWishlistItem**](BuyerAPI.md#deletebuyerwishlistitem) | **DELETE** /v1/buyer/wishlists/{id}/items/{slug} | Take a listing off a wishlist.
[**deleteBuyerWishlistMember**](BuyerAPI.md#deletebuyerwishlistmember) | **DELETE** /v1/buyer/wishlists/{id}/members/{userId} | Remove a co-editor (the owner), or leave a list shared with you (your own user id).
[**getBuyerAuctionMe**](BuyerAPI.md#getbuyerauctionme) | **GET** /v1/buyer/auctions/{slug}/me | Where you stand in one auction — your max, leading, won, must you pay.
[**getBuyerBadge**](BuyerAPI.md#getbuyerbadge) | **GET** /v1/buyer/badges | The counts behind the account badge — unread messages, offers waiting, orders to review.
[**getBuyerBoard**](BuyerAPI.md#getbuyerboard) | **GET** /v1/buyer/boards/{id} | One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.
[**getBuyerBoardShared**](BuyerAPI.md#getbuyerboardshared) | **GET** /v1/buyer/boards/shared/{token} | A shared outfit board, by its link token.
[**getBuyerBreak**](BuyerAPI.md#getbuyerbreak) | **GET** /v1/buyer/breaks/{id} | A card break’s board: spots, holders, and the seed after the draw.
[**getBuyerCase**](BuyerAPI.md#getbuyercase) | **GET** /v1/buyer/cases/{id} | One case — its state, the message thread, and the return parcel if there is one.
[**getBuyerCatalogListingMySize**](BuyerAPI.md#getbuyercataloglistingmysize) | **GET** /v1/buyer/catalog/listings/{slug}/my-size | This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.
[**getBuyerCatalogListingPrice**](BuyerAPI.md#getbuyercataloglistingprice) | **GET** /v1/buyer/catalog/listings/{slug}/price | The price today. When the seller has the same item live on another marketplace for less, this IS that price (&#x60;priceMatch&#x60; says where from), and &#x60;lowestAnywhere&#x60; lists the marketplaces it is guaranteed not to be cheaper on. &#x60;priceCheck&#x60; rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.
[**getBuyerCatalogListingRental**](BuyerAPI.md#getbuyercataloglistingrental) | **GET** /v1/buyer/catalog/listings/{slug}/rental | Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.
[**getBuyerCheckoutUsdc**](BuyerAPI.md#getbuyercheckoutusdc) | **GET** /v1/buyer/checkout/usdc | Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.
[**getBuyerCollectionOffer**](BuyerAPI.md#getbuyercollectionoffer) | **GET** /v1/buyer/collection/{id}/offer | What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).
[**getBuyerCollectionSet**](BuyerAPI.md#getbuyercollectionset) | **GET** /v1/buyer/collection/sets/{category}/{brand}/{model} | One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.
[**getBuyerCompany**](BuyerAPI.md#getbuyercompany) | **GET** /v1/buyer/company | Your buyer company (members, roles, approval limits, shared addresses), or null when you are in none.
[**getBuyerCreation**](BuyerAPI.md#getbuyercreation) | **GET** /v1/buyer/creations/{format}/{id} | A live creation&#39;s public page: its rating breakdown, recent reviews and whether you can review it.
[**getBuyerCreator**](BuyerAPI.md#getbuyercreator) | **GET** /v1/buyer/creators/{handle} | A creator storefront: profile, affiliate code, and shelves of live picks.
[**getBuyerEvent**](BuyerAPI.md#getbuyerevent) | **GET** /v1/buyer/events/{slug} | A seller event: schedule, location, host, linked listings, live show, promo code, RSVP counts and your own RSVP.
[**getBuyerFitVocabulary**](BuyerAPI.md#getbuyerfitvocabulary) | **GET** /v1/buyer/fit/vocabulary | Garment kinds and the measurements each takes.
[**getBuyerGiftFinderOption**](BuyerAPI.md#getbuyergiftfinderoption) | **GET** /v1/buyer/gift-finder/options | The gift finder’s questions: recipients, interests, budgets.
[**getBuyerHome**](BuyerAPI.md#getbuyerhome) | **GET** /v1/buyer/home | Your home in Crossly World (made on first read).
[**getBuyerHomePlaceable**](BuyerAPI.md#getbuyerhomeplaceable) | **GET** /v1/buyer/home/placeable | What you could place in your home: your items and delivered furniture.
[**getBuyerImpact**](BuyerAPI.md#getbuyerimpact) | **GET** /v1/buyer/impact | The sourced footprint your secondhand purchases avoided.
[**getBuyerLayaway**](BuyerAPI.md#getbuyerlayaway) | **GET** /v1/buyer/layaways/{id} | One layaway and its schedule.
[**getBuyerListingAudioSummary**](BuyerAPI.md#getbuyerlistingaudiosummary) | **GET** /v1/buyer/listings/{slug}/audio-summary | A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.
[**getBuyerListingBoughtTogether**](BuyerAPI.md#getbuyerlistingboughttogether) | **GET** /v1/buyer/listings/{slug}/bought-together | Frequently bought together / complete the look.
[**getBuyerListingBreak**](BuyerAPI.md#getbuyerlistingbreak) | **GET** /v1/buyer/listings/{slug}/break | The card break this listing sells spots in, if any; the seed is revealed after the draw.
[**getBuyerListingCert**](BuyerAPI.md#getbuyerlistingcert) | **GET** /v1/buyer/listings/{slug}/cert | A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.
[**getBuyerListingFit**](BuyerAPI.md#getbuyerlistingfit) | **GET** /v1/buyer/listings/{slug}/fit | A listing’s flat measurements, compared with your saved reference garments.
[**getBuyerListingGroupBuy**](BuyerAPI.md#getbuyerlistinggroupbuy) | **GET** /v1/buyer/listings/{slug}/group-buy | The group buy open on this listing, if any.
[**getBuyerListingImpact**](BuyerAPI.md#getbuyerlistingimpact) | **GET** /v1/buyer/listings/{slug}/impact | The sourced footprint of making a new equivalent; null when no published figure applies.
[**getBuyerListingResaleValue**](BuyerAPI.md#getbuyerlistingresalevalue) | **GET** /v1/buyer/listings/{slug}/resale-value | What the same brand and category resold for on Crossly, and the buyback offer when enabled.
[**getBuyerListingSubscribeOffer**](BuyerAPI.md#getbuyerlistingsubscribeoffer) | **GET** /v1/buyer/listings/{slug}/subscribe-offer | The subscribe &amp; save discount and intervals on a listing; null when the seller has none.
[**getBuyerListingTryOn**](BuyerAPI.md#getbuyerlistingtryon) | **GET** /v1/buyer/listings/{slug}/try-on | Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.
[**getBuyerLiveStreamAuction**](BuyerAPI.md#getbuyerlivestreamauction) | **GET** /v1/buyer/live-streams/{id}/auction | The auction running on a live stream right now, if any. Bid on it by its &#x60;slug&#x60; at POST /v1/buyer/auctions/:slug/bids.
[**getBuyerMarketPurchaseOption**](BuyerAPI.md#getbuyermarketpurchaseoption) | **GET** /v1/buyer/market/purchase-options | Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).
[**getBuyerOrderEligibility**](BuyerAPI.md#getbuyerordereligibility) | **GET** /v1/buyer/orders/{id}/eligibility | What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.
[**getBuyerOrderExport**](BuyerAPI.md#getbuyerorderexport) | **GET** /v1/buyer/orders/export | Your order history as CSV text (up to 5,000 orders).
[**getBuyerOrderPriceProtection**](BuyerAPI.md#getbuyerorderpriceprotection) | **GET** /v1/buyer/orders/{id}/price-protection | Price protection on one order: if the item gets cheaper before &#x60;until&#x60;, the difference is credited to your Bucks automatically. &#x60;creditedCents&#x60; is what it has paid so far.
[**getBuyerPack**](BuyerAPI.md#getbuyerpack) | **GET** /v1/buyer/packs/{slug} | One pack: tiers and odds, items left, expected value, the chase items still in it.
[**getBuyerPackFairness**](BuyerAPI.md#getbuyerpackfairness) | **GET** /v1/buyer/packs/fairness | Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.
[**getBuyerParty**](BuyerAPI.md#getbuyerparty) | **GET** /v1/buyer/parties/{slug} | One shopping party.
[**getBuyerPassport**](BuyerAPI.md#getbuyerpassport) | **GET** /v1/buyer/passports/{code} | What a product passport tag opens: the item, the verify verdict (registered, tag bound, tag matches with ?uid&#x3D;, authenticated, graded, in its owner’s hands), how many owners and since when — never who or for how much.
[**getBuyerPreference**](BuyerAPI.md#getbuyerpreference) | **GET** /v1/buyer/preferences | The shopping profile derived from that activity.
[**getBuyerPriceGuide**](BuyerAPI.md#getbuyerpriceguide) | **GET** /v1/buyer/price-guide | What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.
[**getBuyerProfile**](BuyerAPI.md#getbuyerprofile) | **GET** /v1/buyer/profile | Your Crossly shopping profile — name, email, saved address, Bucks balance.
[**getBuyerPurchaseDelivery**](BuyerAPI.md#getbuyerpurchasedelivery) | **GET** /v1/buyer/purchases/{id}/delivery | Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.
[**getBuyerPurchaseLiveMoment**](BuyerAPI.md#getbuyerpurchaselivemoment) | **GET** /v1/buyer/purchases/{id}/live-moment | The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.
[**getBuyerPurchaseReturn**](BuyerAPI.md#getbuyerpurchasereturn) | **GET** /v1/buyer/purchases/{id}/return | What a return would refund for each reason, by when, and any return already open.
[**getBuyerPurchaseStory**](BuyerAPI.md#getbuyerpurchasestory) | **GET** /v1/buyer/purchases/{id}/story | Your owner story on a purchase, passed on to the next owner if you resell it.
[**getBuyerRegistry**](BuyerAPI.md#getbuyerregistry) | **GET** /v1/buyer/registries/{id} | One of your registries: items with how many are wanted and bought.
[**getBuyerRegistryByToken**](BuyerAPI.md#getbuyerregistrybytoken) | **GET** /v1/buyer/registry/{token} | A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.
[**getBuyerRental**](BuyerAPI.md#getbuyerrental) | **GET** /v1/buyer/rentals/{id} | One of your rentals: timeline, payments, the return label, extension and buy-out terms.
[**getBuyerRentalEligibility**](BuyerAPI.md#getbuyerrentaleligibility) | **GET** /v1/buyer/rentals/eligibility | Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).
[**getBuyerSellerClub**](BuyerAPI.md#getbuyersellerclub) | **GET** /v1/buyer/sellers/{sellerUserId}/club | A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.
[**getBuyerSellerLoyalty**](BuyerAPI.md#getbuyersellerloyalty) | **GET** /v1/buyer/sellers/{sellerUserId}/loyalty | A seller’s loyalty club with its typed perks per tier, its join mode (automatic, opt-in, invite-only) and your standing. null when they run none.
[**getBuyerSellerTrust**](BuyerAPI.md#getbuyersellertrust) | **GET** /v1/buyer/sellers/{username}/trust | Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.
[**getBuyerTogether**](BuyerAPI.md#getbuyertogether) | **GET** /v1/buyer/together/{code} | A shop-together room: members, the board with votes, and chat.
[**getBuyerVaultMarketHistory**](BuyerAPI.md#getbuyervaultmarkethistory) | **GET** /v1/buyer/vault-markets/history | Your Vault Markets value by day at the marks (oldest first, today live) over &#x60;days&#x60; (default 90), and today’s change against yesterday’s close.
[**getBuyerVaultMarketIndex**](BuyerAPI.md#getbuyervaultmarketindex) | **GET** /v1/buyer/vault-markets/indexes/{slug} | One index with its published daily closes (oldest first, &#x60;days&#x60; default 365) and its level now.
[**getBuyerVaultMarketInstantExit**](BuyerAPI.md#getbuyervaultmarketinstantexit) | **GET** /v1/buyer/vault-markets/instant-exit/{id} | The Instant Exit quote for one vault unit you hold, and whether it can be sold now.
[**getBuyerVaultMarketOptionAnalytic**](BuyerAPI.md#getbuyervaultmarketoptionanalytic) | **GET** /v1/buyer/vault-markets/options/analytics/{underlying} | Options analytics on an underlying: vol surface and smile, IV rank and percentile, open interest and volume by strike and expiry, put/call ratios, expected move and historical vol. Derived, display only. Read only.
[**getBuyerVaultMarketOptionChain**](BuyerAPI.md#getbuyervaultmarketoptionchain) | **GET** /v1/buyer/vault-markets/options/chain/{underlying} | The option chain for an underlying (index slug or book key): expiries, and for one expiry each strike’s call and put with bid / ask, last, open interest, theoretical price, implied vol (display only) and Greeks. Prices are cents per contract.
[**getBuyerVaultMarketOptionIv**](BuyerAPI.md#getbuyervaultmarketoptioniv) | **GET** /v1/buyer/vault-markets/options/iv/{underlying} | The at-the-money implied vol on an underlying’s nearest expiry, for display: derived from the options book, quality C, never a mark.
[**getBuyerVaultMarketOptionPosition**](BuyerAPI.md#getbuyervaultmarketoptionposition) | **GET** /v1/buyer/vault-markets/options/positions | Your fractional options positions with their marks, P&amp;L and Greeks (open by default; &#x60;status&#x60; all for closed and settled too). Read only.
[**getBuyerVaultMarketOptionRisk**](BuyerAPI.md#getbuyervaultmarketoptionrisk) | **GET** /v1/buyer/vault-markets/options/risk | Your options portfolio Greeks, a scenario&#39;s P&amp;L (&#x60;priceShift&#x60;, &#x60;volShift&#x60;, &#x60;daysForward&#x60;) and the beta-weighted delta against an index. Read only.
[**getBuyerVaultMarketPredictionBoard**](BuyerAPI.md#getbuyervaultmarketpredictionboard) | **GET** /v1/buyer/vault-markets/predictions/board | The busiest open prediction markets and their odds (the Trading Floor board). Anonymous.
[**getBuyerVaultMarketPredictionEvent**](BuyerAPI.md#getbuyervaultmarketpredictionevent) | **GET** /v1/buyer/vault-markets/predictions/events/{id} | One expiry’s markets with your holdings in each and their real worst and best case across them.
[**getBuyerVaultMarketPredictionLeaderboard**](BuyerAPI.md#getbuyervaultmarketpredictionleaderboard) | **GET** /v1/buyer/vault-markets/predictions/leaderboard | Opt-in forecaster leaderboards (&#x60;period&#x60; week | month | all; &#x60;metric&#x60; pnl | accuracy | brier; &#x60;venue&#x60; live | paper).
[**getBuyerVaultMarketPredictionMarket**](BuyerAPI.md#getbuyervaultmarketpredictionmarket) | **GET** /v1/buyer/vault-markets/predictions/markets/{id} | One prediction market: terms, the Yes ladder (live and practice), recent trades, settlement history and the series rules with their hash.
[**getBuyerVaultMarketPredictionMarketHistory**](BuyerAPI.md#getbuyervaultmarketpredictionmarkethistory) | **GET** /v1/buyer/vault-markets/predictions/markets/{id}/history | A prediction market’s probability over time (display only, never a mark), candles on the Yes price, volume and open interest (&#x60;range&#x60; 1d, 1w, 1m, all; &#x60;venue&#x60; live or paper).
[**getBuyerVaultMarketShare**](BuyerAPI.md#getbuyervaultmarketshare) | **GET** /v1/buyer/vault-markets/shares | Your Vault Shares: shares and percent of each item, cost, implied value at the last share price (display only, never a mark), subscriptions and payouts.
[**getBuyerVaultMarketShareBasket**](BuyerAPI.md#getbuyervaultmarketsharebasket) | **GET** /v1/buyer/vault-markets/shares/baskets/{id} | One theme basket: its series, weights and prices, and your holdings against them.
[**getBuyerVaultMarketShareSery**](BuyerAPI.md#getbuyervaultmarketsharesery) | **GET** /v1/buyer/vault-markets/shares/series/{id} | One Vault Shares series: the offering, the share book, the latest fills, holders as percentages (nobody named) and buyouts.
[**getBuyerVaultMarketShareSeryHistory**](BuyerAPI.md#getbuyervaultmarketshareseryhistory) | **GET** /v1/buyer/vault-markets/shares/series/{id}/history | A Vault Shares series’ full price history (candles), the offering price and the appraisal history. Display only, never a mark.
[**getBuyerVaultMarketShareSeryPerk**](BuyerAPI.md#getbuyervaultmarketshareseryperk) | **GET** /v1/buyer/vault-markets/shares/series/{id}/perks | Your holder perks on a series: badge, visit links, viewing days and your bookings.
[**getBuyerVaultMarketWorth**](BuyerAPI.md#getbuyervaultmarketworth) | **GET** /v1/buyer/vault-markets/worth | What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&amp;L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
[**getBuyerWholesaleCart**](BuyerAPI.md#getbuyerwholesalecart) | **GET** /v1/buyer/wholesale/cart | Your cart grouped per seller: trade terms, the order-minimum progress, every rule the cart breaks (the messages checkout would refuse with), PO reference, quote-locked lines, and the checkout methods, deposit and freight threshold for each group.
[**getBuyerWholesaleCatalogApply**](BuyerAPI.md#getbuyerwholesalecatalogapply) | **GET** /v1/buyer/wholesale/catalogs/{storeSlug}/{catalogSlug}/apply | The application form for a store&#39;s wholesale catalog: the seller&#39;s requirements (resale certificate and accepted states, tax id, their custom questions) and your business info pre-filled. applicable&#x3D;false for a catalog you cannot apply to.
[**getBuyerWholesaleDrop**](BuyerAPI.md#getbuyerwholesaledrop) | **GET** /v1/buyer/wholesale/drops/{id} | One trade drop open to you: its listings once live (add one to your cart to reserve or buy it), and your reservations in it. 404 for a drop not open to you.
[**getBuyerWholesaleInvoicePayQuote**](BuyerAPI.md#getbuyerwholesaleinvoicepayquote) | **GET** /v1/buyer/wholesale/invoices/{id}/pay-quote | What paying an on-account invoice costs now: balance due, the early-pay discount if still open, the minimum part payment and the methods (card, ach).
[**getBuyerWholesaleOrderSheet**](BuyerAPI.md#getbuyerwholesaleordersheet) | **GET** /v1/buyer/wholesale/order-sheets/{id} | One order sheet priced TODAY at its quantities, with stock, trade terms and flags (unavailable, out_of_stock, short_stock, price_hidden, needs_option).
[**getBuyerWholesaleQuote**](BuyerAPI.md#getbuyerwholesalequote) | **GET** /v1/buyer/wholesale/quotes/{id} | One of your quotes with its items, the seller&#39;s prices and expiry.
[**getBuyerWholesaleReorder**](BuyerAPI.md#getbuyerwholesalereorder) | **GET** /v1/buyer/wholesale/reorder/{id} | Buy again: a past wholesale order (purchase or order id) as order-sheet lines at the same quantities, priced today, out-of-stock flagged.
[**listBuyerActivity**](BuyerAPI.md#listbuyeractivity) | **GET** /v1/buyer/activity | What this buyer has compared lately.
[**listBuyerAuctionBids**](BuyerAPI.md#listbuyerauctionbids) | **GET** /v1/buyer/auctions/{slug}/bids | An auction’s bid history, highest first, bidders anonymised.
[**listBuyerAuctions**](BuyerAPI.md#listbuyerauctions) | **GET** /v1/buyer/auctions | Auctions you have bid in — bidding, won or lost (last 100).
[**listBuyerBoards**](BuyerAPI.md#listbuyerboards) | **GET** /v1/buyer/boards | Your outfit boards: collages of listings, each with a share link.
[**listBuyerBreaks**](BuyerAPI.md#listbuyerbreaks) | **GET** /v1/buyer/breaks | Card-break spots you hold or bought, with what each pulled.
[**listBuyerBuybacks**](BuyerAPI.md#listbuyerbuybacks) | **GET** /v1/buyer/buybacks | Your buyback guarantees and requests.
[**listBuyerCart**](BuyerAPI.md#listbuyercart) | **GET** /v1/buyer/cart | What is in your Crossly cart.
[**listBuyerCartSaved**](BuyerAPI.md#listbuyercartsaved) | **GET** /v1/buyer/cart/saved | Items you saved for later out of your cart (last 200).
[**listBuyerCases**](BuyerAPI.md#listbuyercases) | **GET** /v1/buyer/cases | Resolution center — every case you opened (returns, not received, problems).
[**listBuyerCashback**](BuyerAPI.md#listbuyercashback) | **GET** /v1/buyer/cashback | Your Scout cashback — pending, confirmed, paid.
[**listBuyerCatalogListingVideos**](BuyerAPI.md#listbuyercataloglistingvideos) | **GET** /v1/buyer/catalog/listings/{slug}/videos | Videos the seller recorded for this item on request, newest first, with the question each one answers.
[**listBuyerClubs**](BuyerAPI.md#listbuyerclubs) | **GET** /v1/buyer/clubs | Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.
[**listBuyerCollectionSets**](BuyerAPI.md#listbuyercollectionsets) | **GET** /v1/buyer/collection/sets | Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.
[**listBuyerCompanyApprovals**](BuyerAPI.md#listbuyercompanyapprovals) | **GET** /v1/buyer/company/approvals | Spend approval requests (owners and accounts payable see all; others their own). ?status&#x3D;pending|approved|declined|used|expired.
[**listBuyerConsolidations**](BuyerAPI.md#listbuyerconsolidations) | **GET** /v1/buyer/consolidations | Your ship-together orders: parcels at the hub, and the one box out.
[**listBuyerConversationGuests**](BuyerAPI.md#listbuyerconversationguests) | **GET** /v1/buyer/conversations/{id}/guests | Guests in a chat.
[**listBuyerCreationReviewable**](BuyerAPI.md#listbuyercreationreviewable) | **GET** /v1/buyer/creations/reviewable | Creations you bought (decor, wearables, interactive objects, cards from packs) and your review of each.
[**listBuyerEvents**](BuyerAPI.md#listbuyerevents) | **GET** /v1/buyer/events | Upcoming and live seller events across Crossly, soonest first.
[**listBuyerFeedback**](BuyerAPI.md#listbuyerfeedback) | **GET** /v1/buyer/feedback | Feedback you have left sellers, newest first — with the ids you revise by.
[**listBuyerFeedbackPending**](BuyerAPI.md#listbuyerfeedbackpending) | **GET** /v1/buyer/feedback/pending | Orders from the last 60 days that are on their way or arrived and still need your feedback.
[**listBuyerFitRefs**](BuyerAPI.md#listbuyerfitrefs) | **GET** /v1/buyer/fit/refs | Your saved reference garments for fit comparison.
[**listBuyerFollowingSellers**](BuyerAPI.md#listbuyerfollowingsellers) | **GET** /v1/buyer/following/sellers | Sellers you follow, with how many new listings each has since you last looked.
[**listBuyerGiftCardCredit**](BuyerAPI.md#listbuyergiftcardcredit) | **GET** /v1/buyer/gift-cards/credit | Gift card credit on your account, and when it expires.
[**listBuyerGiftCards**](BuyerAPI.md#listbuyergiftcards) | **GET** /v1/buyer/gift-cards | Gift cards you bought, newest first.
[**listBuyerGiftFinder**](BuyerAPI.md#listbuyergiftfinder) | **GET** /v1/buyer/gift-finder | Live listings for a recipient, interest and budget.
[**listBuyerGiftSent**](BuyerAPI.md#listbuyergiftsent) | **GET** /v1/buyer/gifts/sent | Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with &#x60;gift&#x60; on checkout.
[**listBuyerHomeBuilders**](BuyerAPI.md#listbuyerhomebuilders) | **GET** /v1/buyer/home/builders | Your co-builders: friends who may arrange your home with you.
[**listBuyerHomeBuilding**](BuyerAPI.md#listbuyerhomebuilding) | **GET** /v1/buyer/homes/building | The homes you co-build, to visit and arrange.
[**listBuyerHotspots**](BuyerAPI.md#listbuyerhotspots) | **GET** /v1/buyer/hotspots | Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).
[**listBuyerHunts**](BuyerAPI.md#listbuyerhunts) | **GET** /v1/buyer/hunts | Your buyer-agent hunts and what they did.
[**listBuyerInstantOffers**](BuyerAPI.md#listbuyerinstantoffers) | **GET** /v1/buyer/instant-offers | Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.
[**listBuyerLayaways**](BuyerAPI.md#listbuyerlayaways) | **GET** /v1/buyer/layaways | Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.
[**listBuyerListingQuickQuestions**](BuyerAPI.md#listbuyerlistingquickquestions) | **GET** /v1/buyer/listings/{slug}/quick-questions | One-tap questions this listing supports; send one as &#x60;quick&#x60; on a message.
[**listBuyerListingSellerReviews**](BuyerAPI.md#listbuyerlistingsellerreviews) | **GET** /v1/buyer/listings/{slug}/seller-reviews | The seller’s public reviews: summary, text, photos, replies.
[**listBuyerLiveShipments**](BuyerAPI.md#listbuyerliveshipments) | **GET** /v1/buyer/live-shipments | Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).
[**listBuyerLiveStreamLineup**](BuyerAPI.md#listbuyerlivestreamlineup) | **GET** /v1/buyer/live-streams/{id}/lineup | What a live show will sell, in order: each item, its price, and whether it is still available.
[**listBuyerLoyalty**](BuyerAPI.md#listbuyerloyalty) | **GET** /v1/buyer/loyalty | Your loyalty clubs: the tier you hold, progress and how to reach the next tier, the typed perks you hold now, and your history.
[**listBuyerMarketBids**](BuyerAPI.md#listbuyermarketbids) | **GET** /v1/buyer/market/bids | Your resting market bids.
[**listBuyerMarketWatches**](BuyerAPI.md#listbuyermarketwatches) | **GET** /v1/buyer/market/watches | Market variants you watch, with the price you are waiting for.
[**listBuyerOffers**](BuyerAPI.md#listbuyeroffers) | **GET** /v1/buyer/offers | Offers you have made, newest first (last 100).
[**listBuyerOrders**](BuyerAPI.md#listbuyerorders) | **GET** /v1/buyer/orders | What you have bought on Crossly, newest first.
[**listBuyerPackOpenings**](BuyerAPI.md#listbuyerpackopenings) | **GET** /v1/buyer/pack-openings | Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).
[**listBuyerPacks**](BuyerAPI.md#listbuyerpacks) | **GET** /v1/buyer/packs | Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.
[**listBuyerParties**](BuyerAPI.md#listbuyerparties) | **GET** /v1/buyer/parties | Themed shopping parties, live and upcoming.
[**listBuyerPartyListings**](BuyerAPI.md#listbuyerpartylistings) | **GET** /v1/buyer/parties/{slug}/listings | Listings shared to a party, featured first.
[**listBuyerPaymentMethods**](BuyerAPI.md#listbuyerpaymentmethods) | **GET** /v1/buyer/payment-methods | Your saved cards, the default first.
[**listBuyerPickupPoints**](BuyerAPI.md#listbuyerpickuppoints) | **GET** /v1/buyer/pickup-points | Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as &#x60;pickupPoint&#x60; to POST /v1/buyer/checkout.
[**listBuyerProtectionPlans**](BuyerAPI.md#listbuyerprotectionplans) | **GET** /v1/buyer/protection-plans | Your protection plans (bought at checkout with &#x60;protection&#x60;): status, term, coverage, contract id, and any refund.
[**listBuyerRegistries**](BuyerAPI.md#listbuyerregistries) | **GET** /v1/buyer/registries | Your gift registries.
[**listBuyerRegistryGifts**](BuyerAPI.md#listbuyerregistrygifts) | **GET** /v1/buyer/registries/{id}/gifts | Your thank-you list: who bought what off the registry, and whether you have thanked them.
[**listBuyerRegistrySearch**](BuyerAPI.md#listbuyerregistrysearch) | **GET** /v1/buyer/registries/search | Find a registry by its name or the registrant’s name. Current and recent registries only.
[**listBuyerRentals**](BuyerAPI.md#listbuyerrentals) | **GET** /v1/buyer/rentals | Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.
[**listBuyerSizeMemoryPrompts**](BuyerAPI.md#listbuyersizememoryprompts) | **GET** /v1/buyer/size-memory/prompts | Delivered orders with a size that you haven’t said how they fit (the last 60 days).
[**listBuyerSizeMemorySizes**](BuyerAPI.md#listbuyersizememorysizes) | **GET** /v1/buyer/size-memory/sizes | The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.
[**listBuyerSplits**](BuyerAPI.md#listbuyersplits) | **GET** /v1/buyer/splits | Purchases you split, with each share’s status.
[**listBuyerStoreListings**](BuyerAPI.md#listbuyerstorelistings) | **GET** /v1/buyer/stores/{slug}/listings | A store&#39;s live listings, filtered by tag, category, text and program chips (f: on_sale, discount_eligible, code_eligible, group_buy_active, rentable, wholesale_available…; all must hold), sorted; each card carries its program badges.
[**listBuyerSubscriptions**](BuyerAPI.md#listbuyersubscriptions) | **GET** /v1/buyer/subscriptions | Your subscribe &amp; save standing orders.
[**listBuyerTogether**](BuyerAPI.md#listbuyertogether) | **GET** /v1/buyer/together | Shop-together rooms you are in.
[**listBuyerTotalRequests**](BuyerAPI.md#listbuyertotalrequests) | **GET** /v1/buyer/total-requests | Your combined-shipping total requests, newest per seller.
[**listBuyerTryOns**](BuyerAPI.md#listbuyertryons) | **GET** /v1/buyer/try-ons | Your AI try-ons: the rendered images (labelled AI-generated wherever shown).
[**listBuyerVault**](BuyerAPI.md#listbuyervault) | **GET** /v1/buyer/vault | What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.
[**listBuyerVaultMarketHoldings**](BuyerAPI.md#listbuyervaultmarketholdings) | **GET** /v1/buyer/vault-markets/holdings | Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&amp;L and where it stands (stored, listed, lent, pledged, at the grader); &#x60;meta&#x60; carries the totals and the units you have out on loan.
[**listBuyerVaultMarketIndexes**](BuyerAPI.md#listbuyervaultmarketindexes) | **GET** /v1/buyer/vault-markets/indexes | Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.
[**listBuyerVaultMarketInstantExit**](BuyerAPI.md#listbuyervaultmarketinstantexit) | **GET** /v1/buyer/vault-markets/instant-exit | Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.
[**listBuyerVaultMarketOptionCombos**](BuyerAPI.md#listbuyervaultmarketoptioncombos) | **GET** /v1/buyer/vault-markets/options/combos | Your options strategies (working by default) with their legs, net price per unit and fills. Read only.
[**listBuyerVaultMarketOptionNotices**](BuyerAPI.md#listbuyervaultmarketoptionnotices) | **GET** /v1/buyer/vault-markets/options/notices | Your options notices: expiry warnings, auto-closes, exercises, assignments, expiries worthless and rolls. Read only.
[**listBuyerVaultMarketOptionSeries**](BuyerAPI.md#listbuyervaultmarketoptionseries) | **GET** /v1/buyer/vault-markets/options/series | Fractional options series on Crossly prices (indexes, and tier A item keys with 90 days of reliable marks): underlying, status and eligibility. Read only.
[**listBuyerVaultMarketOptionStrategies**](BuyerAPI.md#listbuyervaultmarketoptionstrategies) | **GET** /v1/buyer/vault-markets/options/strategies | The options strategies the picker builds (vertical, calendar, diagonal, straddle, strangle, butterfly, iron condor, collar) and what each does. Read only.
[**listBuyerVaultMarketPredictionComments**](BuyerAPI.md#listbuyervaultmarketpredictioncomments) | **GET** /v1/buyer/vault-markets/predictions/comments | A prediction market’s (or series’) discussion thread. Read only.
[**listBuyerVaultMarketPredictionMarkets**](BuyerAPI.md#listbuyervaultmarketpredictionmarkets) | **GET** /v1/buyer/vault-markets/predictions/markets | \&quot;Will it hit?\&quot; prediction markets on Crossly prices (filter by book key, index slug, kind, status, expiry or text): strike, expiry, best Yes bid and ask, last price and the probability (the market&#39;s own price, display only).
[**listBuyerVaultMarketPredictionPositions**](BuyerAPI.md#listbuyervaultmarketpredictionpositions) | **GET** /v1/buyer/vault-markets/predictions/positions | Your prediction positions (practice and live): side, contracts, cost, value at the last price, payout or refund once settled.
[**listBuyerVaultMarketShareAutoInvest**](BuyerAPI.md#listbuyervaultmarketshareautoinvest) | **GET** /v1/buyer/vault-markets/shares/auto-invest | Your recurring Vault Shares auto-invest plans.
[**listBuyerVaultMarketShareBaskets**](BuyerAPI.md#listbuyervaultmarketsharebaskets) | **GET** /v1/buyer/vault-markets/shares/baskets | Theme baskets: model portfolios of Vault Shares series you would own directly, never a fund.
[**listBuyerVaultMarketShareDrops**](BuyerAPI.md#listbuyervaultmarketsharedrops) | **GET** /v1/buyer/vault-markets/shares/drops | Upcoming and open Vault Shares drops: phase, countdown, allocation (first come, pro-rata or lottery), your Crossly One early-access time (never a better price).
[**listBuyerVaultMarketShareGifts**](BuyerAPI.md#listbuyervaultmarketsharegifts) | **GET** /v1/buyer/vault-markets/shares/gifts | Vault Shares gifts you sent or were offered.
[**listBuyerVaultMarketShareSeries**](BuyerAPI.md#listbuyervaultmarketshareseries) | **GET** /v1/buyer/vault-markets/shares/series | Vault Shares series: open offerings first, then trading. Terms, progress, last share price and implied item value, and your holding.
[**listBuyerVaultMarketWatchlist**](BuyerAPI.md#listbuyervaultmarketwatchlist) | **GET** /v1/buyer/vault-markets/watchlist | The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.
[**listBuyerVideoRequests**](BuyerAPI.md#listbuyervideorequests) | **GET** /v1/buyer/video-requests | Your video requests and their answers.
[**listBuyerWalletPerks**](BuyerAPI.md#listbuyerwalletperks) | **GET** /v1/buyer/wallet/perks | The perks your wallets unlock: each Collection holders deal (a shop’s percent off for holders of a collection) and creator shop perk on a collection a linked wallet or your Crossly wallet holds, best first. Checkout applies the best one; perks never stack with each other.
[**listBuyerWholesaleDrops**](BuyerAPI.md#listbuyerwholesaledrops) | **GET** /v1/buyer/wholesale/drops | Upcoming and live trade drops open to you: drops sellers release only to their approved trade buyers or to a catalog audience. kind prebook &#x3D; reserve quantity now with a deposit (depositBps) at checkout; the balance is invoiced when the seller releases the stock.
[**listBuyerWholesaleFreightRequests**](BuyerAPI.md#listbuyerwholesalefreightrequests) | **GET** /v1/buyer/wholesale/freight-requests | Your freight (LTL) quote requests to sellers, with the seller&#39;s figure in cents once quoted.
[**listBuyerWholesaleOrderSheets**](BuyerAPI.md#listbuyerwholesaleordersheets) | **GET** /v1/buyer/wholesale/order-sheets | Your saved wholesale order sheets (one seller each), newest first.
[**listBuyerWholesaleOrders**](BuyerAPI.md#listbuyerwholesaleorders) | **GET** /v1/buyer/wholesale/orders | Your past wholesale orders (trade-priced or on account), newest first — the starting point for reorder.
[**listBuyerWholesalePrebooks**](BuyerAPI.md#listbuyerwholesaleprebooks) | **GET** /v1/buyer/wholesale/prebooks | Your pre-books: the drop, item, quantity, deposit paid, balance, status (awaiting_release, invoiced, paid, cancelled, failed) and the balance invoice once the seller released the stock.
[**listBuyerWholesaleQuotes**](BuyerAPI.md#listbuyerwholesalequotes) | **GET** /v1/buyer/wholesale/quotes | Your requests for a quote (RFQ) to wholesale sellers. ?status&#x3D;open|all|requested|answered|accepted|declined|withdrawn|expired. An answered or accepted quote past expiresAt reads expired.
[**listBuyerWholesaleStatement**](BuyerAPI.md#listbuyerwholesalestatement) | **GET** /v1/buyer/wholesale/statement | Your open trade balances per seller in aging buckets (current, 1-30, 31-60, 61-90, 90+ days past due), with the invoices behind them.
[**listBuyerWholesaleSuppliers**](BuyerAPI.md#listbuyerwholesalesuppliers) | **GET** /v1/buyer/wholesale/suppliers | The sellers you trade with: catalogs you can open, your terms (net days, credit limit, discount), customer groups, and what you owe each.
[**listBuyerWishlistItems**](BuyerAPI.md#listbuyerwishlistitems) | **GET** /v1/buyer/wishlists/{id}/items | What is on one wishlist.
[**listBuyerWishlistMembers**](BuyerAPI.md#listbuyerwishlistmembers) | **GET** /v1/buyer/wishlists/{id}/members | Co-editors of a shared wishlist.
[**listBuyerWishlists**](BuyerAPI.md#listbuyerwishlists) | **GET** /v1/buyer/wishlists | Your wishlists.
[**updateBuyerBoard**](BuyerAPI.md#updatebuyerboard) | **PATCH** /v1/buyer/boards/{id} | Rename a board, change its description, or make it public / private.
[**updateBuyerBoardLayout**](BuyerAPI.md#updatebuyerboardlayout) | **PUT** /v1/buyer/boards/{id}/layout | Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.
[**updateBuyerCollectionSetLeaderboard**](BuyerAPI.md#updatebuyercollectionsetleaderboard) | **PUT** /v1/buyer/collection/sets/leaderboard | Show or hide yourself (by your public handle) on set leaderboards.
[**updateBuyerCompany**](BuyerAPI.md#updatebuyercompany) | **PATCH** /v1/buyer/company | Rename the company or change its tax id / website (owner).
[**updateBuyerCompanyAddress**](BuyerAPI.md#updatebuyercompanyaddress) | **PUT** /v1/buyer/company/addresses | Replace the shared address book (owner): addresses [{ id, label, name, line1, line2?, city, region, postalCode, country, phone?, isDefault? }], at most 20.
[**updateBuyerCompanyMember**](BuyerAPI.md#updatebuyercompanymember) | **PATCH** /v1/buyer/company/members/{id} | Change a member&#39;s role or approval limit (owner). The last owner stays an owner.
[**updateBuyerCreationReview**](BuyerAPI.md#updatebuyercreationreview) | **PUT** /v1/buyer/creations/{format}/{id}/review | Review a creation you bought (or change your review): 1-5 stars and an optional comment.
[**updateBuyerFeedback**](BuyerAPI.md#updatebuyerfeedback) | **PATCH** /v1/buyer/feedback/{id} | Revise feedback you left, within 60 days.
[**updateBuyerHome**](BuyerAPI.md#updatebuyerhome) | **PATCH** /v1/buyer/home | Who may walk in (privacy), the lighting (theme), wallpaper/floor/mood decor and whether visitors see your vault wall values.
[**updateBuyerHomeBuilder**](BuyerAPI.md#updatebuyerhomebuilder) | **PUT** /v1/buyer/home/builders | Set your co-builders (friends only, at most 4).
[**updateBuyerHomeLayout**](BuyerAPI.md#updatebuyerhomelayout) | **PUT** /v1/buyer/home/layout | Arrange your home: the whole layout, checked against what you own.
[**updateBuyerHunt**](BuyerAPI.md#updatebuyerhunt) | **PATCH** /v1/buyer/hunts/{id} | Pause, resume or stop a hunt.
[**updateBuyerPaymentMethodDefault**](BuyerAPI.md#updatebuyerpaymentmethoddefault) | **PUT** /v1/buyer/payment-methods/{id}/default | Make one of your saved cards the default.
[**updateBuyerPurchaseStory**](BuyerAPI.md#updatebuyerpurchasestory) | **PUT** /v1/buyer/purchases/{id}/story | Write your owner story (280 characters); it travels with the item if you resell it.
[**updateBuyerRegistry**](BuyerAPI.md#updatebuyerregistry) | **PATCH** /v1/buyer/registries/{id} | Edit a registry: title, kind, date, message, ship-to address.
[**updateBuyerRegistryItem**](BuyerAPI.md#updatebuyerregistryitem) | **PUT** /v1/buyer/registries/{id}/items/{platformListingId} | How many of an item you want (1–50).
[**updateBuyerSubscription**](BuyerAPI.md#updatebuyersubscription) | **PATCH** /v1/buyer/subscriptions/{id} | Pause, resume, skip the next delivery, change the interval, or cancel.
[**updateBuyerWholesaleCartPo**](BuyerAPI.md#updatebuyerwholesalecartpo) | **PUT** /v1/buyer/wholesale/cart/po | Set the PO reference for one seller&#39;s group of your cart: { sellerUserId, poReference } (empty clears it).
[**updateBuyerWholesaleOrderSheet**](BuyerAPI.md#updatebuyerwholesaleordersheet) | **PATCH** /v1/buyer/wholesale/order-sheets/{id} | Rename an order sheet, change its PO reference or note, or replace its lines.
[**updateBuyerWishlist**](BuyerAPI.md#updatebuyerwishlist) | **PATCH** /v1/buyer/wishlists/{id} | Rename a wishlist, or make it public / private.


# **createBuyerActivity**
```swift
    open class func createBuyerActivity(createBuyerActivityRequest: CreateBuyerActivityRequest, completion: @escaping (_ data: CreateBuyerActivityResponse?, _ error: Error?) -> Void)
```

Report an item your user is looking at, and get our answer.

Records the look and returns whether Crossly has the item and at what price. Send an identifier and a store DOMAIN — a full URL is refused. Nothing about the page itself is stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerActivityRequest = CreateBuyerActivityRequest(namespace: "namespace_example", value: "value_example", retailHost: "retailHost_example", pagePriceCents: 123, pageCurrency: "pageCurrency_example") // CreateBuyerActivityRequest | 

// Report an item your user is looking at, and get our answer.
BuyerAPI.createBuyerActivity(createBuyerActivityRequest: createBuyerActivityRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerActivityRequest** | **CreateBuyerActivityRequest** |  | 

### Return type

**CreateBuyerActivityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAuctionBid**
```swift
    open class func createBuyerAuctionBid(slug: String, createBuyerAuctionBidRequest: CreateBuyerAuctionBidRequest, completion: @escaping (_ data: CreateBuyerAuctionBidResponse?, _ error: Error?) -> Void)
```

Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.

Spends money: if you win, your saved card is charged when the auction closes, with nobody present. Requires buyer:checkout:write AND this key switched on at PUT /v1/buyer/checkout/controls; the bid’s maximum (or amount) is checked against the key’s per-order and daily ceilings. Amounts are integer cents. `leading: false` means a standing proxy bid outbid you at once. Send an Idempotency-Key: a retried bid is a second bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The auction listing slug.
let createBuyerAuctionBidRequest = CreateBuyerAuctionBidRequest(amountCents: 123, maxBidCents: 123, paymentMethodId: "paymentMethodId_example") // CreateBuyerAuctionBidRequest | 

// Place a bid, optionally with a proxy maximum. A WINNING BID IS CHARGED AUTOMATICALLY.
BuyerAPI.createBuyerAuctionBid(slug: slug, createBuyerAuctionBidRequest: createBuyerAuctionBidRequest) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The auction listing slug. | 
 **createBuyerAuctionBidRequest** | **CreateBuyerAuctionBidRequest** |  | 

### Return type

**CreateBuyerAuctionBidResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAuctionPay**
```swift
    open class func createBuyerAuctionPay(slug: String, completion: @escaping (_ data: CreateBuyerAuctionPayResponse?, _ error: Error?) -> Void)
```

Pay for an auction you won whose automatic charge did not go through.

Returns a Stripe client secret to confirm on the buyer’s device (3-D Secure, a new card). Charges nothing by itself. `paid: true` means there is nothing left to pay.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The auction listing slug.

// Pay for an auction you won whose automatic charge did not go through.
BuyerAPI.createBuyerAuctionPay(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The auction listing slug. | 

### Return type

**CreateBuyerAuctionPayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAuctionRetract**
```swift
    open class func createBuyerAuctionRetract(slug: String, createBuyerAuctionRetractRequest: CreateBuyerAuctionRetractRequest, completion: @escaping (_ data: CreateBuyerAuctionRetractResponse?, _ error: Error?) -> Void)
```

Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.

With 12 hours or more left every bid of yours is withdrawn; inside 12 hours only bids placed in the last hour. Proxy answers your bid triggered are withdrawn with it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The auction listing slug.
let createBuyerAuctionRetractRequest = CreateBuyerAuctionRetractRequest(reason: "reason_example") // CreateBuyerAuctionRetractRequest | 

// Retract your bids under eBay’s rules — a typo, a changed listing, or an unreachable seller.
BuyerAPI.createBuyerAuctionRetract(slug: slug, createBuyerAuctionRetractRequest: createBuyerAuctionRetractRequest) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The auction listing slug. | 
 **createBuyerAuctionRetractRequest** | **CreateBuyerAuctionRetractRequest** |  | 

### Return type

**CreateBuyerAuctionRetractResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerBoard**
```swift
    open class func createBuyerBoard(completion: @escaping (_ data: CreateBuyerBoardResponse?, _ error: Error?) -> Void)
```

Create an outfit board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Create an outfit board.
BuyerAPI.createBuyerBoard() { (response, error) in
    guard error == nil else {
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

**CreateBuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerBoardItem**
```swift
    open class func createBuyerBoardItem(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Add a listing (by slug) to a board, at the next free spot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Add a listing (by slug) to a board, at the next free spot.
BuyerAPI.createBuyerBoardItem(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerBreakSpotHold**
```swift
    open class func createBuyerBreakSpotHold(id: String, spotId: String, completion: @escaping (_ data: CreateBuyerBreakSpotHoldResponse?, _ error: Error?) -> Void)
```

Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let spotId = "spotId_example" // String | 

// Hold a spot in a pick-your-spot break, then buy it through checkout before the hold lapses.
BuyerAPI.createBuyerBreakSpotHold(id: id, spotId: spotId) { (response, error) in
    guard error == nil else {
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
 **spotId** | **String** |  | 

### Return type

**CreateBuyerBreakSpotHoldResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerBuybackRequest**
```swift
    open class func createBuyerBuybackRequest(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Ask Crossly to buy an item back under its buyback guarantee.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Ask Crossly to buy an item back under its buyback guarantee.
BuyerAPI.createBuyerBuybackRequest(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCartItem**
```swift
    open class func createBuyerCartItem(createBuyerCartItemRequest: CreateBuyerCartItemRequest, completion: @escaping (_ data: CreateBuyerCartItemResponse?, _ error: Error?) -> Void)
```

Add a listing to your cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerCartItemRequest = CreateBuyerCartItemRequest(listingSlug: "listingSlug_example", quantity: 123, listingVariantId: "listingVariantId_example", via: "via_example") // CreateBuyerCartItemRequest | 

// Add a listing to your cart.
BuyerAPI.createBuyerCartItem(createBuyerCartItemRequest: createBuyerCartItemRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerCartItemRequest** | **CreateBuyerCartItemRequest** |  | 

### Return type

**CreateBuyerCartItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCartItemSaveForLater**
```swift
    open class func createBuyerCartItemSaveForLater(id: UUID, completion: @escaping (_ data: BuyerCartResponse?, _ error: Error?) -> Void)
```

Move a cart line to saved-for-later.

Returns the whole saved list. A line from an accepted offer cannot be saved — its price only holds in the cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Move a cart line to saved-for-later.
BuyerAPI.createBuyerCartItemSaveForLater(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCartOptimizer**
```swift
    open class func createBuyerCartOptimizer(completion: @escaping (_ data: CreateBuyerCartOptimizerResponse?, _ error: Error?) -> Void)
```

Cart optimizer: send a shopping list (one item per line, \"2 Charizard Base Set\") and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Cart optimizer: send a shopping list (one item per line, \"2 Charizard Base Set\") and get the cheapest delivered basket across sellers — one pick per line, items + each seller’s shipping with free-shipping thresholds applied. fewestPackages prefers fewer sellers. Nothing is added to the cart.
BuyerAPI.createBuyerCartOptimizer() { (response, error) in
    guard error == nil else {
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

**CreateBuyerCartOptimizerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCartQuote**
```swift
    open class func createBuyerCartQuote(completion: @escaping (_ data: CreateBuyerCartQuoteResponse?, _ error: Error?) -> Void)
```

Price the cart, delivered — item, shipping, tax, total.

Runs the real checkout cascade and returns the totals instead of charging. Nothing is purchased. `taxComplete: false` means there is no saved delivery address, so the total is a floor rather than a final figure. `shippingOptions` lists each seller’s shipping services; send `shippingServiceBySeller` to price a different speed (an id the seller does not offer to the destination is a 400). Optional body: `{ \"shippingServiceBySeller\": { \"<sellerUserId>\": \"<serviceId>\" } }` — omitted sellers get the cheapest service; `registryToken` prices it as a gift shipped to that registry. (No body JSON schema: existing callers POST with none.)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Price the cart, delivered — item, shipping, tax, total.
BuyerAPI.createBuyerCartQuote() { (response, error) in
    guard error == nil else {
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

**CreateBuyerCartQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCartSavedMoveToCart**
```swift
    open class func createBuyerCartSavedMoveToCart(id: UUID, completion: @escaping (_ data: BuyerCartResponse?, _ error: Error?) -> Void)
```

Move a saved item back into your cart, at today’s price.

Refused when the item has sold or delisted. Returns the remaining saved list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Move a saved item back into your cart, at today’s price.
BuyerAPI.createBuyerCartSavedMoveToCart(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCaseCounter**
```swift
    open class func createBuyerCaseCounter(id: UUID, createBuyerCaseCounterRequest: CreateBuyerCaseCounterRequest, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Propose your own refund figure on a case.

In cents, at most what you paid. The case goes back to the seller for 72 hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let createBuyerCaseCounterRequest = CreateBuyerCaseCounterRequest(amountCents: 123, note: "note_example") // CreateBuyerCaseCounterRequest | 

// Propose your own refund figure on a case.
BuyerAPI.createBuyerCaseCounter(id: id, createBuyerCaseCounterRequest: createBuyerCaseCounterRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **createBuyerCaseCounterRequest** | **CreateBuyerCaseCounterRequest** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCaseEscalate**
```swift
    open class func createBuyerCaseEscalate(id: UUID, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Ask Crossly to step in on a case.

Hands the case to Crossly’s reviewers. Refused once it is closed or already escalated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Ask Crossly to step in on a case.
BuyerAPI.createBuyerCaseEscalate(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCaseMessage**
```swift
    open class func createBuyerCaseMessage(id: UUID, createBuyerCaseMessageRequest: CreateBuyerCaseMessageRequest, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Post a message on a case thread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let createBuyerCaseMessageRequest = CreateBuyerCaseMessageRequest(body: "body_example", attachmentUrls: ["attachmentUrls_example"]) // CreateBuyerCaseMessageRequest | 

// Post a message on a case thread.
BuyerAPI.createBuyerCaseMessage(id: id, createBuyerCaseMessageRequest: createBuyerCaseMessageRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **createBuyerCaseMessageRequest** | **CreateBuyerCaseMessageRequest** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCaseRespond**
```swift
    open class func createBuyerCaseRespond(id: UUID, createBuyerCaseRespondRequest: CreateBuyerCaseRespondRequest, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Accept or reject the seller’s partial-refund offer on a case.

Accepting refunds the offered amount and closes the case. Rejecting hands it back to the seller for 72 hours. To propose your own figure instead, use the counter endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let createBuyerCaseRespondRequest = CreateBuyerCaseRespondRequest(decision: "decision_example") // CreateBuyerCaseRespondRequest | 

// Accept or reject the seller’s partial-refund offer on a case.
BuyerAPI.createBuyerCaseRespond(id: id, createBuyerCaseRespondRequest: createBuyerCaseRespondRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **createBuyerCaseRespondRequest** | **CreateBuyerCaseRespondRequest** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCaseWithdraw**
```swift
    open class func createBuyerCaseWithdraw(id: UUID, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Withdraw a case you opened.

Closes it with no refund and lets the order complete normally. Cannot be reopened — one case per order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Withdraw a case you opened.
BuyerAPI.createBuyerCaseWithdraw(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCatalogListingRental**
```swift
    open class func createBuyerCatalogListingRental(slug: String, completion: @escaping (_ data: CreateBuyerCatalogListingRentalResponse?, _ error: Error?) -> Void)
```

Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Book a rental. Returns a Stripe PaymentIntent client secret for rent + shipping both ways + deposit; the dates are held 30 minutes for payment. Crossly buys both labels; the deposit comes back after the item does.
BuyerAPI.createBuyerCatalogListingRental(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerCatalogListingRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCatalogListingRentalQuote**
```swift
    open class func createBuyerCatalogListingRentalQuote(slug: String, completion: @escaping (_ data: CreateBuyerCatalogListingRentalQuoteResponse?, _ error: Error?) -> Void)
```

Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. `problem` says why the dates can’t be booked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Price a rental: rent (the cheaper of by-the-day and by-the-week), both shipping legs once a ship-to is given, and the deposit. `problem` says why the dates can’t be booked.
BuyerAPI.createBuyerCatalogListingRentalQuote(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerCatalogListingRentalQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCatalogListingVideoRequest**
```swift
    open class func createBuyerCatalogListingVideoRequest(slug: String, completion: @escaping (_ data: CreateBuyerCatalogListingVideoRequestResponse?, _ error: Error?) -> Void)
```

Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Ask the seller for a video of an item (one open request per item). The seller is notified; their answer appears on the listing for every buyer.
BuyerAPI.createBuyerCatalogListingVideoRequest(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerCatalogListingVideoRequestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCompany**
```swift
    open class func createBuyerCompany(completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Create a buyer company: name, taxId?, website?. You become its owner; a user is in at most one company.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Create a buyer company: name, taxId?, website?. You become its owner; a user is in at most one company.
BuyerAPI.createBuyerCompany() { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCompanyApproval**
```swift
    open class func createBuyerCompanyApproval(completion: @escaping (_ data: CreateBuyerCompanyApprovalResponse?, _ error: Error?) -> Void)
```

Ask for approval of a trade order above your limit: sellerUserId, amountCents, note?, poReference?. Good for 7 days, used once at checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Ask for approval of a trade order above your limit: sellerUserId, amountCents, note?, poReference?. Good for 7 days, used once at checkout.
BuyerAPI.createBuyerCompanyApproval() { (response, error) in
    guard error == nil else {
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

**CreateBuyerCompanyApprovalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCompanyApprovalDecide**
```swift
    open class func createBuyerCompanyApprovalDecide(id: String, completion: @escaping (_ data: CreateBuyerCompanyApprovalResponse?, _ error: Error?) -> Void)
```

Approve or decline a pending request (owner, accounts payable): decision approved | declined, note?.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Approve or decline a pending request (owner, accounts payable): decision approved | declined, note?.
BuyerAPI.createBuyerCompanyApprovalDecide(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerCompanyApprovalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerCompanyMember**
```swift
    open class func createBuyerCompanyMember(completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Invite a teammate by email (owner): role owner | buyer | accounts_payable | viewer, approvalLimitCents for a buyer (orders above it need an approval).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Invite a teammate by email (owner): role owner | buyer | accounts_payable | viewer, approvalLimitCents for a buyer (orders above it need an approval).
BuyerAPI.createBuyerCompanyMember() { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerConversationInvite**
```swift
    open class func createBuyerConversationInvite(id: String, completion: @escaping (_ data: CreateBuyerWishlistInviteResponse?, _ error: Error?) -> Void)
```

Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Invite a friend into a chat with a seller: a single-use link (7 days) that makes whoever opens it a guest who can read and post. Only the thread’s buyer can invite; at most 5 guests.
BuyerAPI.createBuyerConversationInvite(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerWishlistInviteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerConversationJoin**
```swift
    open class func createBuyerConversationJoin(token: String, completion: @escaping (_ data: CreateBuyerConversationJoinResponse?, _ error: Error?) -> Void)
```

Join a chat you were invited into, as a guest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let token = "token_example" // String | 

// Join a chat you were invited into, as a guest.
BuyerAPI.createBuyerConversationJoin(token: token) { (response, error) in
    guard error == nil else {
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
 **token** | **String** |  | 

### Return type

**CreateBuyerConversationJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerEventRsvp**
```swift
    open class func createBuyerEventRsvp(slug: String, completion: @escaping (_ data: CreateBuyerEventRsvpResponse?, _ error: Error?) -> Void)
```

RSVP to an event: going (counts against its capacity) or interested.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// RSVP to an event: going (counts against its capacity) or interested.
BuyerAPI.createBuyerEventRsvp(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerEventRsvpResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerFeedback**
```swift
    open class func createBuyerFeedback(createBuyerFeedbackRequest: CreateBuyerFeedbackRequest, completion: @escaping (_ data: CreateBuyerFeedbackResponse?, _ error: Error?) -> Void)
```

Leave feedback on up to 25 orders at once, with optional detailed seller ratings.

Each entry is checked on its own — one refused comment never sinks the others; read `data[].ok`. Orders to review come from GET /v1/buyer/feedback/pending.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerFeedbackRequest = CreateBuyerFeedbackRequest(reviews: [CreateBuyerFeedbackRequestReviews(purchaseId: 123, rating: 123, body: "body_example", ratingAsDescribed: 123, ratingCommunication: 123, ratingShipSpeed: 123, ratingShipCost: 123)]) // CreateBuyerFeedbackRequest | 

// Leave feedback on up to 25 orders at once, with optional detailed seller ratings.
BuyerAPI.createBuyerFeedback(createBuyerFeedbackRequest: createBuyerFeedbackRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerFeedbackRequest** | **CreateBuyerFeedbackRequest** |  | 

### Return type

**CreateBuyerFeedbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerFitRef**
```swift
    open class func createBuyerFitRef(completion: @escaping (_ data: BuyerResponse2?, _ error: Error?) -> Void)
```

Save a reference garment (flat measurements, inches) to compare listings against.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Save a reference garment (flat measurements, inches) to compare listings against.
BuyerAPI.createBuyerFitRef() { (response, error) in
    guard error == nil else {
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

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerFollowingSellerSeen**
```swift
    open class func createBuyerFollowingSellerSeen(createBuyerFollowingSellerSeenRequest: CreateBuyerFollowingSellerSeenRequest, completion: @escaping (_ data: CreateBuyerFollowingSellerSeenResponse?, _ error: Error?) -> Void)
```

Clear the \"new listings\" count on a followed seller, or on all of them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerFollowingSellerSeenRequest = CreateBuyerFollowingSellerSeenRequest(sellerUserId: 123) // CreateBuyerFollowingSellerSeenRequest | 

// Clear the \"new listings\" count on a followed seller, or on all of them.
BuyerAPI.createBuyerFollowingSellerSeen(createBuyerFollowingSellerSeenRequest: createBuyerFollowingSellerSeenRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerFollowingSellerSeenRequest** | **CreateBuyerFollowingSellerSeenRequest** |  | 

### Return type

**CreateBuyerFollowingSellerSeenResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerGiftCard**
```swift
    open class func createBuyerGiftCard(createBuyerGiftCardRequest: CreateBuyerGiftCardRequest, completion: @escaping (_ data: CreateBuyerGiftCardResponse?, _ error: Error?) -> Void)
```

Start a gift card purchase.

Creates an unpaid card and a Stripe PaymentIntent, and returns its client secret. Nothing is charged until the PaymentIntent is confirmed; the code is emailed to the recipient once payment clears (at deliverAt, if given) and is never returned here. $10–$500. Cards and their credit expire 5 years after purchase. Idempotency-Key required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerGiftCardRequest = CreateBuyerGiftCardRequest(amountCents: 123, recipientEmail: "recipientEmail_example", recipientName: "recipientName_example", message: "message_example", deliverAt: Date()) // CreateBuyerGiftCardRequest | 

// Start a gift card purchase.
BuyerAPI.createBuyerGiftCard(createBuyerGiftCardRequest: createBuyerGiftCardRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerGiftCardRequest** | **CreateBuyerGiftCardRequest** |  | 

### Return type

**CreateBuyerGiftCardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerGiftCardRedeem**
```swift
    open class func createBuyerGiftCardRedeem(createBuyerGiftCardRedeemRequest: CreateBuyerGiftCardRedeemRequest, completion: @escaping (_ data: CreateBuyerGiftCardRedeemResponse?, _ error: Error?) -> Void)
```

Redeem a gift card code into your own balance.

Adds the card’s value to the token owner’s Crossly balance (Crossly Bucks today; CBX granted balance when Crossly issues CBX), spendable at checkout. One redemption per card. The credit keeps the card’s expiry date. Refusals: 404 invalid_code, 409 already_redeemed / not_paid / void / expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerGiftCardRedeemRequest = CreateBuyerGiftCardRedeemRequest(code: "code_example") // CreateBuyerGiftCardRedeemRequest | 

// Redeem a gift card code into your own balance.
BuyerAPI.createBuyerGiftCardRedeem(createBuyerGiftCardRedeemRequest: createBuyerGiftCardRedeemRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerGiftCardRedeemRequest** | **CreateBuyerGiftCardRedeemRequest** |  | 

### Return type

**CreateBuyerGiftCardRedeemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerGroupBuyJoin**
```swift
    open class func createBuyerGroupBuyJoin(id: String, completion: @escaping (_ data: CreateBuyerGroupBuyJoinResponse?, _ error: Error?) -> Void)
```

Join a group buy with a quantity (up to its per-buyer max): a hold (or, for pay-now pools, a charge refunded the difference) at the starting price, settled at the price the group reaches. `linkToken` opens a link-only pool. Checked against this key’s spending controls; send an Idempotency-Key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Join a group buy with a quantity (up to its per-buyer max): a hold (or, for pay-now pools, a charge refunded the difference) at the starting price, settled at the price the group reaches. `linkToken` opens a link-only pool. Checked against this key’s spending controls; send an Idempotency-Key.
BuyerAPI.createBuyerGroupBuyJoin(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerGroupBuyJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerGroupBuyLeave**
```swift
    open class func createBuyerGroupBuyLeave(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Leave a group buy and release your hold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Leave a group buy and release your hold.
BuyerAPI.createBuyerGroupBuyLeave(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerHunt**
```swift
    open class func createBuyerHunt(completion: @escaping (_ data: BuyerResponse2?, _ error: Error?) -> Void)
```

Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). `offer` and `buy` modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Start a buyer-agent hunt — over a search (filters), or auto-buy on one listing (listingSlug: buy it once its price, sale applied, is within maxPriceCents). `offer` and `buy` modes also need buyer:checkout:write, and the budget is checked against this key’s spending controls.
BuyerAPI.createBuyerHunt() { (response, error) in
    guard error == nil else {
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

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerInstantOfferAccept**
```swift
    open class func createBuyerInstantOfferAccept(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Accept Crossly’s instant offer on a collection item. Ops then send a prepaid label; the store credit is paid once the item arrives and checks out.
BuyerAPI.createBuyerInstantOfferAccept(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerLayawayCancel**
```swift
    open class func createBuyerLayawayCancel(id: String, completion: @escaping (_ data: BuyerLayawayResponse?, _ error: Error?) -> Void)
```

Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a layaway: everything paid comes back except the layaway fee (10% of the price, at most $15).
BuyerAPI.createBuyerLayawayCancel(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerLayawayPay**
```swift
    open class func createBuyerLayawayPay(id: String, completion: @escaping (_ data: BuyerLayawayResponse?, _ error: Error?) -> Void)
```

Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Pay some (at least $1) or all of what is left now, on the saved card. Paid in full, it ships.
BuyerAPI.createBuyerLayawayPay(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerListingAudioSummary**
```swift
    open class func createBuyerListingAudioSummary(slug: String, completion: @escaping (_ data: GetBuyerListingAudioSummaryResponse?, _ error: Error?) -> Void)
```

Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Record the spoken summary of a listing (cached per listing version). 503 naming TTS_API_KEY when no speech provider is configured.
BuyerAPI.createBuyerListingAudioSummary(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingAudioSummaryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerListingSplit**
```swift
    open class func createBuyerListingSplit(slug: String, completion: @escaping (_ data: CreateBuyerListingSplitResponse?, _ error: Error?) -> Void)
```

Split a purchase: one pay link per person; nobody is charged until all have paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Split a purchase: one pay link per person; nobody is charged until all have paid.
BuyerAPI.createBuyerListingSplit(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerListingSplitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerListingSubscribe**
```swift
    open class func createBuyerListingSubscribe(slug: String, completion: @escaping (_ data: BuyerResponse2?, _ error: Error?) -> Void)
```

Subscribe & save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Subscribe & save: a standing order charged to your saved card every interval. Checked against this key’s spending controls; send an Idempotency-Key.
BuyerAPI.createBuyerListingSubscribe(slug: slug) { (response, error) in
    guard error == nil else {
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

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerListingTryOn**
```swift
    open class func createBuyerListingTryOn(slug: String, completion: @escaping (_ data: CreateBuyerListingTryOnResponse?, _ error: Error?) -> Void)
```

Render an AI try-on of this listing on the buyer’s own photo (base64 `photo`, or `reuseLastPhoto`). `confirmSelfAdult` must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Render an AI try-on of this listing on the buyer’s own photo (base64 `photo`, or `reuseLastPhoto`). `confirmSelfAdult` must be true: the photo is of the buyer and they are 18+. Wearables only; capped per day; 503 naming TRYON_API_KEY when no image model is configured.
BuyerAPI.createBuyerListingTryOn(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerListingTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerMarketBid**
```swift
    open class func createBuyerMarketBid(completion: @escaping (_ data: CreateBuyerMarketBidResponse?, _ error: Error?) -> Void)
```

Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Place a fixed-price market bid. SPENDS MONEY: it fills against the lowest ask at or under your price and charges your saved card (plus the fast-ship premium when fastShip is set and it fills from vault stock). deliverTo vault keeps it in your Crossly vault; gradeWith sends a raw card to a Grading run first. Checked against this key’s spending controls; send an Idempotency-Key.
BuyerAPI.createBuyerMarketBid() { (response, error) in
    guard error == nil else {
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

**CreateBuyerMarketBidResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerMarketWatch**
```swift
    open class func createBuyerMarketWatch(completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Watch a market variant: alert at or below a price, or on any drop.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Watch a market variant: alert at or below a price, or on any drop.
BuyerAPI.createBuyerMarketWatch() { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOffer**
```swift
    open class func createBuyerOffer(createBuyerOfferRequest: CreateBuyerOfferRequest, completion: @escaping (_ data: CreateBuyerOfferResponse?, _ error: Error?) -> Void)
```

Offer a price on a listing.

Sends an offer to the seller. Spends nothing — a seller accepting still leaves you to complete checkout. Offers at or above the asking price are refused; buy it instead.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerOfferRequest = CreateBuyerOfferRequest(listingSlug: "listingSlug_example", amountCents: 123, message: "message_example") // CreateBuyerOfferRequest | 

// Offer a price on a listing.
BuyerAPI.createBuyerOffer(createBuyerOfferRequest: createBuyerOfferRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerOfferRequest** | **CreateBuyerOfferRequest** |  | 

### Return type

**CreateBuyerOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOfferRespond**
```swift
    open class func createBuyerOfferRespond(id: UUID, createBuyerOfferRespondRequest: CreateBuyerOfferRespondRequest, completion: @escaping (_ data: CreateBuyerOfferRespondResponse?, _ error: Error?) -> Void)
```

Answer a seller’s counteroffer — accept, decline, or counter back.

Only an offer with `awaitingBuyer: true` can be answered. Accepting opens a 48-hour window to pay on Crossly; it charges nothing. A counter must be below the seller’s price (in cents) and becomes a new offer waiting on the seller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The offer id.
let createBuyerOfferRespondRequest = CreateBuyerOfferRespondRequest(action: "action_example", counterCents: 123) // CreateBuyerOfferRespondRequest | 

// Answer a seller’s counteroffer — accept, decline, or counter back.
BuyerAPI.createBuyerOfferRespond(id: id, createBuyerOfferRespondRequest: createBuyerOfferRespondRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The offer id. | 
 **createBuyerOfferRespondRequest** | **CreateBuyerOfferRespondRequest** |  | 

### Return type

**CreateBuyerOfferRespondResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOrderCancel**
```swift
    open class func createBuyerOrderCancel(id: UUID, completion: @escaping (_ data: CreateBuyerOrderCancelResponse?, _ error: Error?) -> Void)
```

Cancel an order before it ships — refunds it in full.

Instant while the seller has not bought a label or shipped. Refused with 409 once they have (`details.shopCode`: already_shipped, label_purchased, disputed, already_refunded). Check GET /v1/buyer/orders/{id}/eligibility first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Cancel an order before it ships — refunds it in full.
BuyerAPI.createBuyerOrderCancel(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**CreateBuyerOrderCancelResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOrderInr**
```swift
    open class func createBuyerOrderInr(id: UUID, createBuyerOrderInrRequest: CreateBuyerOrderInrRequest, completion: @escaping (_ data: CreateBuyerOrderInrResponse?, _ error: Error?) -> Void)
```

Open an item-not-received case.

Only after the expected delivery window — a 409 carries `details.reason` and `details.opensAt` when it is too early. The seller then has 72 hours to respond. One case per order, ever.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let createBuyerOrderInrRequest = CreateBuyerOrderInrRequest(body: "body_example", photoUrls: ["photoUrls_example"]) // CreateBuyerOrderInrRequest | 

// Open an item-not-received case.
BuyerAPI.createBuyerOrderInr(id: id, createBuyerOrderInrRequest: createBuyerOrderInrRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **createBuyerOrderInrRequest** | **CreateBuyerOrderInrRequest** |  | 

### Return type

**CreateBuyerOrderInrResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOrderReceived**
```swift
    open class func createBuyerOrderReceived(id: UUID, completion: @escaping (_ data: CreateBuyerOrderReceivedResponse?, _ error: Error?) -> Void)
```

Confirm you received an order.

Records receipt and opens feedback. It does NOT release the seller’s money sooner or shorten your buyer protection. Closes the item-not-received entry point.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Confirm you received an order.
BuyerAPI.createBuyerOrderReceived(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**CreateBuyerOrderReceivedResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerOrderTip**
```swift
    open class func createBuyerOrderTip(id: String, completion: @escaping (_ data: CreateBuyerOrderTipResponse?, _ error: Error?) -> Void)
```

Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Tip the seller on one of your shipped orders, charged to your saved card. One tip per order; $1–$500; checked against this key’s spending controls.
BuyerAPI.createBuyerOrderTip(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerOrderTipResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPackFairnessRotate**
```swift
    open class func createBuyerPackFairnessRotate(completion: @escaping (_ data: GetBuyerPackFairnessResponse?, _ error: Error?) -> Void)
```

Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Reveal your current server seed and start a new one (optionally with your own client seed). Refused while an opening is awaiting payment.
BuyerAPI.createBuyerPackFairnessRotate() { (response, error) in
    guard error == nil else {
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

**GetBuyerPackFairnessResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPackOpen**
```swift
    open class func createBuyerPackOpen(slug: String, completion: @escaping (_ data: CreateBuyerPackOpenResponse?, _ error: Error?) -> Void)
```

Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Open a pack. SPENDS MONEY: charges the pack price to your saved card, then pulls one real item by the published odds (provably fair: see /buyer/packs/fairness) into your Crossly vault. confirmAdult must be true. Checked against this key’s spending controls; send an Idempotency-Key.
BuyerAPI.createBuyerPackOpen(slug: slug) { (response, error) in
    guard error == nil else {
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

**CreateBuyerPackOpenResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPackOpeningSellBack**
```swift
    open class func createBuyerPackOpeningSellBack(id: String, completion: @escaping (_ data: CreateBuyerPackOpeningSellBackResponse?, _ error: Error?) -> Void)
```

Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Sell a pull straight back for Crossly credit at the pack’s buyback rate, within its window, while it is still in your vault.
BuyerAPI.createBuyerPackOpeningSellBack(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerPackOpeningSellBackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPassportClaim**
```swift
    open class func createBuyerPassportClaim(code: String, completion: @escaping (_ data: GetBuyerPassportResponse?, _ error: Error?) -> Void)
```

Claim a passport as the item’s current owner — the buyer of its latest Crossly sale, or (after a sale on another marketplace) with the transfer code from the card in the box — shown as “in its owner’s hands” until it sells again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// Claim a passport as the item’s current owner — the buyer of its latest Crossly sale, or (after a sale on another marketplace) with the transfer code from the card in the box — shown as “in its owner’s hands” until it sells again.
BuyerAPI.createBuyerPassportClaim(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**GetBuyerPassportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerProtectionPlanCancel**
```swift
    open class func createBuyerProtectionPlanCancel(id: String, completion: @escaping (_ data: CreateBuyerProtectionPlanCancelResponse?, _ error: Error?) -> Void)
```

Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a protection plan. The insurer decides what is refundable (pro-rata after the free-look window); that amount goes back to the card.
BuyerAPI.createBuyerProtectionPlanCancel(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerProtectionPlanCancelResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPurchaseFit**
```swift
    open class func createBuyerPurchaseFit(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Say how a delivered purchase fit: true_to_size, small or large. It teaches your size memory and, pooled with other buyers, how the brand runs.
BuyerAPI.createBuyerPurchaseFit(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerPurchaseReturn**
```swift
    open class func createBuyerPurchaseReturn(id: String, completion: @escaping (_ data: BuyerResponse2?, _ error: Error?) -> Void)
```

Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, `fit` (small | large) says which way, and it feeds your size memory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Return a purchase under the seller’s policy, or send back a try-at-home item. With reason doesnt_fit, `fit` (small | large) says which way, and it feeds your size memory.
BuyerAPI.createBuyerPurchaseReturn(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRegistry**
```swift
    open class func createBuyerRegistry(completion: @escaping (_ data: CreateBuyerRegistryResponse?, _ error: Error?) -> Void)
```

Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Start a gift registry (wedding, baby, birthday, housewarming, graduation, other). Items are added like any wishlist item; set shipAddressId to one of your saved addresses so guests can buy — they never see it.
BuyerAPI.createBuyerRegistry() { (response, error) in
    guard error == nil else {
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

**CreateBuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRegistryGiftThanked**
```swift
    open class func createBuyerRegistryGiftThanked(id: String, giftId: String, completion: @escaping (_ data: CreateBuyerRegistryGiftThankedResponse?, _ error: Error?) -> Void)
```

Tick a gift as thanked (or untick it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let giftId = "giftId_example" // String | 

// Tick a gift as thanked (or untick it).
BuyerAPI.createBuyerRegistryGiftThanked(id: id, giftId: giftId) { (response, error) in
    guard error == nil else {
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
 **giftId** | **String** |  | 

### Return type

**CreateBuyerRegistryGiftThankedResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalArrivalPhoto**
```swift
    open class func createBuyerRentalArrivalPhoto(id: String, completion: @escaping (_ data: BuyerRentalResponse?, _ error: Error?) -> Void)
```

Photograph a rental on arrival (URLs you uploaded): your side of the condition record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Photograph a rental on arrival (URLs you uploaded): your side of the condition record.
BuyerAPI.createBuyerRentalArrivalPhoto(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalBuyout**
```swift
    open class func createBuyerRentalBuyout(id: String, completion: @escaping (_ data: CreateBuyerRentalBuyoutResponse?, _ error: Error?) -> Void)
```

Buy the item you are renting: the price less the rent-to-own credit → clientSecret.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Buy the item you are renting: the price less the rent-to-own credit → clientSecret.
BuyerAPI.createBuyerRentalBuyout(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerRentalBuyoutResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalCancel**
```swift
    open class func createBuyerRentalCancel(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Cancel a rental that has not shipped: everything is refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a rental that has not shipped: everything is refunded.
BuyerAPI.createBuyerRentalCancel(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalClaimResponse**
```swift
    open class func createBuyerRentalClaimResponse(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Answer a deposit claim: accept (the claim is paid, the rest refunded) or dispute (Crossly decides).
BuyerAPI.createBuyerRentalClaimResponse(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalDelivered**
```swift
    open class func createBuyerRentalDelivered(id: String, completion: @escaping (_ data: BuyerRentalResponse?, _ error: Error?) -> Void)
```

Confirm your rental arrived.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Confirm your rental arrived.
BuyerAPI.createBuyerRentalDelivered(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalExtension**
```swift
    open class func createBuyerRentalExtension(id: String, completion: @escaping (_ data: CreateBuyerRentalExtensionResponse?, _ error: Error?) -> Void)
```

Ask for more days. Auto-approved extensions return a clientSecret to pay with Stripe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Ask for more days. Auto-approved extensions return a clientSecret to pay with Stripe.
BuyerAPI.createBuyerRentalExtension(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerRentalExtensionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalExtensionPay**
```swift
    open class func createBuyerRentalExtensionPay(id: String, extensionId: String, completion: @escaping (_ data: CreateBuyerRentalExtensionPayResponse?, _ error: Error?) -> Void)
```

Pay for an extension the seller approved → clientSecret.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let extensionId = "extensionId_example" // String | 

// Pay for an extension the seller approved → clientSecret.
BuyerAPI.createBuyerRentalExtensionPay(id: id, extensionId: extensionId) { (response, error) in
    guard error == nil else {
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

**CreateBuyerRentalExtensionPayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalIdentityStart**
```swift
    open class func createBuyerRentalIdentityStart(completion: @escaping (_ data: CreateBuyerRentalIdentityStartResponse?, _ error: Error?) -> Void)
```

Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open `url` (hosted) or use `clientSecret` with Stripe.js.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Start the ID check renting needs (Stripe Identity: photo ID + selfie). Open `url` (hosted) or use `clientSecret` with Stripe.js.
BuyerAPI.createBuyerRentalIdentityStart() { (response, error) in
    guard error == nil else {
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

**CreateBuyerRentalIdentityStartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerRentalReturnShipped**
```swift
    open class func createBuyerRentalReturnShipped(id: String, completion: @escaping (_ data: BuyerRentalResponse?, _ error: Error?) -> Void)
```

Say you sent your rental back (optionally with photos).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Say you sent your rental back (optionally with photos).
BuyerAPI.createBuyerRentalReturnShipped(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerReturnCancel**
```swift
    open class func createBuyerReturnCancel(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Cancel a return before it ships.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a return before it ships.
BuyerAPI.createBuyerReturnCancel(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerReturnTracking**
```swift
    open class func createBuyerReturnTracking(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Add tracking to a return you shipped on your own label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Add tracking to a return you shipped on your own label.
BuyerAPI.createBuyerReturnTracking(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerSellerClubJoin**
```swift
    open class func createBuyerSellerClubJoin(sellerUserId: String, completion: @escaping (_ data: CreateBuyerSellerClubJoinResponse?, _ error: Error?) -> Void)
```

Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// Join a seller’s loyalty club (free). Your tier’s discount then applies to their items — the best of it and any other rate you have with them, never stacked.
BuyerAPI.createBuyerSellerClubJoin(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**CreateBuyerSellerClubJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerSellerLoyaltyJoin**
```swift
    open class func createBuyerSellerLoyaltyJoin(sellerUserId: String, completion: @escaping (_ data: GetBuyerSellerLoyaltyResponse?, _ error: Error?) -> Void)
```

Join a seller’s loyalty club. Invite-only clubs take only invited buyers. Your tier and its perks are granted at once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// Join a seller’s loyalty club. Invite-only clubs take only invited buyers. Your tier and its perks are granted at once.
BuyerAPI.createBuyerSellerLoyaltyJoin(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**GetBuyerSellerLoyaltyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerSellerReport**
```swift
    open class func createBuyerSellerReport(username: String, createBuyerSellerReportRequest: CreateBuyerSellerReportRequest, completion: @escaping (_ data: CreateBuyerStoreReportResponse?, _ error: Error?) -> Void)
```

Report a seller to Crossly’s trust team.

A second report while your first is still under review updates that report instead of filing another. `purchaseId` is attached only if it is your order from this seller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let username = "username_example" // String | The seller’s shop handle.
let createBuyerSellerReportRequest = CreateBuyerSellerReportRequest(reason: "reason_example", details: "details_example", purchaseId: 123) // CreateBuyerSellerReportRequest | 

// Report a seller to Crossly’s trust team.
BuyerAPI.createBuyerSellerReport(username: username, createBuyerSellerReportRequest: createBuyerSellerReportRequest) { (response, error) in
    guard error == nil else {
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
 **username** | **String** | The seller’s shop handle. | 
 **createBuyerSellerReportRequest** | **CreateBuyerSellerReportRequest** |  | 

### Return type

**CreateBuyerStoreReportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerSplitCancel**
```swift
    open class func createBuyerSplitCancel(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Cancel a split you organised; every held share is released.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a split you organised; every held share is released.
BuyerAPI.createBuyerSplitCancel(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerStoreReport**
```swift
    open class func createBuyerStoreReport(slug: String, createBuyerSellerReportRequest: CreateBuyerSellerReportRequest, completion: @escaping (_ data: CreateBuyerStoreReportResponse?, _ error: Error?) -> Void)
```

Report a store to Crossly’s trust team.

Files against whoever runs the store. A second report while your first is still under review updates that report instead of filing another. `purchaseId` is attached only if it is your order from this seller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The store’s slug (its /shop/s/<slug> address).
let createBuyerSellerReportRequest = CreateBuyerSellerReportRequest(reason: "reason_example", details: "details_example", purchaseId: 123) // CreateBuyerSellerReportRequest | 

// Report a store to Crossly’s trust team.
BuyerAPI.createBuyerStoreReport(slug: slug, createBuyerSellerReportRequest: createBuyerSellerReportRequest) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The store’s slug (its /shop/s/&lt;slug&gt; address). | 
 **createBuyerSellerReportRequest** | **CreateBuyerSellerReportRequest** |  | 

### Return type

**CreateBuyerStoreReportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogether**
```swift
    open class func createBuyerTogether(completion: @escaping (_ data: CreateBuyerTogetherResponse?, _ error: Error?) -> Void)
```

Start a shop-together room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Start a shop-together room.
BuyerAPI.createBuyerTogether() { (response, error) in
    guard error == nil else {
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

**CreateBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogetherItem**
```swift
    open class func createBuyerTogetherItem(code: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Add a listing to a shop-together board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// Add a listing to a shop-together board.
BuyerAPI.createBuyerTogetherItem(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogetherItemVote**
```swift
    open class func createBuyerTogetherItemVote(code: String, id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Vote an item on a room’s board up (1), down (-1) or clear (0).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 
let id = "id_example" // String | 

// Vote an item on a room’s board up (1), down (-1) or clear (0).
BuyerAPI.createBuyerTogetherItemVote(code: code, id: id) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 
 **id** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogetherJoin**
```swift
    open class func createBuyerTogetherJoin(code: String, completion: @escaping (_ data: CreateBuyerTogetherResponse?, _ error: Error?) -> Void)
```

Join a shop-together room by its code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// Join a shop-together room by its code.
BuyerAPI.createBuyerTogetherJoin(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**CreateBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogetherLeave**
```swift
    open class func createBuyerTogetherLeave(code: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Leave a shop-together room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// Leave a shop-together room.
BuyerAPI.createBuyerTogetherLeave(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTogetherMessage**
```swift
    open class func createBuyerTogetherMessage(code: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Say something in a shop-together room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// Say something in a shop-together room.
BuyerAPI.createBuyerTogetherMessage(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerTotalRequest**
```swift
    open class func createBuyerTotalRequest(createBuyerTotalRequestRequest: CreateBuyerTotalRequestRequest, completion: @escaping (_ data: CreateBuyerTotalRequestResponse?, _ error: Error?) -> Void)
```

Ask a seller for one combined shipping total on everything of theirs in your cart.

Needs two or more of the seller’s items in your cart. Spends nothing; the quote applies at checkout on Crossly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerTotalRequestRequest = CreateBuyerTotalRequestRequest(sellerUserId: 123, message: "message_example") // CreateBuyerTotalRequestRequest | 

// Ask a seller for one combined shipping total on everything of theirs in your cart.
BuyerAPI.createBuyerTotalRequest(createBuyerTotalRequestRequest: createBuyerTotalRequestRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerTotalRequestRequest** | **CreateBuyerTotalRequestRequest** |  | 

### Return type

**CreateBuyerTotalRequestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerVaultList**
```swift
    open class func createBuyerVaultList(id: String, completion: @escaping (_ data: CreateBuyerVaultListResponse?, _ error: Error?) -> Void)
```

Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Sell a vault item on the market at your price. It is already authenticated, so when it sells nothing ships in: the buyer keeps it vaulted or it ships straight to them.
BuyerAPI.createBuyerVaultList(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerVaultListResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerVaultUnlist**
```swift
    open class func createBuyerVaultUnlist(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Take a vault item off the market; it stays stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Take a vault item off the market; it stays stored.
BuyerAPI.createBuyerVaultUnlist(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerVaultWithdraw**
```swift
    open class func createBuyerVaultWithdraw(id: String, completion: @escaping (_ data: CreateBuyerVaultWithdrawResponse?, _ error: Error?) -> Void)
```

Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Ship a vault item home, standard or expedited. The shipping, any storage it owes and the early-withdrawal fee (within 90 days of arriving) are charged to your saved card now, all checked against this key’s spending controls; send an Idempotency-Key.
BuyerAPI.createBuyerVaultWithdraw(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerVaultWithdrawResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleCatalogApply**
```swift
    open class func createBuyerWholesaleCatalogApply(storeSlug: String, catalogSlug: String, completion: @escaping (_ data: CreateBuyerWholesaleCatalogApplyResponse?, _ error: Error?) -> Void)
```

Apply to a store's wholesale catalog: { message?, answers [{ id, value }], resaleCertUrl?, resaleCertState?, taxId?, businessInfo? }. The seller's requirements are enforced (400 trade_apply_requirements names the first one missing); the seller reviews the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let storeSlug = "storeSlug_example" // String | 
let catalogSlug = "catalogSlug_example" // String | 

// Apply to a store's wholesale catalog: { message?, answers [{ id, value }], resaleCertUrl?, resaleCertState?, taxId?, businessInfo? }. The seller's requirements are enforced (400 trade_apply_requirements names the first one missing); the seller reviews the request.
BuyerAPI.createBuyerWholesaleCatalogApply(storeSlug: storeSlug, catalogSlug: catalogSlug) { (response, error) in
    guard error == nil else {
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
 **storeSlug** | **String** |  | 
 **catalogSlug** | **String** |  | 

### Return type

**CreateBuyerWholesaleCatalogApplyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleFreightRequest**
```swift
    open class func createBuyerWholesaleFreightRequest(completion: @escaping (_ data: CreateBuyerWholesaleFreightRequestResponse?, _ error: Error?) -> Void)
```

Ask a seller to quote freight for their lines in your cart (an order over their pallet threshold): { sellerUserId, weightLbs?, shipTo? { postalCode, country, city?, region?, liftgate?, dock? }, note? }. One open request per seller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Ask a seller to quote freight for their lines in your cart (an order over their pallet threshold): { sellerUserId, weightLbs?, shipTo? { postalCode, country, city?, region?, liftgate?, dock? }, note? }. One open request per seller.
BuyerAPI.createBuyerWholesaleFreightRequest() { (response, error) in
    guard error == nil else {
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

**CreateBuyerWholesaleFreightRequestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleInvoicePayLink**
```swift
    open class func createBuyerWholesaleInvoicePayLink(id: String, completion: @escaping (_ data: CreateBuyerWholesaleInvoicePayLinkResponse?, _ error: Error?) -> Void)
```

A hosted payment page for an on-account invoice: amountCents? (part of the balance, at least $1), method? card | ach. Nothing is charged until the buyer completes the page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// A hosted payment page for an on-account invoice: amountCents? (part of the balance, at least $1), method? card | ach. Nothing is charged until the buyer completes the page.
BuyerAPI.createBuyerWholesaleInvoicePayLink(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerWholesaleInvoicePayLinkResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleOrderSheet**
```swift
    open class func createBuyerWholesaleOrderSheet(completion: @escaping (_ data: BuyerWholesaleOrderSheetResponse?, _ error: Error?) -> Void)
```

Save an order sheet: name, lines [{ platformListingId, listingVariantId?, catalogId?, quantity }] from one seller, optional catalogId, poReference, note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Save an order sheet: name, lines [{ platformListingId, listingVariantId?, catalogId?, quantity }] from one seller, optional catalogId, poReference, note.
BuyerAPI.createBuyerWholesaleOrderSheet() { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleOrderSheetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleQuote**
```swift
    open class func createBuyerWholesaleQuote(completion: @escaping (_ data: BuyerWholesaleQuoteResponse?, _ error: Error?) -> Void)
```

Ask one seller for a quote: items [{ platformListingId, listingVariantId?, quantity, targetUnitPriceCents? }] (one seller per quote), optional catalogId, note, poReference.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Ask one seller for a quote: items [{ platformListingId, listingVariantId?, quantity, targetUnitPriceCents? }] (one seller per quote), optional catalogId, note, poReference.
BuyerAPI.createBuyerWholesaleQuote() { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleQuoteAccept**
```swift
    open class func createBuyerWholesaleQuoteAccept(id: String, completion: @escaping (_ data: CreateBuyerWholesaleQuoteAcceptResponse?, _ error: Error?) -> Void)
```

Accept an answered quote: its priced items go into your cart at the quoted quantities, locked at the quoted prices until the quote expires (changing a line's quantity drops the lock). Paying happens at checkout on Crossly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Accept an answered quote: its priced items go into your cart at the quoted quantities, locked at the quoted prices until the quote expires (changing a line's quantity drops the lock). Paying happens at checkout on Crossly.
BuyerAPI.createBuyerWholesaleQuoteAccept(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerWholesaleQuoteAcceptResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleQuoteWithdraw**
```swift
    open class func createBuyerWholesaleQuoteWithdraw(id: String, completion: @escaping (_ data: BuyerWholesaleQuoteResponse?, _ error: Error?) -> Void)
```

Withdraw a quote request that is still requested or answered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Withdraw a quote request that is still requested or answered.
BuyerAPI.createBuyerWholesaleQuoteWithdraw(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWholesaleUploadValidate**
```swift
    open class func createBuyerWholesaleUploadValidate(completion: @escaping (_ data: CreateBuyerWholesaleUploadValidateResponse?, _ error: Error?) -> Void)
```

Validate a CSV / PO against one catalog: rows [{ line, sku, quantity }] are matched by SKU (item or option SKU, or listing slug), merged per item and priced today; unmatched rows come back by line.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Validate a CSV / PO against one catalog: rows [{ line, sku, quantity }] are matched by SKU (item or option SKU, or listing slug), merged per item and priced today; unmatched rows come back by line.
BuyerAPI.createBuyerWholesaleUploadValidate() { (response, error) in
    guard error == nil else {
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

**CreateBuyerWholesaleUploadValidateResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWishlist**
```swift
    open class func createBuyerWishlist(createBuyerWishlistRequest: CreateBuyerWishlistRequest, completion: @escaping (_ data: CreateBuyerWishlistResponse?, _ error: Error?) -> Void)
```

Create a wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let createBuyerWishlistRequest = CreateBuyerWishlistRequest(name: "name_example") // CreateBuyerWishlistRequest | 

// Create a wishlist.
BuyerAPI.createBuyerWishlist(createBuyerWishlistRequest: createBuyerWishlistRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerWishlistRequest** | **CreateBuyerWishlistRequest** |  | 

### Return type

**CreateBuyerWishlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWishlistInvite**
```swift
    open class func createBuyerWishlistInvite(id: String, completion: @escaping (_ data: CreateBuyerWishlistInviteResponse?, _ error: Error?) -> Void)
```

Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Share a wishlist with a co-editor: a single-use link (14 days). Members add and remove items; only the owner renames, deletes or removes members. At most 20.
BuyerAPI.createBuyerWishlistInvite(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerWishlistInviteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWishlistItem**
```swift
    open class func createBuyerWishlistItem(id: UUID, createBuyerWishlistItemRequest: CreateBuyerWishlistItemRequest, completion: @escaping (_ data: BuyerResponse2?, _ error: Error?) -> Void)
```

Add a listing to a wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 
let createBuyerWishlistItemRequest = CreateBuyerWishlistItemRequest(listingSlug: "listingSlug_example") // CreateBuyerWishlistItemRequest | 

// Add a listing to a wishlist.
BuyerAPI.createBuyerWishlistItem(id: id, createBuyerWishlistItemRequest: createBuyerWishlistItemRequest) { (response, error) in
    guard error == nil else {
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
 **createBuyerWishlistItemRequest** | **CreateBuyerWishlistItemRequest** |  | 

### Return type

**BuyerResponse2**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWishlistJoin**
```swift
    open class func createBuyerWishlistJoin(token: String, completion: @escaping (_ data: CreateBuyerWishlistJoinResponse?, _ error: Error?) -> Void)
```

Join a wishlist you were invited to edit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let token = "token_example" // String | 

// Join a wishlist you were invited to edit.
BuyerAPI.createBuyerWishlistJoin(token: token) { (response, error) in
    guard error == nil else {
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
 **token** | **String** |  | 

### Return type

**CreateBuyerWishlistJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerWishlistShare**
```swift
    open class func createBuyerWishlistShare(id: UUID, createBuyerWishlistShareRequest: CreateBuyerWishlistShareRequest, completion: @escaping (_ data: CreateBuyerWishlistShareResponse?, _ error: Error?) -> Void)
```

Share a wishlist — makes it public and returns its link.

`resetLink: true` issues a new link and kills the old one, for a link that went further than intended. To stop sharing, PATCH the list with isPublic: false.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let createBuyerWishlistShareRequest = CreateBuyerWishlistShareRequest(resetLink: false) // CreateBuyerWishlistShareRequest | 

// Share a wishlist — makes it public and returns its link.
BuyerAPI.createBuyerWishlistShare(id: id, createBuyerWishlistShareRequest: createBuyerWishlistShareRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **createBuyerWishlistShareRequest** | **CreateBuyerWishlistShareRequest** |  | 

### Return type

**CreateBuyerWishlistShareResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerBoard**
```swift
    open class func deleteBuyerBoard(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Delete a board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete a board.
BuyerAPI.deleteBuyerBoard(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerBoardItem**
```swift
    open class func deleteBuyerBoardItem(id: String, platformListingId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Take a listing off a board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// Take a listing off a board.
BuyerAPI.deleteBuyerBoardItem(id: id, platformListingId: platformListingId) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerBreakSpotHold**
```swift
    open class func deleteBuyerBreakSpotHold(id: String, spotId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Release a break spot you hold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let spotId = "spotId_example" // String | 

// Release a break spot you hold.
BuyerAPI.deleteBuyerBreakSpotHold(id: id, spotId: spotId) { (response, error) in
    guard error == nil else {
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
 **spotId** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerCartItem**
```swift
    open class func deleteBuyerCartItem(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a line from your cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Remove a line from your cart.
BuyerAPI.deleteBuyerCartItem(id: id) { (response, error) in
    guard error == nil else {
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

Void (empty response body)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerCartSaved**
```swift
    open class func deleteBuyerCartSaved(id: UUID, completion: @escaping (_ data: BuyerCartResponse?, _ error: Error?) -> Void)
```

Remove an item from saved-for-later. Returns the remaining list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Remove an item from saved-for-later. Returns the remaining list.
BuyerAPI.deleteBuyerCartSaved(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerCompanyMember**
```swift
    open class func deleteBuyerCompanyMember(id: String, completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Remove a member or cancel an invite (owner), or leave the company (your own member id).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Remove a member or cancel an invite (owner), or leave the company (your own member id).
BuyerAPI.deleteBuyerCompanyMember(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerConversationGuest**
```swift
    open class func deleteBuyerConversationGuest(id: String, userId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let userId = "userId_example" // String | 

// Remove a guest (the thread’s buyer), or leave (a guest, with your own user id).
BuyerAPI.deleteBuyerConversationGuest(id: id, userId: userId) { (response, error) in
    guard error == nil else {
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
 **userId** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerCreationReview**
```swift
    open class func deleteBuyerCreationReview(format: Format_deleteBuyerCreationReview, id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Remove your review of a creation (its vote leaves the rating with it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let format = "format_example" // String | The creation format.
let id = "id_example" // String | The creation id (a card is <setId>.<slug>).

// Remove your review of a creation (its vote leaves the rating with it).
BuyerAPI.deleteBuyerCreationReview(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** | The creation format. | 
 **id** | **String** | The creation id (a card is &lt;setId&gt;.&lt;slug&gt;). | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerEventRsvp**
```swift
    open class func deleteBuyerEventRsvp(slug: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Take back your RSVP.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Take back your RSVP.
BuyerAPI.deleteBuyerEventRsvp(slug: slug) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerFitRef**
```swift
    open class func deleteBuyerFitRef(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Delete a reference garment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete a reference garment.
BuyerAPI.deleteBuyerFitRef(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerHomeGuestbook**
```swift
    open class func deleteBuyerHomeGuestbook(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Hide a line from your home’s guestbook.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Hide a line from your home’s guestbook.
BuyerAPI.deleteBuyerHomeGuestbook(id: id) { (response, error) in
    guard error == nil else {
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

Void (empty response body)

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerMarketBid**
```swift
    open class func deleteBuyerMarketBid(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Cancel a resting market bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Cancel a resting market bid.
BuyerAPI.deleteBuyerMarketBid(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerMarketWatch**
```swift
    open class func deleteBuyerMarketWatch(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Stop watching a market variant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Stop watching a market variant.
BuyerAPI.deleteBuyerMarketWatch(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerOffer**
```swift
    open class func deleteBuyerOffer(id: UUID, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Withdraw an offer you made that the seller has not answered.

Only a pending offer can be withdrawn — an accepted price the seller agreed to cannot be taken back here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The offer id.

// Withdraw an offer you made that the seller has not answered.
BuyerAPI.deleteBuyerOffer(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The offer id. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerRecentlyViewed**
```swift
    open class func deleteBuyerRecentlyViewed(slug: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Remove one listing from your recently viewed.

Viewing it again brings it back. Sellers’ view counts are unaffected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The listing slug.

// Remove one listing from your recently viewed.
BuyerAPI.deleteBuyerRecentlyViewed(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The listing slug. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerRecentlyViewed2**
```swift
    open class func deleteBuyerRecentlyViewed2(completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Clear your recently viewed list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Clear your recently viewed list.
BuyerAPI.deleteBuyerRecentlyViewed2() { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerRegistry**
```swift
    open class func deleteBuyerRegistry(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Delete a registry (and the wishlist behind it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete a registry (and the wishlist behind it).
BuyerAPI.deleteBuyerRegistry(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerSellerClubJoin**
```swift
    open class func deleteBuyerSellerClubJoin(sellerUserId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Leave a seller’s loyalty club.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// Leave a seller’s loyalty club.
BuyerAPI.deleteBuyerSellerClubJoin(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerSellerLoyaltyJoin**
```swift
    open class func deleteBuyerSellerLoyaltyJoin(sellerUserId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Leave a seller’s loyalty club.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// Leave a seller’s loyalty club.
BuyerAPI.deleteBuyerSellerLoyaltyJoin(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerTogetherItem**
```swift
    open class func deleteBuyerTogetherItem(code: String, id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Take an item you added off a room’s board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 
let id = "id_example" // String | 

// Take an item you added off a room’s board.
BuyerAPI.deleteBuyerTogetherItem(code: code, id: id) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 
 **id** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerTotalRequest**
```swift
    open class func deleteBuyerTotalRequest(id: UUID, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Cancel a total request you made.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Cancel a total request you made.
BuyerAPI.deleteBuyerTotalRequest(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerTryOn**
```swift
    open class func deleteBuyerTryOn(id: String, completion: @escaping (_ data: DeleteBuyerTryOnResponse?, _ error: Error?) -> Void)
```

Delete a try-on and its images — or pass `all` to delete every photo and result.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete a try-on and its images — or pass `all` to delete every photo and result.
BuyerAPI.deleteBuyerTryOn(id: id) { (response, error) in
    guard error == nil else {
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

**DeleteBuyerTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerWholesaleOrderSheet**
```swift
    open class func deleteBuyerWholesaleOrderSheet(id: String, completion: @escaping (_ data: DeleteBuyerWholesaleOrderSheetResponse?, _ error: Error?) -> Void)
```

Delete an order sheet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete an order sheet.
BuyerAPI.deleteBuyerWholesaleOrderSheet(id: id) { (response, error) in
    guard error == nil else {
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

**DeleteBuyerWholesaleOrderSheetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerWishlist**
```swift
    open class func deleteBuyerWishlist(id: UUID, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Delete a wishlist and everything on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// Delete a wishlist and everything on it.
BuyerAPI.deleteBuyerWishlist(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerWishlistItem**
```swift
    open class func deleteBuyerWishlistItem(id: UUID, slug: String, completion: @escaping (_ data: DeleteBuyerWishlistItemResponse?, _ error: Error?) -> Void)
```

Take a listing off a wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The wishlist id.
let slug = "slug_example" // String | The listing slug.

// Take a listing off a wishlist.
BuyerAPI.deleteBuyerWishlistItem(id: id, slug: slug) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The wishlist id. | 
 **slug** | **String** | The listing slug. | 

### Return type

**DeleteBuyerWishlistItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerWishlistMember**
```swift
    open class func deleteBuyerWishlistMember(id: String, userId: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Remove a co-editor (the owner), or leave a list shared with you (your own user id).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let userId = "userId_example" // String | 

// Remove a co-editor (the owner), or leave a list shared with you (your own user id).
BuyerAPI.deleteBuyerWishlistMember(id: id, userId: userId) { (response, error) in
    guard error == nil else {
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
 **userId** | **String** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerAuctionMe**
```swift
    open class func getBuyerAuctionMe(slug: String, completion: @escaping (_ data: GetBuyerAuctionMeResponse?, _ error: Error?) -> Void)
```

Where you stand in one auction — your max, leading, won, must you pay.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The auction listing slug.

// Where you stand in one auction — your max, leading, won, must you pay.
BuyerAPI.getBuyerAuctionMe(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The auction listing slug. | 

### Return type

**GetBuyerAuctionMeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerBadge**
```swift
    open class func getBuyerBadge(completion: @escaping (_ data: GetBuyerBadgeResponse?, _ error: Error?) -> Void)
```

The counts behind the account badge — unread messages, offers waiting, orders to review.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The counts behind the account badge — unread messages, offers waiting, orders to review.
BuyerAPI.getBuyerBadge() { (response, error) in
    guard error == nil else {
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

**GetBuyerBadgeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerBoard**
```swift
    open class func getBuyerBoard(id: String, completion: @escaping (_ data: BuyerBoardResponse?, _ error: Error?) -> Void)
```

One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One of your boards with its layout: each item’s x, y and width as fractions of the board, and stacking order.
BuyerAPI.getBuyerBoard(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerBoardShared**
```swift
    open class func getBuyerBoardShared(token: String, completion: @escaping (_ data: BuyerBoardResponse?, _ error: Error?) -> Void)
```

A shared outfit board, by its link token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let token = "token_example" // String | 

// A shared outfit board, by its link token.
BuyerAPI.getBuyerBoardShared(token: token) { (response, error) in
    guard error == nil else {
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
 **token** | **String** |  | 

### Return type

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerBreak**
```swift
    open class func getBuyerBreak(id: String, completion: @escaping (_ data: GetBuyerBreakResponse?, _ error: Error?) -> Void)
```

A card break’s board: spots, holders, and the seed after the draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// A card break’s board: spots, holders, and the seed after the draw.
BuyerAPI.getBuyerBreak(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerBreakResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCase**
```swift
    open class func getBuyerCase(id: UUID, completion: @escaping (_ data: GetBuyerCaseResponse?, _ error: Error?) -> Void)
```

One case — its state, the message thread, and the return parcel if there is one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// One case — its state, the message thread, and the return parcel if there is one.
BuyerAPI.getBuyerCase(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**GetBuyerCaseResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListingMySize**
```swift
    open class func getBuyerCatalogListingMySize(slug: String, completion: @escaping (_ data: GetBuyerCatalogListingMySizeResponse?, _ error: Error?) -> Void)
```

This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// This item against your size: the size you keep in this kind of item (and in this brand), whether this one is your size, smaller or larger, a warning if this brand and size ran small or large on you before, and how other buyers say the brand runs. null for an unsized item.
BuyerAPI.getBuyerCatalogListingMySize(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerCatalogListingMySizeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListingPrice**
```swift
    open class func getBuyerCatalogListingPrice(slug: String, completion: @escaping (_ data: GetBuyerCatalogListingPriceResponse?, _ error: Error?) -> Void)
```

The price today. When the seller has the same item live on another marketplace for less, this IS that price (`priceMatch` says where from), and `lowestAnywhere` lists the marketplaces it is guaranteed not to be cheaper on. `priceCheck` rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The price today. When the seller has the same item live on another marketplace for less, this IS that price (`priceMatch` says where from), and `lowestAnywhere` lists the marketplaces it is guaranteed not to be cheaper on. `priceCheck` rates it against real sales of the same catalog item in the same condition over the last 180 days (great / good / fair / high, with the median and middle-half range in cents); null until there are 3+ sales from 2+ sellers.
BuyerAPI.getBuyerCatalogListingPrice(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerCatalogListingPriceResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListingRental**
```swift
    open class func getBuyerCatalogListingRental(slug: String, completion: @escaping (_ data: GetBuyerCatalogListingRentalResponse?, _ error: Error?) -> Void)
```

Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Whether a listing is for rent: day and week rates, the refundable deposit, length limits, the turnaround buffer, and the dates already booked. null when it is not for rent.
BuyerAPI.getBuyerCatalogListingRental(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerCatalogListingRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCheckoutUsdc**
```swift
    open class func getBuyerCheckoutUsdc(completion: @escaping (_ data: GetBuyerCheckoutUsdcResponse?, _ error: Error?) -> Void)
```

Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Whether Crossly takes USDC (Stripe stablecoin payments: Solana, Ethereum, Base, Polygon), and its per-order limit. Paying needs the buyer’s wallet, so it happens in the browser checkout, never unattended.
BuyerAPI.getBuyerCheckoutUsdc() { (response, error) in
    guard error == nil else {
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

**GetBuyerCheckoutUsdcResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCollectionOffer**
```swift
    open class func getBuyerCollectionOffer(id: String, completion: @escaping (_ data: GetBuyerCollectionOfferResponse?, _ error: Error?) -> Void)
```

What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// What an item in your collection would fetch now: the top open bid on the market for the same variant, condition and grade, and Crossly’s instant offer in store credit when that is switched on (a quote valid for a limited time).
BuyerAPI.getBuyerCollectionOffer(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerCollectionOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCollectionSet**
```swift
    open class func getBuyerCollectionSet(category: String, brand: String, model: String, completion: @escaping (_ data: GetBuyerCollectionSetResponse?, _ error: Error?) -> Void)
```

One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let category = "category_example" // String | 
let brand = "brand_example" // String | 
let model = "model_example" // String | 

// One set: every piece (owned or missing, with its lowest ask on the market), what completing it would cost now, and the leaderboard of collectors who opted in, with your rank.
BuyerAPI.getBuyerCollectionSet(category: category, brand: brand, model: model) { (response, error) in
    guard error == nil else {
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
 **category** | **String** |  | 
 **brand** | **String** |  | 
 **model** | **String** |  | 

### Return type

**GetBuyerCollectionSetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCompany**
```swift
    open class func getBuyerCompany(completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Your buyer company (members, roles, approval limits, shared addresses), or null when you are in none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your buyer company (members, roles, approval limits, shared addresses), or null when you are in none.
BuyerAPI.getBuyerCompany() { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCreation**
```swift
    open class func getBuyerCreation(format: Format_getBuyerCreation, id: String, completion: @escaping (_ data: GetBuyerCreationResponse?, _ error: Error?) -> Void)
```

A live creation's public page: its rating breakdown, recent reviews and whether you can review it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let format = "format_example" // String | The creation format.
let id = "id_example" // String | The creation id (a card is <setId>.<slug>).

// A live creation's public page: its rating breakdown, recent reviews and whether you can review it.
BuyerAPI.getBuyerCreation(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** | The creation format. | 
 **id** | **String** | The creation id (a card is &lt;setId&gt;.&lt;slug&gt;). | 

### Return type

**GetBuyerCreationResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCreator**
```swift
    open class func getBuyerCreator(handle: String, completion: @escaping (_ data: GetBuyerCreatorResponse?, _ error: Error?) -> Void)
```

A creator storefront: profile, affiliate code, and shelves of live picks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let handle = "handle_example" // String | 

// A creator storefront: profile, affiliate code, and shelves of live picks.
BuyerAPI.getBuyerCreator(handle: handle) { (response, error) in
    guard error == nil else {
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
 **handle** | **String** |  | 

### Return type

**GetBuyerCreatorResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerEvent**
```swift
    open class func getBuyerEvent(slug: String, completion: @escaping (_ data: GetBuyerEventResponse?, _ error: Error?) -> Void)
```

A seller event: schedule, location, host, linked listings, live show, promo code, RSVP counts and your own RSVP.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// A seller event: schedule, location, host, linked listings, live show, promo code, RSVP counts and your own RSVP.
BuyerAPI.getBuyerEvent(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerEventResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerFitVocabulary**
```swift
    open class func getBuyerFitVocabulary(completion: @escaping (_ data: GetBuyerFitVocabularyResponse?, _ error: Error?) -> Void)
```

Garment kinds and the measurements each takes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Garment kinds and the measurements each takes.
BuyerAPI.getBuyerFitVocabulary() { (response, error) in
    guard error == nil else {
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

**GetBuyerFitVocabularyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerGiftFinderOption**
```swift
    open class func getBuyerGiftFinderOption(completion: @escaping (_ data: GetBuyerGiftFinderOptionResponse?, _ error: Error?) -> Void)
```

The gift finder’s questions: recipients, interests, budgets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The gift finder’s questions: recipients, interests, budgets.
BuyerAPI.getBuyerGiftFinderOption() { (response, error) in
    guard error == nil else {
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

**GetBuyerGiftFinderOptionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerHome**
```swift
    open class func getBuyerHome(completion: @escaping (_ data: BuyerHomeResponse?, _ error: Error?) -> Void)
```

Your home in Crossly World (made on first read).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your home in Crossly World (made on first read).
BuyerAPI.getBuyerHome() { (response, error) in
    guard error == nil else {
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

**BuyerHomeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerHomePlaceable**
```swift
    open class func getBuyerHomePlaceable(completion: @escaping (_ data: GetBuyerHomePlaceableResponse?, _ error: Error?) -> Void)
```

What you could place in your home: your items and delivered furniture.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What you could place in your home: your items and delivered furniture.
BuyerAPI.getBuyerHomePlaceable() { (response, error) in
    guard error == nil else {
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

**GetBuyerHomePlaceableResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerImpact**
```swift
    open class func getBuyerImpact(completion: @escaping (_ data: GetBuyerImpactResponse?, _ error: Error?) -> Void)
```

The sourced footprint your secondhand purchases avoided.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The sourced footprint your secondhand purchases avoided.
BuyerAPI.getBuyerImpact() { (response, error) in
    guard error == nil else {
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

**GetBuyerImpactResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerLayaway**
```swift
    open class func getBuyerLayaway(id: String, completion: @escaping (_ data: BuyerLayawayResponse?, _ error: Error?) -> Void)
```

One layaway and its schedule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One layaway and its schedule.
BuyerAPI.getBuyerLayaway(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerLayawayResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingAudioSummary**
```swift
    open class func getBuyerListingAudioSummary(slug: String, completion: @escaping (_ data: GetBuyerListingAudioSummaryResponse?, _ error: Error?) -> Void)
```

A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// A spoken summary of a listing (accessibility): the text, built only from the listing’s own fields and the seller’s description, and the recording of it when one exists.
BuyerAPI.getBuyerListingAudioSummary(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingAudioSummaryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingBoughtTogether**
```swift
    open class func getBuyerListingBoughtTogether(slug: String, completion: @escaping (_ data: GetBuyerListingBoughtTogetherResponse?, _ error: Error?) -> Void)
```

Frequently bought together / complete the look.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Frequently bought together / complete the look.
BuyerAPI.getBuyerListingBoughtTogether(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingBoughtTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingBreak**
```swift
    open class func getBuyerListingBreak(slug: String, completion: @escaping (_ data: GetBuyerListingBreakResponse?, _ error: Error?) -> Void)
```

The card break this listing sells spots in, if any; the seed is revealed after the draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The card break this listing sells spots in, if any; the seed is revealed after the draw.
BuyerAPI.getBuyerListingBreak(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingBreakResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingCert**
```swift
    open class func getBuyerListingCert(slug: String, completion: @escaping (_ data: GetBuyerListingCertResponse?, _ error: Error?) -> Void)
```

A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// A graded listing’s cert, checked with the grader: the seller’s claim (grader, grade, cert number), status (verified, mismatch, not_found, or unchecked where the grader has no lookup), population and how many graded higher where the grader publishes them, and the grader’s own cert page.
BuyerAPI.getBuyerListingCert(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingCertResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingFit**
```swift
    open class func getBuyerListingFit(slug: String, completion: @escaping (_ data: GetBuyerListingFitResponse?, _ error: Error?) -> Void)
```

A listing’s flat measurements, compared with your saved reference garments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// A listing’s flat measurements, compared with your saved reference garments.
BuyerAPI.getBuyerListingFit(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingFitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingGroupBuy**
```swift
    open class func getBuyerListingGroupBuy(slug: String, completion: @escaping (_ data: GetBuyerListingGroupBuyResponse?, _ error: Error?) -> Void)
```

The group buy open on this listing, if any.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The group buy open on this listing, if any.
BuyerAPI.getBuyerListingGroupBuy(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingGroupBuyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingImpact**
```swift
    open class func getBuyerListingImpact(slug: String, completion: @escaping (_ data: GetBuyerListingImpactResponse?, _ error: Error?) -> Void)
```

The sourced footprint of making a new equivalent; null when no published figure applies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The sourced footprint of making a new equivalent; null when no published figure applies.
BuyerAPI.getBuyerListingImpact(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingImpactResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingResaleValue**
```swift
    open class func getBuyerListingResaleValue(slug: String, completion: @escaping (_ data: GetBuyerListingResaleValueResponse?, _ error: Error?) -> Void)
```

What the same brand and category resold for on Crossly, and the buyback offer when enabled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// What the same brand and category resold for on Crossly, and the buyback offer when enabled.
BuyerAPI.getBuyerListingResaleValue(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingResaleValueResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingSubscribeOffer**
```swift
    open class func getBuyerListingSubscribeOffer(slug: String, completion: @escaping (_ data: GetBuyerListingSubscribeOfferResponse?, _ error: Error?) -> Void)
```

The subscribe & save discount and intervals on a listing; null when the seller has none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The subscribe & save discount and intervals on a listing; null when the seller has none.
BuyerAPI.getBuyerListingSubscribeOffer(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingSubscribeOfferResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingTryOn**
```swift
    open class func getBuyerListingTryOn(slug: String, completion: @escaping (_ data: GetBuyerListingTryOnResponse?, _ error: Error?) -> Void)
```

Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Whether an AI try-on is offered for this listing (a wearable with a photo) and whether the image model is configured.
BuyerAPI.getBuyerListingTryOn(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerListingTryOnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerLiveStreamAuction**
```swift
    open class func getBuyerLiveStreamAuction(id: String, completion: @escaping (_ data: GetBuyerLiveStreamAuctionResponse?, _ error: Error?) -> Void)
```

The auction running on a live stream right now, if any. Bid on it by its `slug` at POST /v1/buyer/auctions/:slug/bids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// The auction running on a live stream right now, if any. Bid on it by its `slug` at POST /v1/buyer/auctions/:slug/bids.
BuyerAPI.getBuyerLiveStreamAuction(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerLiveStreamAuctionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerMarketPurchaseOption**
```swift
    open class func getBuyerMarketPurchaseOption(completion: @escaping (_ data: GetBuyerMarketPurchaseOptionResponse?, _ error: Error?) -> Void)
```

Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Before you bid or buy: whether the lowest ask is vault stock (keep it vaulted, or pay fastShipCents to rush it), and the grading runs a raw card can go straight to (pass gradeWith on the bid).
BuyerAPI.getBuyerMarketPurchaseOption() { (response, error) in
    guard error == nil else {
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

**GetBuyerMarketPurchaseOptionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerOrderEligibility**
```swift
    open class func getBuyerOrderEligibility(id: UUID, completion: @escaping (_ data: GetBuyerOrderEligibilityResponse?, _ error: Error?) -> Void)
```

What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.

`inr.eligible` says whether an item-not-received case can be opened; when it cannot, `inr.reason` says why and `inr.opensAt` when it will. The same rules the order page and the action routes enforce.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.

// What you can do with one order right now — cancel, confirm receipt, report not received, leave feedback.
BuyerAPI.getBuyerOrderEligibility(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 

### Return type

**GetBuyerOrderEligibilityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerOrderExport**
```swift
    open class func getBuyerOrderExport(from: String? = nil, to: String? = nil, completion: @escaping (_ data: GetBuyerOrderExportResponse?, _ error: Error?) -> Void)
```

Your order history as CSV text (up to 5,000 orders).

The same CSV the shop downloads, returned as a string in `data.csv` so a program or agent can read it without a file download. Money columns are dollars, as a spreadsheet expects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let from = "from_example" // String | First day to include, YYYY-MM-DD. (optional)
let to = "to_example" // String | Last day to include, YYYY-MM-DD (inclusive). (optional)

// Your order history as CSV text (up to 5,000 orders).
BuyerAPI.getBuyerOrderExport(from: from, to: to) { (response, error) in
    guard error == nil else {
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
 **from** | **String** | First day to include, YYYY-MM-DD. | [optional] 
 **to** | **String** | Last day to include, YYYY-MM-DD (inclusive). | [optional] 

### Return type

**GetBuyerOrderExportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerOrderPriceProtection**
```swift
    open class func getBuyerOrderPriceProtection(id: String, completion: @escaping (_ data: GetBuyerOrderPriceProtectionResponse?, _ error: Error?) -> Void)
```

Price protection on one order: if the item gets cheaper before `until`, the difference is credited to your Bucks automatically. `creditedCents` is what it has paid so far.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Price protection on one order: if the item gets cheaper before `until`, the difference is credited to your Bucks automatically. `creditedCents` is what it has paid so far.
BuyerAPI.getBuyerOrderPriceProtection(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerOrderPriceProtectionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPack**
```swift
    open class func getBuyerPack(slug: String, completion: @escaping (_ data: GetBuyerPackResponse?, _ error: Error?) -> Void)
```

One pack: tiers and odds, items left, expected value, the chase items still in it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// One pack: tiers and odds, items left, expected value, the chase items still in it.
BuyerAPI.getBuyerPack(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerPackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPackFairness**
```swift
    open class func getBuyerPackFairness(completion: @escaping (_ data: GetBuyerPackFairnessResponse?, _ error: Error?) -> Void)
```

Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your provably-fair seeds: the active server-seed commitment (sha256), your client seed and nonce, and every retired seed in full so past openings can be re-run.
BuyerAPI.getBuyerPackFairness() { (response, error) in
    guard error == nil else {
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

**GetBuyerPackFairnessResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerParty**
```swift
    open class func getBuyerParty(slug: String, completion: @escaping (_ data: GetBuyerPartyResponse?, _ error: Error?) -> Void)
```

One shopping party.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// One shopping party.
BuyerAPI.getBuyerParty(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerPartyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPassport**
```swift
    open class func getBuyerPassport(code: String, completion: @escaping (_ data: GetBuyerPassportResponse?, _ error: Error?) -> Void)
```

What a product passport tag opens: the item, the verify verdict (registered, tag bound, tag matches with ?uid=, authenticated, graded, in its owner’s hands), how many owners and since when — never who or for how much.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// What a product passport tag opens: the item, the verify verdict (registered, tag bound, tag matches with ?uid=, authenticated, graded, in its owner’s hands), how many owners and since when — never who or for how much.
BuyerAPI.getBuyerPassport(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**GetBuyerPassportResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPreference**
```swift
    open class func getBuyerPreference(completion: @escaping (_ data: GetBuyerPreferenceResponse?, _ error: Error?) -> Void)
```

The shopping profile derived from that activity.

Derived, never declared — there is no preferences form anywhere. `matchRate` is the share of this person's searches Crossly could answer; a low number is an inventory problem, not a personalisation one, which is why it is here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The shopping profile derived from that activity.
BuyerAPI.getBuyerPreference() { (response, error) in
    guard error == nil else {
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

**GetBuyerPreferenceResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPriceGuide**
```swift
    open class func getBuyerPriceGuide(completion: @escaping (_ data: GetBuyerPriceGuideResponse?, _ error: Error?) -> Void)
```

What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What matching items actually sold for on Crossly: median, quartiles, by month, and recent sales. Needs q, brand or category.
BuyerAPI.getBuyerPriceGuide() { (response, error) in
    guard error == nil else {
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

**GetBuyerPriceGuideResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerProfile**
```swift
    open class func getBuyerProfile(completion: @escaping (_ data: GetBuyerProfileResponse?, _ error: Error?) -> Void)
```

Your Crossly shopping profile — name, email, saved address, Bucks balance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your Crossly shopping profile — name, email, saved address, Bucks balance.
BuyerAPI.getBuyerProfile() { (response, error) in
    guard error == nil else {
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

**GetBuyerProfileResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPurchaseDelivery**
```swift
    open class func getBuyerPurchaseDelivery(id: String, completion: @escaping (_ data: GetBuyerPurchaseDeliveryResponse?, _ error: Error?) -> Void)
```

Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Where a purchase is going when not to your door: the pickup point (with its release code) or its ship-together consolidation.
BuyerAPI.getBuyerPurchaseDelivery(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerPurchaseDeliveryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPurchaseLiveMoment**
```swift
    open class func getBuyerPurchaseLiveMoment(id: String, completion: @escaping (_ data: GetBuyerPurchaseLiveMomentResponse?, _ error: Error?) -> Void)
```

The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// The live show a purchase was bought in, with the offset (seconds) into its replay where it sold. null when it was not bought in a show.
BuyerAPI.getBuyerPurchaseLiveMoment(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerPurchaseLiveMomentResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPurchaseReturn**
```swift
    open class func getBuyerPurchaseReturn(id: String, completion: @escaping (_ data: GetBuyerPurchaseReturnResponse?, _ error: Error?) -> Void)
```

What a return would refund for each reason, by when, and any return already open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// What a return would refund for each reason, by when, and any return already open.
BuyerAPI.getBuyerPurchaseReturn(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerPurchaseReturnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerPurchaseStory**
```swift
    open class func getBuyerPurchaseStory(id: String, completion: @escaping (_ data: GetBuyerPurchaseStoryResponse?, _ error: Error?) -> Void)
```

Your owner story on a purchase, passed on to the next owner if you resell it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Your owner story on a purchase, passed on to the next owner if you resell it.
BuyerAPI.getBuyerPurchaseStory(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerPurchaseStoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerRegistry**
```swift
    open class func getBuyerRegistry(id: String, completion: @escaping (_ data: BuyerRegistryResponse?, _ error: Error?) -> Void)
```

One of your registries: items with how many are wanted and bought.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One of your registries: items with how many are wanted and bought.
BuyerAPI.getBuyerRegistry(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerRegistryByToken**
```swift
    open class func getBuyerRegistryByToken(token: String, completion: @escaping (_ data: BuyerRegistryResponse?, _ error: Error?) -> Void)
```

A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let token = "token_example" // String | 

// A registry as a guest sees it: items, how many are still wanted, and whether it can ship. Never the address.
BuyerAPI.getBuyerRegistryByToken(token: token) { (response, error) in
    guard error == nil else {
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
 **token** | **String** |  | 

### Return type

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerRental**
```swift
    open class func getBuyerRental(id: String, completion: @escaping (_ data: GetBuyerRentalResponse?, _ error: Error?) -> Void)
```

One of your rentals: timeline, payments, the return label, extension and buy-out terms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One of your rentals: timeline, payments, the return label, extension and buy-out terms.
BuyerAPI.getBuyerRental(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerRentalResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerRentalEligibility**
```swift
    open class func getBuyerRentalEligibility(completion: @escaping (_ data: GetBuyerRentalEligibilityResponse?, _ error: Error?) -> Void)
```

Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Can you rent right now: ID-verified (a photo ID and a matching selfie, once), the verified name rentals ship to, and your standing (one rental at a time until your first comes back; none after one that never did).
BuyerAPI.getBuyerRentalEligibility() { (response, error) in
    guard error == nil else {
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

**GetBuyerRentalEligibilityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerSellerClub**
```swift
    open class func getBuyerSellerClub(sellerUserId: String, completion: @escaping (_ data: GetBuyerSellerClubResponse?, _ error: Error?) -> Void)
```

A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// A seller’s loyalty club: its tiers (spend threshold, discount, perks) and your standing. null when the seller has none.
BuyerAPI.getBuyerSellerClub(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**GetBuyerSellerClubResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerSellerLoyalty**
```swift
    open class func getBuyerSellerLoyalty(sellerUserId: String, completion: @escaping (_ data: GetBuyerSellerLoyaltyResponse?, _ error: Error?) -> Void)
```

A seller’s loyalty club with its typed perks per tier, its join mode (automatic, opt-in, invite-only) and your standing. null when they run none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let sellerUserId = "sellerUserId_example" // String | 

// A seller’s loyalty club with its typed perks per tier, its join mode (automatic, opt-in, invite-only) and your standing. null when they run none.
BuyerAPI.getBuyerSellerLoyalty(sellerUserId: sellerUserId) { (response, error) in
    guard error == nil else {
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
 **sellerUserId** | **String** |  | 

### Return type

**GetBuyerSellerLoyaltyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerSellerTrust**
```swift
    open class func getBuyerSellerTrust(username: String, completion: @escaping (_ data: GetBuyerSellerTrustResponse?, _ error: Error?) -> Void)
```

Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let username = "username_example" // String | 

// Seller at a glance: member since, completed sales, independent rating, typical handling time, dispute rate, trust tier, badges — and the plain sentences the profile shows.
BuyerAPI.getBuyerSellerTrust(username: username) { (response, error) in
    guard error == nil else {
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
 **username** | **String** |  | 

### Return type

**GetBuyerSellerTrustResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerTogether**
```swift
    open class func getBuyerTogether(code: String, completion: @escaping (_ data: GetBuyerTogetherResponse?, _ error: Error?) -> Void)
```

A shop-together room: members, the board with votes, and chat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let code = "code_example" // String | 

// A shop-together room: members, the board with votes, and chat.
BuyerAPI.getBuyerTogether(code: code) { (response, error) in
    guard error == nil else {
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
 **code** | **String** |  | 

### Return type

**GetBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketHistory**
```swift
    open class func getBuyerVaultMarketHistory(completion: @escaping (_ data: GetBuyerVaultMarketHistoryResponse?, _ error: Error?) -> Void)
```

Your Vault Markets value by day at the marks (oldest first, today live) over `days` (default 90), and today’s change against yesterday’s close.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your Vault Markets value by day at the marks (oldest first, today live) over `days` (default 90), and today’s change against yesterday’s close.
BuyerAPI.getBuyerVaultMarketHistory() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketHistoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketIndex**
```swift
    open class func getBuyerVaultMarketIndex(slug: String, completion: @escaping (_ data: GetBuyerVaultMarketIndexResponse?, _ error: Error?) -> Void)
```

One index with its published daily closes (oldest first, `days` default 365) and its level now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// One index with its published daily closes (oldest first, `days` default 365) and its level now.
BuyerAPI.getBuyerVaultMarketIndex(slug: slug) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketIndexResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketInstantExit**
```swift
    open class func getBuyerVaultMarketInstantExit(id: String, completion: @escaping (_ data: GetBuyerVaultMarketInstantExitResponse?, _ error: Error?) -> Void)
```

The Instant Exit quote for one vault unit you hold, and whether it can be sold now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// The Instant Exit quote for one vault unit you hold, and whether it can be sold now.
BuyerAPI.getBuyerVaultMarketInstantExit(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketInstantExitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketOptionAnalytic**
```swift
    open class func getBuyerVaultMarketOptionAnalytic(underlying: String, completion: @escaping (_ data: GetBuyerVaultMarketOptionAnalyticResponse?, _ error: Error?) -> Void)
```

Options analytics on an underlying: vol surface and smile, IV rank and percentile, open interest and volume by strike and expiry, put/call ratios, expected move and historical vol. Derived, display only. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let underlying = "underlying_example" // String | 

// Options analytics on an underlying: vol surface and smile, IV rank and percentile, open interest and volume by strike and expiry, put/call ratios, expected move and historical vol. Derived, display only. Read only.
BuyerAPI.getBuyerVaultMarketOptionAnalytic(underlying: underlying) { (response, error) in
    guard error == nil else {
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
 **underlying** | **String** |  | 

### Return type

**GetBuyerVaultMarketOptionAnalyticResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketOptionChain**
```swift
    open class func getBuyerVaultMarketOptionChain(underlying: String, completion: @escaping (_ data: GetBuyerVaultMarketOptionChainResponse?, _ error: Error?) -> Void)
```

The option chain for an underlying (index slug or book key): expiries, and for one expiry each strike’s call and put with bid / ask, last, open interest, theoretical price, implied vol (display only) and Greeks. Prices are cents per contract.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let underlying = "underlying_example" // String | 

// The option chain for an underlying (index slug or book key): expiries, and for one expiry each strike’s call and put with bid / ask, last, open interest, theoretical price, implied vol (display only) and Greeks. Prices are cents per contract.
BuyerAPI.getBuyerVaultMarketOptionChain(underlying: underlying) { (response, error) in
    guard error == nil else {
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
 **underlying** | **String** |  | 

### Return type

**GetBuyerVaultMarketOptionChainResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketOptionIv**
```swift
    open class func getBuyerVaultMarketOptionIv(underlying: String, completion: @escaping (_ data: GetBuyerVaultMarketOptionIvResponse?, _ error: Error?) -> Void)
```

The at-the-money implied vol on an underlying’s nearest expiry, for display: derived from the options book, quality C, never a mark.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let underlying = "underlying_example" // String | 

// The at-the-money implied vol on an underlying’s nearest expiry, for display: derived from the options book, quality C, never a mark.
BuyerAPI.getBuyerVaultMarketOptionIv(underlying: underlying) { (response, error) in
    guard error == nil else {
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
 **underlying** | **String** |  | 

### Return type

**GetBuyerVaultMarketOptionIvResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketOptionPosition**
```swift
    open class func getBuyerVaultMarketOptionPosition(completion: @escaping (_ data: GetBuyerVaultMarketOptionPositionResponse?, _ error: Error?) -> Void)
```

Your fractional options positions with their marks, P&L and Greeks (open by default; `status` all for closed and settled too). Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your fractional options positions with their marks, P&L and Greeks (open by default; `status` all for closed and settled too). Read only.
BuyerAPI.getBuyerVaultMarketOptionPosition() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketOptionPositionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketOptionRisk**
```swift
    open class func getBuyerVaultMarketOptionRisk(completion: @escaping (_ data: GetBuyerVaultMarketOptionRiskResponse?, _ error: Error?) -> Void)
```

Your options portfolio Greeks, a scenario's P&L (`priceShift`, `volShift`, `daysForward`) and the beta-weighted delta against an index. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your options portfolio Greeks, a scenario's P&L (`priceShift`, `volShift`, `daysForward`) and the beta-weighted delta against an index. Read only.
BuyerAPI.getBuyerVaultMarketOptionRisk() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketOptionRiskResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketPredictionBoard**
```swift
    open class func getBuyerVaultMarketPredictionBoard(completion: @escaping (_ data: GetBuyerVaultMarketPredictionBoardResponse?, _ error: Error?) -> Void)
```

The busiest open prediction markets and their odds (the Trading Floor board). Anonymous.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The busiest open prediction markets and their odds (the Trading Floor board). Anonymous.
BuyerAPI.getBuyerVaultMarketPredictionBoard() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketPredictionBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketPredictionEvent**
```swift
    open class func getBuyerVaultMarketPredictionEvent(id: String, completion: @escaping (_ data: GetBuyerVaultMarketPredictionEventResponse?, _ error: Error?) -> Void)
```

One expiry’s markets with your holdings in each and their real worst and best case across them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One expiry’s markets with your holdings in each and their real worst and best case across them.
BuyerAPI.getBuyerVaultMarketPredictionEvent(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketPredictionEventResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketPredictionLeaderboard**
```swift
    open class func getBuyerVaultMarketPredictionLeaderboard(completion: @escaping (_ data: GetBuyerVaultMarketPredictionLeaderboardResponse?, _ error: Error?) -> Void)
```

Opt-in forecaster leaderboards (`period` week | month | all; `metric` pnl | accuracy | brier; `venue` live | paper).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Opt-in forecaster leaderboards (`period` week | month | all; `metric` pnl | accuracy | brier; `venue` live | paper).
BuyerAPI.getBuyerVaultMarketPredictionLeaderboard() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketPredictionLeaderboardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketPredictionMarket**
```swift
    open class func getBuyerVaultMarketPredictionMarket(id: String, completion: @escaping (_ data: GetBuyerVaultMarketPredictionMarketResponse?, _ error: Error?) -> Void)
```

One prediction market: terms, the Yes ladder (live and practice), recent trades, settlement history and the series rules with their hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One prediction market: terms, the Yes ladder (live and practice), recent trades, settlement history and the series rules with their hash.
BuyerAPI.getBuyerVaultMarketPredictionMarket(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketPredictionMarketResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketPredictionMarketHistory**
```swift
    open class func getBuyerVaultMarketPredictionMarketHistory(id: String, completion: @escaping (_ data: GetBuyerVaultMarketPredictionMarketHistoryResponse?, _ error: Error?) -> Void)
```

A prediction market’s probability over time (display only, never a mark), candles on the Yes price, volume and open interest (`range` 1d, 1w, 1m, all; `venue` live or paper).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// A prediction market’s probability over time (display only, never a mark), candles on the Yes price, volume and open interest (`range` 1d, 1w, 1m, all; `venue` live or paper).
BuyerAPI.getBuyerVaultMarketPredictionMarketHistory(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketPredictionMarketHistoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketShare**
```swift
    open class func getBuyerVaultMarketShare(completion: @escaping (_ data: GetBuyerVaultMarketShareResponse?, _ error: Error?) -> Void)
```

Your Vault Shares: shares and percent of each item, cost, implied value at the last share price (display only, never a mark), subscriptions and payouts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your Vault Shares: shares and percent of each item, cost, implied value at the last share price (display only, never a mark), subscriptions and payouts.
BuyerAPI.getBuyerVaultMarketShare() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketShareResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketShareBasket**
```swift
    open class func getBuyerVaultMarketShareBasket(id: String, completion: @escaping (_ data: GetBuyerVaultMarketShareBasketResponse?, _ error: Error?) -> Void)
```

One theme basket: its series, weights and prices, and your holdings against them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One theme basket: its series, weights and prices, and your holdings against them.
BuyerAPI.getBuyerVaultMarketShareBasket(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketShareBasketResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketShareSery**
```swift
    open class func getBuyerVaultMarketShareSery(id: String, completion: @escaping (_ data: GetBuyerVaultMarketShareSeryResponse?, _ error: Error?) -> Void)
```

One Vault Shares series: the offering, the share book, the latest fills, holders as percentages (nobody named) and buyouts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One Vault Shares series: the offering, the share book, the latest fills, holders as percentages (nobody named) and buyouts.
BuyerAPI.getBuyerVaultMarketShareSery(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketShareSeryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketShareSeryHistory**
```swift
    open class func getBuyerVaultMarketShareSeryHistory(id: String, completion: @escaping (_ data: GetBuyerVaultMarketShareSeryHistoryResponse?, _ error: Error?) -> Void)
```

A Vault Shares series’ full price history (candles), the offering price and the appraisal history. Display only, never a mark.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// A Vault Shares series’ full price history (candles), the offering price and the appraisal history. Display only, never a mark.
BuyerAPI.getBuyerVaultMarketShareSeryHistory(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketShareSeryHistoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketShareSeryPerk**
```swift
    open class func getBuyerVaultMarketShareSeryPerk(id: String, completion: @escaping (_ data: GetBuyerVaultMarketShareSeryPerkResponse?, _ error: Error?) -> Void)
```

Your holder perks on a series: badge, visit links, viewing days and your bookings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Your holder perks on a series: badge, visit links, viewing days and your bookings.
BuyerAPI.getBuyerVaultMarketShareSeryPerk(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketShareSeryPerkResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerVaultMarketWorth**
```swift
    open class func getBuyerVaultMarketWorth(completion: @escaping (_ data: GetBuyerVaultMarketWorthResponse?, _ error: Error?) -> Void)
```

What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What your vault is worth now: value at the market prices (marks come only from trades) split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
BuyerAPI.getBuyerVaultMarketWorth() { (response, error) in
    guard error == nil else {
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

**GetBuyerVaultMarketWorthResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleCart**
```swift
    open class func getBuyerWholesaleCart(completion: @escaping (_ data: GetBuyerWholesaleCartResponse?, _ error: Error?) -> Void)
```

Your cart grouped per seller: trade terms, the order-minimum progress, every rule the cart breaks (the messages checkout would refuse with), PO reference, quote-locked lines, and the checkout methods, deposit and freight threshold for each group.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your cart grouped per seller: trade terms, the order-minimum progress, every rule the cart breaks (the messages checkout would refuse with), PO reference, quote-locked lines, and the checkout methods, deposit and freight threshold for each group.
BuyerAPI.getBuyerWholesaleCart() { (response, error) in
    guard error == nil else {
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

**GetBuyerWholesaleCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleCatalogApply**
```swift
    open class func getBuyerWholesaleCatalogApply(storeSlug: String, catalogSlug: String, completion: @escaping (_ data: GetBuyerWholesaleCatalogApplyResponse?, _ error: Error?) -> Void)
```

The application form for a store's wholesale catalog: the seller's requirements (resale certificate and accepted states, tax id, their custom questions) and your business info pre-filled. applicable=false for a catalog you cannot apply to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let storeSlug = "storeSlug_example" // String | 
let catalogSlug = "catalogSlug_example" // String | 

// The application form for a store's wholesale catalog: the seller's requirements (resale certificate and accepted states, tax id, their custom questions) and your business info pre-filled. applicable=false for a catalog you cannot apply to.
BuyerAPI.getBuyerWholesaleCatalogApply(storeSlug: storeSlug, catalogSlug: catalogSlug) { (response, error) in
    guard error == nil else {
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
 **storeSlug** | **String** |  | 
 **catalogSlug** | **String** |  | 

### Return type

**GetBuyerWholesaleCatalogApplyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleDrop**
```swift
    open class func getBuyerWholesaleDrop(id: String, completion: @escaping (_ data: GetBuyerWholesaleDropResponse?, _ error: Error?) -> Void)
```

One trade drop open to you: its listings once live (add one to your cart to reserve or buy it), and your reservations in it. 404 for a drop not open to you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One trade drop open to you: its listings once live (add one to your cart to reserve or buy it), and your reservations in it. 404 for a drop not open to you.
BuyerAPI.getBuyerWholesaleDrop(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerWholesaleDropResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleInvoicePayQuote**
```swift
    open class func getBuyerWholesaleInvoicePayQuote(id: String, completion: @escaping (_ data: GetBuyerWholesaleInvoicePayQuoteResponse?, _ error: Error?) -> Void)
```

What paying an on-account invoice costs now: balance due, the early-pay discount if still open, the minimum part payment and the methods (card, ach).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// What paying an on-account invoice costs now: balance due, the early-pay discount if still open, the minimum part payment and the methods (card, ach).
BuyerAPI.getBuyerWholesaleInvoicePayQuote(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerWholesaleInvoicePayQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleOrderSheet**
```swift
    open class func getBuyerWholesaleOrderSheet(id: String, completion: @escaping (_ data: BuyerWholesaleOrderSheetResponse?, _ error: Error?) -> Void)
```

One order sheet priced TODAY at its quantities, with stock, trade terms and flags (unavailable, out_of_stock, short_stock, price_hidden, needs_option).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One order sheet priced TODAY at its quantities, with stock, trade terms and flags (unavailable, out_of_stock, short_stock, price_hidden, needs_option).
BuyerAPI.getBuyerWholesaleOrderSheet(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleOrderSheetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleQuote**
```swift
    open class func getBuyerWholesaleQuote(id: String, completion: @escaping (_ data: BuyerWholesaleQuoteResponse?, _ error: Error?) -> Void)
```

One of your quotes with its items, the seller's prices and expiry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// One of your quotes with its items, the seller's prices and expiry.
BuyerAPI.getBuyerWholesaleQuote(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleQuoteResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerWholesaleReorder**
```swift
    open class func getBuyerWholesaleReorder(id: String, completion: @escaping (_ data: GetBuyerWholesaleReorderResponse?, _ error: Error?) -> Void)
```

Buy again: a past wholesale order (purchase or order id) as order-sheet lines at the same quantities, priced today, out-of-stock flagged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Buy again: a past wholesale order (purchase or order id) as order-sheet lines at the same quantities, priced today, out-of-stock flagged.
BuyerAPI.getBuyerWholesaleReorder(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerWholesaleReorderResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerActivity**
```swift
    open class func listBuyerActivity(completion: @escaping (_ data: ListBuyerActivityResponse?, _ error: Error?) -> Void)
```

What this buyer has compared lately.

Newest first, and only as far back as the retention window — the link between a person and a comparison is dropped after 180 days, so this thins out rather than growing forever.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What this buyer has compared lately.
BuyerAPI.listBuyerActivity() { (response, error) in
    guard error == nil else {
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

**ListBuyerActivityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerAuctionBids**
```swift
    open class func listBuyerAuctionBids(slug: String, completion: @escaping (_ data: ListBuyerAuctionBidsResponse?, _ error: Error?) -> Void)
```

An auction’s bid history, highest first, bidders anonymised.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The auction listing slug.

// An auction’s bid history, highest first, bidders anonymised.
BuyerAPI.listBuyerAuctionBids(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The auction listing slug. | 

### Return type

**ListBuyerAuctionBidsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerAuctions**
```swift
    open class func listBuyerAuctions(tab: Tab_listBuyerAuctions? = nil, completion: @escaping (_ data: ListBuyerAuctionsResponse?, _ error: Error?) -> Void)
```

Auctions you have bid in — bidding, won or lost (last 100).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let tab = "tab_example" // String | bidding = still running; won = you are the winner; lost = ended, someone else won. (optional) (default to .bidding)

// Auctions you have bid in — bidding, won or lost (last 100).
BuyerAPI.listBuyerAuctions(tab: tab) { (response, error) in
    guard error == nil else {
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
 **tab** | **String** | bidding &#x3D; still running; won &#x3D; you are the winner; lost &#x3D; ended, someone else won. | [optional] [default to .bidding]

### Return type

**ListBuyerAuctionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerBoards**
```swift
    open class func listBuyerBoards(completion: @escaping (_ data: ListBuyerBoardsResponse?, _ error: Error?) -> Void)
```

Your outfit boards: collages of listings, each with a share link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your outfit boards: collages of listings, each with a share link.
BuyerAPI.listBuyerBoards() { (response, error) in
    guard error == nil else {
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

**ListBuyerBoardsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerBreaks**
```swift
    open class func listBuyerBreaks(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Card-break spots you hold or bought, with what each pulled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Card-break spots you hold or bought, with what each pulled.
BuyerAPI.listBuyerBreaks() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerBuybacks**
```swift
    open class func listBuyerBuybacks(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your buyback guarantees and requests.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your buyback guarantees and requests.
BuyerAPI.listBuyerBuybacks() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCart**
```swift
    open class func listBuyerCart(completion: @escaping (_ data: ListBuyerCartResponse?, _ error: Error?) -> Void)
```

What is in your Crossly cart.

Line items with the price captured when each was added. This is NOT a quote — shipping, tax and any discounts are computed at checkout against a delivery address, and the sum of these lines is not what you will be charged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What is in your Crossly cart.
BuyerAPI.listBuyerCart() { (response, error) in
    guard error == nil else {
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

**ListBuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCartSaved**
```swift
    open class func listBuyerCartSaved(completion: @escaping (_ data: BuyerCartResponse?, _ error: Error?) -> Void)
```

Items you saved for later out of your cart (last 200).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Items you saved for later out of your cart (last 200).
BuyerAPI.listBuyerCartSaved() { (response, error) in
    guard error == nil else {
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

**BuyerCartResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCases**
```swift
    open class func listBuyerCases(status: Status_listBuyerCases? = nil, completion: @escaping (_ data: ListBuyerCasesResponse?, _ error: Error?) -> Void)
```

Resolution center — every case you opened (returns, not received, problems).

`yourTurn: true` means the case is waiting on you. `meta.counts` covers every case, not just this status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let status = "status_example" // String | open = still being worked; closed = resolved or withdrawn; all = both. (optional) (default to ._open)

// Resolution center — every case you opened (returns, not received, problems).
BuyerAPI.listBuyerCases(status: status) { (response, error) in
    guard error == nil else {
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
 **status** | **String** | open &#x3D; still being worked; closed &#x3D; resolved or withdrawn; all &#x3D; both. | [optional] [default to ._open]

### Return type

**ListBuyerCasesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCashback**
```swift
    open class func listBuyerCashback(status: Status_listBuyerCashback? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListBuyerCashbackResponse?, _ error: Error?) -> Void)
```

Your Scout cashback — pending, confirmed, paid.

Newest first. `pending` means an order was reported and the retailer's return window has not closed; nothing is paid until it does. `expired` means a click was never reported as converting, which is the ordinary outcome for most clicks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let status = "status_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)

// Your Scout cashback — pending, confirmed, paid.
BuyerAPI.listBuyerCashback(status: status, page: page, limit: limit) { (response, error) in
    guard error == nil else {
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
 **status** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

**ListBuyerCashbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCatalogListingVideos**
```swift
    open class func listBuyerCatalogListingVideos(slug: String, completion: @escaping (_ data: ListBuyerCatalogListingVideosResponse?, _ error: Error?) -> Void)
```

Videos the seller recorded for this item on request, newest first, with the question each one answers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Videos the seller recorded for this item on request, newest first, with the question each one answers.
BuyerAPI.listBuyerCatalogListingVideos(slug: slug) { (response, error) in
    guard error == nil else {
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

**ListBuyerCatalogListingVideosResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerClubs**
```swift
    open class func listBuyerClubs(completion: @escaping (_ data: ListBuyerClubsResponse?, _ error: Error?) -> Void)
```

Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Sellers’ loyalty clubs you belong to: your spend with each, your tier and its discount, and the next tier.
BuyerAPI.listBuyerClubs() { (response, error) in
    guard error == nil else {
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

**ListBuyerClubsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCollectionSets**
```swift
    open class func listBuyerCollectionSets(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Sets you are collecting — a catalogue brand + model you own at least two pieces of — with owned / total and percent complete, most complete first; and whether you show on set leaderboards.
BuyerAPI.listBuyerCollectionSets() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCompanyApprovals**
```swift
    open class func listBuyerCompanyApprovals(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Spend approval requests (owners and accounts payable see all; others their own). ?status=pending|approved|declined|used|expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Spend approval requests (owners and accounts payable see all; others their own). ?status=pending|approved|declined|used|expired.
BuyerAPI.listBuyerCompanyApprovals() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerConsolidations**
```swift
    open class func listBuyerConsolidations(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your ship-together orders: parcels at the hub, and the one box out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your ship-together orders: parcels at the hub, and the one box out.
BuyerAPI.listBuyerConsolidations() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerConversationGuests**
```swift
    open class func listBuyerConversationGuests(id: String, completion: @escaping (_ data: ListBuyerWishlistMembersResponse?, _ error: Error?) -> Void)
```

Guests in a chat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Guests in a chat.
BuyerAPI.listBuyerConversationGuests(id: id) { (response, error) in
    guard error == nil else {
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

**ListBuyerWishlistMembersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCreationReviewable**
```swift
    open class func listBuyerCreationReviewable(purchaseRef: String? = nil, completion: @escaping (_ data: ListBuyerCreationReviewableResponse?, _ error: Error?) -> Void)
```

Creations you bought (decor, wearables, interactive objects, cards from packs) and your review of each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let purchaseRef = "purchaseRef_example" // String | Only the creation this purchase bought. (optional)

// Creations you bought (decor, wearables, interactive objects, cards from packs) and your review of each.
BuyerAPI.listBuyerCreationReviewable(purchaseRef: purchaseRef) { (response, error) in
    guard error == nil else {
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
 **purchaseRef** | **String** | Only the creation this purchase bought. | [optional] 

### Return type

**ListBuyerCreationReviewableResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerEvents**
```swift
    open class func listBuyerEvents(completion: @escaping (_ data: ListBuyerEventsResponse?, _ error: Error?) -> Void)
```

Upcoming and live seller events across Crossly, soonest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Upcoming and live seller events across Crossly, soonest first.
BuyerAPI.listBuyerEvents() { (response, error) in
    guard error == nil else {
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

**ListBuyerEventsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerFeedback**
```swift
    open class func listBuyerFeedback(completion: @escaping (_ data: ListBuyerFeedbackResponse?, _ error: Error?) -> Void)
```

Feedback you have left sellers, newest first — with the ids you revise by.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Feedback you have left sellers, newest first — with the ids you revise by.
BuyerAPI.listBuyerFeedback() { (response, error) in
    guard error == nil else {
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

**ListBuyerFeedbackResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerFeedbackPending**
```swift
    open class func listBuyerFeedbackPending(completion: @escaping (_ data: ListBuyerFeedbackPendingResponse?, _ error: Error?) -> Void)
```

Orders from the last 60 days that are on their way or arrived and still need your feedback.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Orders from the last 60 days that are on their way or arrived and still need your feedback.
BuyerAPI.listBuyerFeedbackPending() { (response, error) in
    guard error == nil else {
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

**ListBuyerFeedbackPendingResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerFitRefs**
```swift
    open class func listBuyerFitRefs(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your saved reference garments for fit comparison.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your saved reference garments for fit comparison.
BuyerAPI.listBuyerFitRefs() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerFollowingSellers**
```swift
    open class func listBuyerFollowingSellers(completion: @escaping (_ data: ListBuyerFollowingSellersResponse?, _ error: Error?) -> Void)
```

Sellers you follow, with how many new listings each has since you last looked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Sellers you follow, with how many new listings each has since you last looked.
BuyerAPI.listBuyerFollowingSellers() { (response, error) in
    guard error == nil else {
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

**ListBuyerFollowingSellersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerGiftCardCredit**
```swift
    open class func listBuyerGiftCardCredit(completion: @escaping (_ data: ListBuyerGiftCardCreditResponse?, _ error: Error?) -> Void)
```

Gift card credit on your account, and when it expires.

One row per gift card you redeemed. `meta.giftCreditCents` is the unspent, unexpired gift credit in your Crossly Bucks balance; `meta.nextExpiresAt` is the soonest date any of it lapses. Spending at checkout uses gift credit first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Gift card credit on your account, and when it expires.
BuyerAPI.listBuyerGiftCardCredit() { (response, error) in
    guard error == nil else {
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

**ListBuyerGiftCardCreditResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerGiftCards**
```swift
    open class func listBuyerGiftCards(completion: @escaping (_ data: ListBuyerGiftCardsResponse?, _ error: Error?) -> Void)
```

Gift cards you bought, newest first.

Status, recipient and delivery for each card you paid for. The code is masked unless you sent the card to your own email address. Abandoned (unpaid) checkouts are omitted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Gift cards you bought, newest first.
BuyerAPI.listBuyerGiftCards() { (response, error) in
    guard error == nil else {
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

**ListBuyerGiftCardsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerGiftFinder**
```swift
    open class func listBuyerGiftFinder(completion: @escaping (_ data: ListBuyerGiftFinderResponse?, _ error: Error?) -> Void)
```

Live listings for a recipient, interest and budget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Live listings for a recipient, interest and budget.
BuyerAPI.listBuyerGiftFinder() { (response, error) in
    guard error == nil else {
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

**ListBuyerGiftFinderResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerGiftSent**
```swift
    open class func listBuyerGiftSent(completion: @escaping (_ data: ListBuyerGiftSentResponse?, _ error: Error?) -> Void)
```

Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with `gift` on checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Items you sent as gifts: whether the teaser went out, whether it arrived and was opened, and any thank-you. Send one with `gift` on checkout.
BuyerAPI.listBuyerGiftSent() { (response, error) in
    guard error == nil else {
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

**ListBuyerGiftSentResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerHomeBuilders**
```swift
    open class func listBuyerHomeBuilders(completion: @escaping (_ data: ListBuyerHomeBuildersResponse?, _ error: Error?) -> Void)
```

Your co-builders: friends who may arrange your home with you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your co-builders: friends who may arrange your home with you.
BuyerAPI.listBuyerHomeBuilders() { (response, error) in
    guard error == nil else {
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

**ListBuyerHomeBuildersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerHomeBuilding**
```swift
    open class func listBuyerHomeBuilding(completion: @escaping (_ data: ListBuyerHomeBuildingResponse?, _ error: Error?) -> Void)
```

The homes you co-build, to visit and arrange.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The homes you co-build, to visit and arrange.
BuyerAPI.listBuyerHomeBuilding() { (response, error) in
    guard error == nil else {
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

**ListBuyerHomeBuildingResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerHotspots**
```swift
    open class func listBuyerHotspots(completion: @escaping (_ data: ListBuyerHotspotsResponse?, _ error: Error?) -> Void)
```

Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Shop-the-look tags on a story or lookbook photo: each tagged listing and where it sits on the image (x, y as fractions).
BuyerAPI.listBuyerHotspots() { (response, error) in
    guard error == nil else {
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

**ListBuyerHotspotsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerHunts**
```swift
    open class func listBuyerHunts(completion: @escaping (_ data: ListBuyerHuntsResponse?, _ error: Error?) -> Void)
```

Your buyer-agent hunts and what they did.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your buyer-agent hunts and what they did.
BuyerAPI.listBuyerHunts() { (response, error) in
    guard error == nil else {
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

**ListBuyerHuntsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerInstantOffers**
```swift
    open class func listBuyerInstantOffers(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your instant offers: live quotes, accepted ones awaiting a label, approved ones (with the prepaid label) and paid ones.
BuyerAPI.listBuyerInstantOffers() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerLayaways**
```swift
    open class func listBuyerLayaways(completion: @escaping (_ data: ListBuyerLayawaysResponse?, _ error: Error?) -> Void)
```

Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your layaways: price, paid so far, what is left, and the installment schedule. Put an item on layaway at checkout with layawayItemIds.
BuyerAPI.listBuyerLayaways() { (response, error) in
    guard error == nil else {
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

**ListBuyerLayawaysResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerListingQuickQuestions**
```swift
    open class func listBuyerListingQuickQuestions(slug: String, completion: @escaping (_ data: ListBuyerListingQuickQuestionsResponse?, _ error: Error?) -> Void)
```

One-tap questions this listing supports; send one as `quick` on a message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// One-tap questions this listing supports; send one as `quick` on a message.
BuyerAPI.listBuyerListingQuickQuestions(slug: slug) { (response, error) in
    guard error == nil else {
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

**ListBuyerListingQuickQuestionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerListingSellerReviews**
```swift
    open class func listBuyerListingSellerReviews(slug: String, completion: @escaping (_ data: ListBuyerListingSellerReviewsResponse?, _ error: Error?) -> Void)
```

The seller’s public reviews: summary, text, photos, replies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// The seller’s public reviews: summary, text, photos, replies.
BuyerAPI.listBuyerListingSellerReviews(slug: slug) { (response, error) in
    guard error == nil else {
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

**ListBuyerListingSellerReviewsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerLiveShipments**
```swift
    open class func listBuyerLiveShipments(completion: @escaping (_ data: ListBuyerLiveShipmentsResponse?, _ error: Error?) -> Void)
```

Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your one-box-per-show shipments: every order won in a show ships together, and postage is charged once (the rest refunded when it ships).
BuyerAPI.listBuyerLiveShipments() { (response, error) in
    guard error == nil else {
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

**ListBuyerLiveShipmentsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerLiveStreamLineup**
```swift
    open class func listBuyerLiveStreamLineup(id: String, completion: @escaping (_ data: ListBuyerLiveStreamLineupResponse?, _ error: Error?) -> Void)
```

What a live show will sell, in order: each item, its price, and whether it is still available.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// What a live show will sell, in order: each item, its price, and whether it is still available.
BuyerAPI.listBuyerLiveStreamLineup(id: id) { (response, error) in
    guard error == nil else {
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

**ListBuyerLiveStreamLineupResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerLoyalty**
```swift
    open class func listBuyerLoyalty(completion: @escaping (_ data: ListBuyerLoyaltyResponse?, _ error: Error?) -> Void)
```

Your loyalty clubs: the tier you hold, progress and how to reach the next tier, the typed perks you hold now, and your history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your loyalty clubs: the tier you hold, progress and how to reach the next tier, the typed perks you hold now, and your history.
BuyerAPI.listBuyerLoyalty() { (response, error) in
    guard error == nil else {
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

**ListBuyerLoyaltyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerMarketBids**
```swift
    open class func listBuyerMarketBids(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your resting market bids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your resting market bids.
BuyerAPI.listBuyerMarketBids() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerMarketWatches**
```swift
    open class func listBuyerMarketWatches(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Market variants you watch, with the price you are waiting for.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Market variants you watch, with the price you are waiting for.
BuyerAPI.listBuyerMarketWatches() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerOffers**
```swift
    open class func listBuyerOffers(awaitingBuyer: AwaitingBuyer_listBuyerOffers? = nil, completion: @escaping (_ data: ListBuyerOffersResponse?, _ error: Error?) -> Void)
```

Offers you have made, newest first (last 100).

`awaitingBuyer: true` is a seller counter waiting on you — answer it with POST /v1/buyer/offers/{id}/respond. `redeemable: true` is an accepted offer you can pay for on Crossly. Amounts are integer cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let awaitingBuyer = "awaitingBuyer_example" // String | true returns only seller counters waiting on you. (optional)

// Offers you have made, newest first (last 100).
BuyerAPI.listBuyerOffers(awaitingBuyer: awaitingBuyer) { (response, error) in
    guard error == nil else {
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
 **awaitingBuyer** | **String** | true returns only seller counters waiting on you. | [optional] 

### Return type

**ListBuyerOffersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerOrders**
```swift
    open class func listBuyerOrders(page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListBuyerOrdersResponse?, _ error: Error?) -> Void)
```

What you have bought on Crossly, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)

// What you have bought on Crossly, newest first.
BuyerAPI.listBuyerOrders(page: page, limit: limit) { (response, error) in
    guard error == nil else {
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

### Return type

**ListBuyerOrdersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerPackOpenings**
```swift
    open class func listBuyerPackOpenings(completion: @escaping (_ data: ListBuyerPackOpeningsResponse?, _ error: Error?) -> Void)
```

Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your pulls: what you got, its value, sell-back status, and the fairness proof for each (the server seed once rotated).
BuyerAPI.listBuyerPackOpenings() { (response, error) in
    guard error == nil else {
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

**ListBuyerPackOpeningsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerPacks**
```swift
    open class func listBuyerPacks(completion: @escaping (_ data: ListBuyerPacksResponse?, _ error: Error?) -> Void)
```

Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Packs you can open: price, every tier with its published odds, what is left in it and its value range, and the expected value of one opening.
BuyerAPI.listBuyerPacks() { (response, error) in
    guard error == nil else {
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

**ListBuyerPacksResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerParties**
```swift
    open class func listBuyerParties(completion: @escaping (_ data: ListBuyerPartiesResponse?, _ error: Error?) -> Void)
```

Themed shopping parties, live and upcoming.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Themed shopping parties, live and upcoming.
BuyerAPI.listBuyerParties() { (response, error) in
    guard error == nil else {
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

**ListBuyerPartiesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerPartyListings**
```swift
    open class func listBuyerPartyListings(slug: String, completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Listings shared to a party, featured first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Listings shared to a party, featured first.
BuyerAPI.listBuyerPartyListings(slug: slug) { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerPaymentMethods**
```swift
    open class func listBuyerPaymentMethods(completion: @escaping (_ data: ListBuyerPaymentMethodsResponse?, _ error: Error?) -> Void)
```

Your saved cards, the default first.

Brand, last 4, expiry and whether it is your default. The `id` is what checkout and auction bids take as `paymentMethodId`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your saved cards, the default first.
BuyerAPI.listBuyerPaymentMethods() { (response, error) in
    guard error == nil else {
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

**ListBuyerPaymentMethodsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerPickupPoints**
```swift
    open class func listBuyerPickupPoints(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as `pickupPoint` to POST /v1/buyer/checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Carrier pickup points (UPS Access Point / FedEx Hold at Location) near an address; pass one as `pickupPoint` to POST /v1/buyer/checkout.
BuyerAPI.listBuyerPickupPoints() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerProtectionPlans**
```swift
    open class func listBuyerProtectionPlans(completion: @escaping (_ data: ListBuyerProtectionPlansResponse?, _ error: Error?) -> Void)
```

Your protection plans (bought at checkout with `protection`): status, term, coverage, contract id, and any refund.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your protection plans (bought at checkout with `protection`): status, term, coverage, contract id, and any refund.
BuyerAPI.listBuyerProtectionPlans() { (response, error) in
    guard error == nil else {
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

**ListBuyerProtectionPlansResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerRegistries**
```swift
    open class func listBuyerRegistries(completion: @escaping (_ data: ListBuyerRegistriesResponse?, _ error: Error?) -> Void)
```

Your gift registries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your gift registries.
BuyerAPI.listBuyerRegistries() { (response, error) in
    guard error == nil else {
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

**ListBuyerRegistriesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerRegistryGifts**
```swift
    open class func listBuyerRegistryGifts(id: String, completion: @escaping (_ data: ListBuyerRegistryGiftsResponse?, _ error: Error?) -> Void)
```

Your thank-you list: who bought what off the registry, and whether you have thanked them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Your thank-you list: who bought what off the registry, and whether you have thanked them.
BuyerAPI.listBuyerRegistryGifts(id: id) { (response, error) in
    guard error == nil else {
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

**ListBuyerRegistryGiftsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerRegistrySearch**
```swift
    open class func listBuyerRegistrySearch(completion: @escaping (_ data: ListBuyerRegistrySearchResponse?, _ error: Error?) -> Void)
```

Find a registry by its name or the registrant’s name. Current and recent registries only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Find a registry by its name or the registrant’s name. Current and recent registries only.
BuyerAPI.listBuyerRegistrySearch() { (response, error) in
    guard error == nil else {
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

**ListBuyerRegistrySearchResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerRentals**
```swift
    open class func listBuyerRentals(completion: @escaping (_ data: ListBuyerRentalsResponse?, _ error: Error?) -> Void)
```

Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your rentals: dates, status (reserved, out, returned, claimed, closed, cancelled), the return label, and what happened to the deposit.
BuyerAPI.listBuyerRentals() { (response, error) in
    guard error == nil else {
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

**ListBuyerRentalsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerSizeMemoryPrompts**
```swift
    open class func listBuyerSizeMemoryPrompts(completion: @escaping (_ data: ListBuyerSizeMemoryPromptsResponse?, _ error: Error?) -> Void)
```

Delivered orders with a size that you haven’t said how they fit (the last 60 days).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Delivered orders with a size that you haven’t said how they fit (the last 60 days).
BuyerAPI.listBuyerSizeMemoryPrompts() { (response, error) in
    guard error == nil else {
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

**ListBuyerSizeMemoryPromptsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerSizeMemorySizes**
```swift
    open class func listBuyerSizeMemorySizes(completion: @escaping (_ data: ListBuyerSizeMemorySizesResponse?, _ error: Error?) -> Void)
```

The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The sizes learned from what you bought and kept, by kind of item (shoes, tops, bottoms, dresses, outerwear) and department.
BuyerAPI.listBuyerSizeMemorySizes() { (response, error) in
    guard error == nil else {
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

**ListBuyerSizeMemorySizesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerSplits**
```swift
    open class func listBuyerSplits(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Purchases you split, with each share’s status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Purchases you split, with each share’s status.
BuyerAPI.listBuyerSplits() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerStoreListings**
```swift
    open class func listBuyerStoreListings(slug: String, completion: @escaping (_ data: ListBuyerStoreListingsResponse?, _ error: Error?) -> Void)
```

A store's live listings, filtered by tag, category, text and program chips (f: on_sale, discount_eligible, code_eligible, group_buy_active, rentable, wholesale_available…; all must hold), sorted; each card carries its program badges.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// A store's live listings, filtered by tag, category, text and program chips (f: on_sale, discount_eligible, code_eligible, group_buy_active, rentable, wholesale_available…; all must hold), sorted; each card carries its program badges.
BuyerAPI.listBuyerStoreListings(slug: slug) { (response, error) in
    guard error == nil else {
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

**ListBuyerStoreListingsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerSubscriptions**
```swift
    open class func listBuyerSubscriptions(completion: @escaping (_ data: ListBuyerSubscriptionsResponse?, _ error: Error?) -> Void)
```

Your subscribe & save standing orders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your subscribe & save standing orders.
BuyerAPI.listBuyerSubscriptions() { (response, error) in
    guard error == nil else {
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

**ListBuyerSubscriptionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerTogether**
```swift
    open class func listBuyerTogether(completion: @escaping (_ data: ListBuyerTogetherResponse?, _ error: Error?) -> Void)
```

Shop-together rooms you are in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Shop-together rooms you are in.
BuyerAPI.listBuyerTogether() { (response, error) in
    guard error == nil else {
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

**ListBuyerTogetherResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerTotalRequests**
```swift
    open class func listBuyerTotalRequests(completion: @escaping (_ data: ListBuyerTotalRequestsResponse?, _ error: Error?) -> Void)
```

Your combined-shipping total requests, newest per seller.

A seller answers a request by quoting one shipping figure for every item of theirs in your cart. `matchesCart: false` means the cart changed since, so the quote will not apply at checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your combined-shipping total requests, newest per seller.
BuyerAPI.listBuyerTotalRequests() { (response, error) in
    guard error == nil else {
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

**ListBuyerTotalRequestsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerTryOns**
```swift
    open class func listBuyerTryOns(completion: @escaping (_ data: ListBuyerTryOnsResponse?, _ error: Error?) -> Void)
```

Your AI try-ons: the rendered images (labelled AI-generated wherever shown).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your AI try-ons: the rendered images (labelled AI-generated wherever shown).
BuyerAPI.listBuyerTryOns() { (response, error) in
    guard error == nil else {
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

**ListBuyerTryOnsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVault**
```swift
    open class func listBuyerVault(completion: @escaping (_ data: ListBuyerVaultResponse?, _ error: Error?) -> Void)
```

What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// What you own in the Crossly vault: stored (authenticated, on a shelf), listed for sale, or on its way home — with the price to ship one home.
BuyerAPI.listBuyerVault() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketHoldings**
```swift
    open class func listBuyerVaultMarketHoldings(completion: @escaping (_ data: ListBuyerVaultMarketHoldingsResponse?, _ error: Error?) -> Void)
```

Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&L and where it stands (stored, listed, lent, pledged, at the grader); `meta` carries the totals and the units you have out on loan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Each unit you hold in the vault at its market price, with the mark’s quality (A or B reliable, C indicative, none), cost, P&L and where it stands (stored, listed, lent, pledged, at the grader); `meta` carries the totals and the units you have out on loan.
BuyerAPI.listBuyerVaultMarketHoldings() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketHoldingsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketIndexes**
```swift
    open class func listBuyerVaultMarketIndexes(completion: @escaping (_ data: ListBuyerVaultMarketIndexesResponse?, _ error: Error?) -> Void)
```

Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Crossly indexes over vault book keys (category, brand, curated, composite, segment, and your own), each with its level now and change since the last daily close. Index levels are valued only from the book’s marks.
BuyerAPI.listBuyerVaultMarketIndexes() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketIndexesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketInstantExit**
```swift
    open class func listBuyerVaultMarketInstantExit(completion: @escaping (_ data: ListBuyerVaultMarketInstantExitResponse?, _ error: Error?) -> Void)
```

Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Instant Exit quotes for what you hold, one per book key: the best resting bid (yours left out), its share of the mark, the bid levels, units held and which are free to sell, and why a key cannot be sold instantly. A quote, not an order.
BuyerAPI.listBuyerVaultMarketInstantExit() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketInstantExitResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketOptionCombos**
```swift
    open class func listBuyerVaultMarketOptionCombos(completion: @escaping (_ data: ListBuyerVaultMarketOptionCombosResponse?, _ error: Error?) -> Void)
```

Your options strategies (working by default) with their legs, net price per unit and fills. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your options strategies (working by default) with their legs, net price per unit and fills. Read only.
BuyerAPI.listBuyerVaultMarketOptionCombos() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketOptionCombosResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketOptionNotices**
```swift
    open class func listBuyerVaultMarketOptionNotices(completion: @escaping (_ data: ListBuyerVaultMarketOptionNoticesResponse?, _ error: Error?) -> Void)
```

Your options notices: expiry warnings, auto-closes, exercises, assignments, expiries worthless and rolls. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your options notices: expiry warnings, auto-closes, exercises, assignments, expiries worthless and rolls. Read only.
BuyerAPI.listBuyerVaultMarketOptionNotices() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketOptionNoticesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketOptionSeries**
```swift
    open class func listBuyerVaultMarketOptionSeries(completion: @escaping (_ data: ListBuyerVaultMarketOptionSeriesResponse?, _ error: Error?) -> Void)
```

Fractional options series on Crossly prices (indexes, and tier A item keys with 90 days of reliable marks): underlying, status and eligibility. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Fractional options series on Crossly prices (indexes, and tier A item keys with 90 days of reliable marks): underlying, status and eligibility. Read only.
BuyerAPI.listBuyerVaultMarketOptionSeries() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketOptionSeriesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketOptionStrategies**
```swift
    open class func listBuyerVaultMarketOptionStrategies(completion: @escaping (_ data: ListBuyerVaultMarketOptionStrategiesResponse?, _ error: Error?) -> Void)
```

The options strategies the picker builds (vertical, calendar, diagonal, straddle, strangle, butterfly, iron condor, collar) and what each does. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The options strategies the picker builds (vertical, calendar, diagonal, straddle, strangle, butterfly, iron condor, collar) and what each does. Read only.
BuyerAPI.listBuyerVaultMarketOptionStrategies() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketOptionStrategiesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketPredictionComments**
```swift
    open class func listBuyerVaultMarketPredictionComments(completion: @escaping (_ data: ListBuyerVaultMarketPredictionCommentsResponse?, _ error: Error?) -> Void)
```

A prediction market’s (or series’) discussion thread. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// A prediction market’s (or series’) discussion thread. Read only.
BuyerAPI.listBuyerVaultMarketPredictionComments() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketPredictionCommentsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketPredictionMarkets**
```swift
    open class func listBuyerVaultMarketPredictionMarkets(completion: @escaping (_ data: ListBuyerVaultMarketPredictionMarketsResponse?, _ error: Error?) -> Void)
```

\"Will it hit?\" prediction markets on Crossly prices (filter by book key, index slug, kind, status, expiry or text): strike, expiry, best Yes bid and ask, last price and the probability (the market's own price, display only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// \"Will it hit?\" prediction markets on Crossly prices (filter by book key, index slug, kind, status, expiry or text): strike, expiry, best Yes bid and ask, last price and the probability (the market's own price, display only).
BuyerAPI.listBuyerVaultMarketPredictionMarkets() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketPredictionMarketsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketPredictionPositions**
```swift
    open class func listBuyerVaultMarketPredictionPositions(completion: @escaping (_ data: ListBuyerVaultMarketPredictionPositionsResponse?, _ error: Error?) -> Void)
```

Your prediction positions (practice and live): side, contracts, cost, value at the last price, payout or refund once settled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your prediction positions (practice and live): side, contracts, cost, value at the last price, payout or refund once settled.
BuyerAPI.listBuyerVaultMarketPredictionPositions() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketPredictionPositionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketShareAutoInvest**
```swift
    open class func listBuyerVaultMarketShareAutoInvest(completion: @escaping (_ data: ListBuyerVaultMarketShareAutoInvestResponse?, _ error: Error?) -> Void)
```

Your recurring Vault Shares auto-invest plans.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your recurring Vault Shares auto-invest plans.
BuyerAPI.listBuyerVaultMarketShareAutoInvest() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketShareAutoInvestResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketShareBaskets**
```swift
    open class func listBuyerVaultMarketShareBaskets(completion: @escaping (_ data: ListBuyerVaultMarketShareBasketsResponse?, _ error: Error?) -> Void)
```

Theme baskets: model portfolios of Vault Shares series you would own directly, never a fund.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Theme baskets: model portfolios of Vault Shares series you would own directly, never a fund.
BuyerAPI.listBuyerVaultMarketShareBaskets() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketShareBasketsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketShareDrops**
```swift
    open class func listBuyerVaultMarketShareDrops(completion: @escaping (_ data: ListBuyerVaultMarketShareDropsResponse?, _ error: Error?) -> Void)
```

Upcoming and open Vault Shares drops: phase, countdown, allocation (first come, pro-rata or lottery), your Crossly One early-access time (never a better price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Upcoming and open Vault Shares drops: phase, countdown, allocation (first come, pro-rata or lottery), your Crossly One early-access time (never a better price).
BuyerAPI.listBuyerVaultMarketShareDrops() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketShareDropsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketShareGifts**
```swift
    open class func listBuyerVaultMarketShareGifts(completion: @escaping (_ data: ListBuyerVaultMarketShareGiftsResponse?, _ error: Error?) -> Void)
```

Vault Shares gifts you sent or were offered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Vault Shares gifts you sent or were offered.
BuyerAPI.listBuyerVaultMarketShareGifts() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketShareGiftsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketShareSeries**
```swift
    open class func listBuyerVaultMarketShareSeries(completion: @escaping (_ data: ListBuyerVaultMarketShareSeriesResponse?, _ error: Error?) -> Void)
```

Vault Shares series: open offerings first, then trading. Terms, progress, last share price and implied item value, and your holding.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Vault Shares series: open offerings first, then trading. Terms, progress, last share price and implied item value, and your holding.
BuyerAPI.listBuyerVaultMarketShareSeries() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketShareSeriesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVaultMarketWatchlist**
```swift
    open class func listBuyerVaultMarketWatchlist(completion: @escaping (_ data: ListBuyerVaultMarketWatchlistResponse?, _ error: Error?) -> Void)
```

The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The book keys you watch, with mark and its quality, 24 h and 7 d change, and the last 30 daily marks.
BuyerAPI.listBuyerVaultMarketWatchlist() { (response, error) in
    guard error == nil else {
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

**ListBuyerVaultMarketWatchlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerVideoRequests**
```swift
    open class func listBuyerVideoRequests(completion: @escaping (_ data: ListBuyerVideoRequestsResponse?, _ error: Error?) -> Void)
```

Your video requests and their answers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your video requests and their answers.
BuyerAPI.listBuyerVideoRequests() { (response, error) in
    guard error == nil else {
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

**ListBuyerVideoRequestsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWalletPerks**
```swift
    open class func listBuyerWalletPerks(completion: @escaping (_ data: ListBuyerWalletPerksResponse?, _ error: Error?) -> Void)
```

The perks your wallets unlock: each Collection holders deal (a shop’s percent off for holders of a collection) and creator shop perk on a collection a linked wallet or your Crossly wallet holds, best first. Checkout applies the best one; perks never stack with each other.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The perks your wallets unlock: each Collection holders deal (a shop’s percent off for holders of a collection) and creator shop perk on a collection a linked wallet or your Crossly wallet holds, best first. Checkout applies the best one; perks never stack with each other.
BuyerAPI.listBuyerWalletPerks() { (response, error) in
    guard error == nil else {
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

**ListBuyerWalletPerksResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleDrops**
```swift
    open class func listBuyerWholesaleDrops(completion: @escaping (_ data: ListBuyerWholesaleDropsResponse?, _ error: Error?) -> Void)
```

Upcoming and live trade drops open to you: drops sellers release only to their approved trade buyers or to a catalog audience. kind prebook = reserve quantity now with a deposit (depositBps) at checkout; the balance is invoiced when the seller releases the stock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Upcoming and live trade drops open to you: drops sellers release only to their approved trade buyers or to a catalog audience. kind prebook = reserve quantity now with a deposit (depositBps) at checkout; the balance is invoiced when the seller releases the stock.
BuyerAPI.listBuyerWholesaleDrops() { (response, error) in
    guard error == nil else {
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

**ListBuyerWholesaleDropsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleFreightRequests**
```swift
    open class func listBuyerWholesaleFreightRequests(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your freight (LTL) quote requests to sellers, with the seller's figure in cents once quoted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your freight (LTL) quote requests to sellers, with the seller's figure in cents once quoted.
BuyerAPI.listBuyerWholesaleFreightRequests() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleOrderSheets**
```swift
    open class func listBuyerWholesaleOrderSheets(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your saved wholesale order sheets (one seller each), newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your saved wholesale order sheets (one seller each), newest first.
BuyerAPI.listBuyerWholesaleOrderSheets() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleOrders**
```swift
    open class func listBuyerWholesaleOrders(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your past wholesale orders (trade-priced or on account), newest first — the starting point for reorder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your past wholesale orders (trade-priced or on account), newest first — the starting point for reorder.
BuyerAPI.listBuyerWholesaleOrders() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesalePrebooks**
```swift
    open class func listBuyerWholesalePrebooks(completion: @escaping (_ data: ListBuyerWholesalePrebooksResponse?, _ error: Error?) -> Void)
```

Your pre-books: the drop, item, quantity, deposit paid, balance, status (awaiting_release, invoiced, paid, cancelled, failed) and the balance invoice once the seller released the stock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your pre-books: the drop, item, quantity, deposit paid, balance, status (awaiting_release, invoiced, paid, cancelled, failed) and the balance invoice once the seller released the stock.
BuyerAPI.listBuyerWholesalePrebooks() { (response, error) in
    guard error == nil else {
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

**ListBuyerWholesalePrebooksResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleQuotes**
```swift
    open class func listBuyerWholesaleQuotes(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your requests for a quote (RFQ) to wholesale sellers. ?status=open|all|requested|answered|accepted|declined|withdrawn|expired. An answered or accepted quote past expiresAt reads expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your requests for a quote (RFQ) to wholesale sellers. ?status=open|all|requested|answered|accepted|declined|withdrawn|expired. An answered or accepted quote past expiresAt reads expired.
BuyerAPI.listBuyerWholesaleQuotes() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleStatement**
```swift
    open class func listBuyerWholesaleStatement(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

Your open trade balances per seller in aging buckets (current, 1-30, 31-60, 61-90, 90+ days past due), with the invoices behind them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your open trade balances per seller in aging buckets (current, 1-30, 31-60, 61-90, 90+ days past due), with the invoices behind them.
BuyerAPI.listBuyerWholesaleStatement() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWholesaleSuppliers**
```swift
    open class func listBuyerWholesaleSuppliers(completion: @escaping (_ data: BuyerResponse3?, _ error: Error?) -> Void)
```

The sellers you trade with: catalogs you can open, your terms (net days, credit limit, discount), customer groups, and what you owe each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// The sellers you trade with: catalogs you can open, your terms (net days, credit limit, discount), customer groups, and what you owe each.
BuyerAPI.listBuyerWholesaleSuppliers() { (response, error) in
    guard error == nil else {
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

**BuyerResponse3**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWishlistItems**
```swift
    open class func listBuyerWishlistItems(id: UUID, completion: @escaping (_ data: ListBuyerWishlistItemsResponse?, _ error: Error?) -> Void)
```

What is on one wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// What is on one wishlist.
BuyerAPI.listBuyerWishlistItems(id: id) { (response, error) in
    guard error == nil else {
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

**ListBuyerWishlistItemsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWishlistMembers**
```swift
    open class func listBuyerWishlistMembers(id: String, completion: @escaping (_ data: ListBuyerWishlistMembersResponse?, _ error: Error?) -> Void)
```

Co-editors of a shared wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Co-editors of a shared wishlist.
BuyerAPI.listBuyerWishlistMembers(id: id) { (response, error) in
    guard error == nil else {
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

**ListBuyerWishlistMembersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerWishlists**
```swift
    open class func listBuyerWishlists(completion: @escaping (_ data: ListBuyerWishlistsResponse?, _ error: Error?) -> Void)
```

Your wishlists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your wishlists.
BuyerAPI.listBuyerWishlists() { (response, error) in
    guard error == nil else {
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

**ListBuyerWishlistsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerBoard**
```swift
    open class func updateBuyerBoard(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Rename a board, change its description, or make it public / private.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Rename a board, change its description, or make it public / private.
BuyerAPI.updateBuyerBoard(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerBoardLayout**
```swift
    open class func updateBuyerBoardLayout(id: String, completion: @escaping (_ data: BuyerBoardResponse?, _ error: Error?) -> Void)
```

Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Replace a board’s layout: items by platform listing id or slug, with x, y, w (0–1) and z. At most 40.
BuyerAPI.updateBuyerBoardLayout(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerBoardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerCollectionSetLeaderboard**
```swift
    open class func updateBuyerCollectionSetLeaderboard(completion: @escaping (_ data: UpdateBuyerCollectionSetLeaderboardResponse?, _ error: Error?) -> Void)
```

Show or hide yourself (by your public handle) on set leaderboards.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Show or hide yourself (by your public handle) on set leaderboards.
BuyerAPI.updateBuyerCollectionSetLeaderboard() { (response, error) in
    guard error == nil else {
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

**UpdateBuyerCollectionSetLeaderboardResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerCompany**
```swift
    open class func updateBuyerCompany(completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Rename the company or change its tax id / website (owner).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Rename the company or change its tax id / website (owner).
BuyerAPI.updateBuyerCompany() { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerCompanyAddress**
```swift
    open class func updateBuyerCompanyAddress(completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Replace the shared address book (owner): addresses [{ id, label, name, line1, line2?, city, region, postalCode, country, phone?, isDefault? }], at most 20.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Replace the shared address book (owner): addresses [{ id, label, name, line1, line2?, city, region, postalCode, country, phone?, isDefault? }], at most 20.
BuyerAPI.updateBuyerCompanyAddress() { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerCompanyMember**
```swift
    open class func updateBuyerCompanyMember(id: String, completion: @escaping (_ data: BuyerCompanyResponse?, _ error: Error?) -> Void)
```

Change a member's role or approval limit (owner). The last owner stays an owner.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Change a member's role or approval limit (owner). The last owner stays an owner.
BuyerAPI.updateBuyerCompanyMember(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerCompanyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerCreationReview**
```swift
    open class func updateBuyerCreationReview(format: Format_updateBuyerCreationReview, id: String, updateBuyerCreationReviewRequest: UpdateBuyerCreationReviewRequest, completion: @escaping (_ data: UpdateBuyerCreationReviewResponse?, _ error: Error?) -> Void)
```

Review a creation you bought (or change your review): 1-5 stars and an optional comment.

Only a buyer of it may review it (a bought copy, or a pack that held the card). One review per creation; a second call replaces it. The comment is moderated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let format = "format_example" // String | The creation format.
let id = "id_example" // String | The creation id (a card is <setId>.<slug>).
let updateBuyerCreationReviewRequest = UpdateBuyerCreationReviewRequest(rating: 123, body: "body_example") // UpdateBuyerCreationReviewRequest | 

// Review a creation you bought (or change your review): 1-5 stars and an optional comment.
BuyerAPI.updateBuyerCreationReview(format: format, id: id, updateBuyerCreationReviewRequest: updateBuyerCreationReviewRequest) { (response, error) in
    guard error == nil else {
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
 **format** | **String** | The creation format. | 
 **id** | **String** | The creation id (a card is &lt;setId&gt;.&lt;slug&gt;). | 
 **updateBuyerCreationReviewRequest** | **UpdateBuyerCreationReviewRequest** |  | 

### Return type

**UpdateBuyerCreationReviewResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerFeedback**
```swift
    open class func updateBuyerFeedback(id: UUID, updateBuyerFeedbackRequest: UpdateBuyerFeedbackRequest, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Revise feedback you left, within 60 days.

Replaces the stars and comment; detailed ratings you omit stay as they were.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let updateBuyerFeedbackRequest = UpdateBuyerFeedbackRequest(rating: 123, body: "body_example", ratingAsDescribed: 123, ratingCommunication: 123, ratingShipSpeed: 123, ratingShipCost: 123) // UpdateBuyerFeedbackRequest | 

// Revise feedback you left, within 60 days.
BuyerAPI.updateBuyerFeedback(id: id, updateBuyerFeedbackRequest: updateBuyerFeedbackRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **updateBuyerFeedbackRequest** | **UpdateBuyerFeedbackRequest** |  | 

### Return type

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerHome**
```swift
    open class func updateBuyerHome(completion: @escaping (_ data: BuyerHomeResponse?, _ error: Error?) -> Void)
```

Who may walk in (privacy), the lighting (theme), wallpaper/floor/mood decor and whether visitors see your vault wall values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Who may walk in (privacy), the lighting (theme), wallpaper/floor/mood decor and whether visitors see your vault wall values.
BuyerAPI.updateBuyerHome() { (response, error) in
    guard error == nil else {
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

**BuyerHomeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerHomeBuilder**
```swift
    open class func updateBuyerHomeBuilder(completion: @escaping (_ data: ListBuyerHomeBuildersResponse?, _ error: Error?) -> Void)
```

Set your co-builders (friends only, at most 4).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Set your co-builders (friends only, at most 4).
BuyerAPI.updateBuyerHomeBuilder() { (response, error) in
    guard error == nil else {
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

**ListBuyerHomeBuildersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerHomeLayout**
```swift
    open class func updateBuyerHomeLayout(completion: @escaping (_ data: BuyerHomeResponse?, _ error: Error?) -> Void)
```

Arrange your home: the whole layout, checked against what you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Arrange your home: the whole layout, checked against what you own.
BuyerAPI.updateBuyerHomeLayout() { (response, error) in
    guard error == nil else {
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

**BuyerHomeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerHunt**
```swift
    open class func updateBuyerHunt(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Pause, resume or stop a hunt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Pause, resume or stop a hunt.
BuyerAPI.updateBuyerHunt(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerPaymentMethodDefault**
```swift
    open class func updateBuyerPaymentMethodDefault(id: String, completion: @escaping (_ data: UpdateBuyerPaymentMethodDefaultResponse?, _ error: Error?) -> Void)
```

Make one of your saved cards the default.

The default is the card express checkout offers first. Only your own saved card: any other id is a 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Make one of your saved cards the default.
BuyerAPI.updateBuyerPaymentMethodDefault(id: id) { (response, error) in
    guard error == nil else {
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

**UpdateBuyerPaymentMethodDefaultResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerPurchaseStory**
```swift
    open class func updateBuyerPurchaseStory(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Write your owner story (280 characters); it travels with the item if you resell it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Write your owner story (280 characters); it travels with the item if you resell it.
BuyerAPI.updateBuyerPurchaseStory(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerRegistry**
```swift
    open class func updateBuyerRegistry(id: String, completion: @escaping (_ data: BuyerRegistryResponse?, _ error: Error?) -> Void)
```

Edit a registry: title, kind, date, message, ship-to address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Edit a registry: title, kind, date, message, ship-to address.
BuyerAPI.updateBuyerRegistry(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerRegistryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerRegistryItem**
```swift
    open class func updateBuyerRegistryItem(id: String, platformListingId: String, completion: @escaping (_ data: UpdateBuyerRegistryItemResponse?, _ error: Error?) -> Void)
```

How many of an item you want (1–50).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// How many of an item you want (1–50).
BuyerAPI.updateBuyerRegistryItem(id: id, platformListingId: platformListingId) { (response, error) in
    guard error == nil else {
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

**UpdateBuyerRegistryItemResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerSubscription**
```swift
    open class func updateBuyerSubscription(id: String, completion: @escaping (_ data: BuyerResponse?, _ error: Error?) -> Void)
```

Pause, resume, skip the next delivery, change the interval, or cancel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Pause, resume, skip the next delivery, change the interval, or cancel.
BuyerAPI.updateBuyerSubscription(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerWholesaleCartPo**
```swift
    open class func updateBuyerWholesaleCartPo(completion: @escaping (_ data: UpdateBuyerWholesaleCartPoResponse?, _ error: Error?) -> Void)
```

Set the PO reference for one seller's group of your cart: { sellerUserId, poReference } (empty clears it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Set the PO reference for one seller's group of your cart: { sellerUserId, poReference } (empty clears it).
BuyerAPI.updateBuyerWholesaleCartPo() { (response, error) in
    guard error == nil else {
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

**UpdateBuyerWholesaleCartPoResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerWholesaleOrderSheet**
```swift
    open class func updateBuyerWholesaleOrderSheet(id: String, completion: @escaping (_ data: BuyerWholesaleOrderSheetResponse?, _ error: Error?) -> Void)
```

Rename an order sheet, change its PO reference or note, or replace its lines.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Rename an order sheet, change its PO reference or note, or replace its lines.
BuyerAPI.updateBuyerWholesaleOrderSheet(id: id) { (response, error) in
    guard error == nil else {
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

**BuyerWholesaleOrderSheetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerWishlist**
```swift
    open class func updateBuyerWishlist(id: UUID, updateBuyerWishlistRequest: UpdateBuyerWishlistRequest, completion: @escaping (_ data: UpdateBuyerWishlistResponse?, _ error: Error?) -> Void)
```

Rename a wishlist, or make it public / private.

A public list can be opened by anyone holding its share link; making it private again stops that link working.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | The id.
let updateBuyerWishlistRequest = UpdateBuyerWishlistRequest(name: "name_example", isPublic: false) // UpdateBuyerWishlistRequest | 

// Rename a wishlist, or make it public / private.
BuyerAPI.updateBuyerWishlist(id: id, updateBuyerWishlistRequest: updateBuyerWishlistRequest) { (response, error) in
    guard error == nil else {
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
 **id** | **UUID** | The id. | 
 **updateBuyerWishlistRequest** | **UpdateBuyerWishlistRequest** |  | 

### Return type

**UpdateBuyerWishlistResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

