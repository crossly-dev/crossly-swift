# WorldAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGamePackBreak**](WorldAPI.md#creategamepackbreak) | **POST** /v1/games/pack-break | Pack Break: your open pack of five real market pieces, or a fresh one. No prices until you pick.
[**createGamePackBreakPick**](WorldAPI.md#creategamepackbreakpick) | **POST** /v1/games/pack-break/{id}/pick | Pick the pull you think is worth the most: every lowest open ask is revealed, and a win earns a fee-back coupon.
[**createShowroom**](WorldAPI.md#createshowroom) | **POST** /v1/showrooms | Add a showroom. The first is included; an extra one has a monthly fee and is added in the dashboard (402 world_payment_failed here).
[**createShowroomPlacement**](WorldAPI.md#createshowroomplacement) | **POST** /v1/showrooms/{id}/placement | Stand a showroom on a plot your store owns or rents (403 when it does not; 409 when another showroom stands there).
[**createSpatialInviteAccept**](WorldAPI.md#createspatialinviteaccept) | **POST** /v1/spatial/invites/accept | Redeem an invite code (dashes optional); returns the room it opens.
[**createSpatialPropertyLeaseWithdraw**](WorldAPI.md#createspatialpropertyleasewithdraw) | **POST** /v1/spatial/property/leases/{id}/withdraw | Withdraw a lease offer nobody has accepted yet.
[**createSpatialScene**](WorldAPI.md#createspatialscene) | **POST** /v1/spatial/scenes | Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.
[**createSpatialSceneGrant**](WorldAPI.md#createspatialscenegrant) | **POST** /v1/spatial/scenes/{id}/grants | Let a specific user into one of your rooms (visitor or staff), no code needed.
[**createSpatialSceneInvite**](WorldAPI.md#createspatialsceneinvite) | **POST** /v1/spatial/scenes/{id}/invites | Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.
[**createSpatialSceneNode**](WorldAPI.md#createspatialscenenode) | **POST** /v1/spatial/scenes/{id}/nodes | Add a unit (rack, shelf, bin) to one of your warehouse rooms.
[**createSpatialScenePlace**](WorldAPI.md#createspatialsceneplace) | **POST** /v1/spatial/scenes/{id}/place | Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.
[**createSpatialSceneRename**](WorldAPI.md#createspatialscenerename) | **POST** /v1/spatial/scenes/{id}/rename | Rename one of your rooms.
[**createSpatialSceneShopPlace**](WorldAPI.md#createspatialsceneshopplace) | **POST** /v1/spatial/scenes/{id}/shop/place | Place an inventory item in a section and display of your shop room.
[**createSpatialSceneUnpin**](WorldAPI.md#createspatialsceneunpin) | **POST** /v1/spatial/scenes/{id}/unpin | Clear every pin in one of your rooms, so it arranges itself again.
[**createSpatialSceneVisibility**](WorldAPI.md#createspatialscenevisibility) | **POST** /v1/spatial/scenes/{id}/visibility | Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).
[**createSpatialSceneWarehouseStock**](WorldAPI.md#createspatialscenewarehousestock) | **POST** /v1/spatial/scenes/{id}/warehouse/stock | Put an inventory item (or unit) on a rack in one of your warehouse rooms.
[**createSpatialStreetApply**](WorldAPI.md#createspatialstreetapply) | **POST** /v1/spatial/streets/{slug}/apply | Ask to open your shop on a street whose owner reviews applications.
[**createSpatialStreetInvite**](WorldAPI.md#createspatialstreetinvite) | **POST** /v1/spatial/streets/{slug}/invite | Invite a shop (by its slug) to open on a street you own.
[**createWorldAttendantTestChat**](WorldAPI.md#createworldattendanttestchat) | **POST** /v1/world/attendant/test-chat | One test answer from your AI attendant, on your own AI key (409 ai_key_required without one).
[**createWorldAvatarEquip**](WorldAPI.md#createworldavatarequip) | **POST** /v1/world/avatar/equip | Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.
[**createWorldAvatarUnequip**](WorldAPI.md#createworldavatarunequip) | **POST** /v1/world/avatar/unequip | Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.
[**createWorldAvatarWearable**](WorldAPI.md#createworldavatarwearable) | **POST** /v1/world/avatar/wearables | Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.
[**createWorldContest**](WorldAPI.md#createworldcontest) | **POST** /v1/world/contests | Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.
[**createWorldContestEntrySettlePayment**](WorldAPI.md#createworldcontestentrysettlepayment) | **POST** /v1/world/contests/entries/{id}/settle-payment | Read the fee of a paid entry back from Stripe and settle it (safe to repeat).
[**createWorldContestJoin**](WorldAPI.md#createworldcontestjoin) | **POST** /v1/world/contests/{id}/join | Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.
[**createWorldConvention**](WorldAPI.md#createworldconvention) | **POST** /v1/world/conventions | Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).
[**createWorldConventionAccept**](WorldAPI.md#createworldconventionaccept) | **POST** /v1/world/conventions/{id}/accept | Accept: your own invitation (no body), or, as host, an application (username).
[**createWorldConventionApply**](WorldAPI.md#createworldconventionapply) | **POST** /v1/world/conventions/{id}/apply | Ask for a table at a convention.
[**createWorldConventionBoothApply**](WorldAPI.md#createworldconventionboothapply) | **POST** /v1/world/conventions/{id}/booths/apply | Apply for a booth tier (or book it at once in open mode): { tierId, note?, categories? }.
[**createWorldConventionBoothFee**](WorldAPI.md#createworldconventionboothfee) | **POST** /v1/world/conventions/{id}/booth-fee | Pay your booth fee to the organiser on a Worlds rail: { rail: \&quot;cash\&quot; | \&quot;cbx\&quot; }. Once per booth. Full-access token and Idempotency-Key required.
[**createWorldConventionCheckIn**](WorldAPI.md#createworldconventioncheckin) | **POST** /v1/world/conventions/{id}/check-in | Check in: the organiser names { exhibitorId }; an exhibitor checks themselves in with {}.
[**createWorldConventionFull**](WorldAPI.md#createworldconventionfull) | **POST** /v1/world/conventions/full | Create a convention in full: venue + days (rented and paid now on the rail), hours, theme, booth tiers and prices, application or open booking, seller limits, promotion. Full-access token and Idempotency-Key required.
[**createWorldConventionInvite**](WorldAPI.md#createworldconventioninvite) | **POST** /v1/world/conventions/{id}/invite | Invite a seller (by shop handle) to a convention you host.
[**createWorldConventionMessage**](WorldAPI.md#createworldconventionmessage) | **POST** /v1/world/conventions/{id}/messages | Send a convention message: { body, toUserId? }. The organiser writes to one seller or every seller; an exhibitor writes to the organiser.
[**createWorldConventionPaid**](WorldAPI.md#createworldconventionpaid) | **POST** /v1/world/conventions/{id}/paid | As host, record that a seller (username) paid their table fee off-platform. Moves no money.
[**createWorldConventionSellerAssign**](WorldAPI.md#createworldconventionsellerassign) | **POST** /v1/world/conventions/{id}/sellers/assign | Move an accepted seller to another booth of their tier (swaps with whoever is there): { exhibitorId, boothKey }.
[**createWorldConventionSellerDecide**](WorldAPI.md#createworldconventionsellerdecide) | **POST** /v1/world/conventions/{id}/sellers/decide | Approve (terms frozen, a booth assigned) or decline an application: { exhibitorId, decision }.
[**createWorldConventionWithdraw**](WorldAPI.md#createworldconventionwithdraw) | **POST** /v1/world/conventions/{id}/withdraw | Withdraw your table or decline your invitation; as host, decline someone (username).
[**createWorldCrew**](WorldAPI.md#createworldcrew) | **POST** /v1/world/crews | Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members&#39; nameplates) }. Answers its id and join code. 409 when you are already in a crew.
[**createWorldCrewChat**](WorldAPI.md#createworldcrewchat) | **POST** /v1/world/crew/chat | Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.
[**createWorldCrewJoin**](WorldAPI.md#createworldcrewjoin) | **POST** /v1/world/crews/join | Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).
[**createWorldCrewLeave**](WorldAPI.md#createworldcrewleave) | **POST** /v1/world/crews/leave | Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.
[**createWorldDecorDesign**](WorldAPI.md#createworlddecordesign) | **POST** /v1/world/decor/designs | Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.
[**createWorldDecorDesignSubmit**](WorldAPI.md#createworlddecordesignsubmit) | **POST** /v1/world/decor/designs/{id}/submit | Send one of your decor designs to the review queue.
[**createWorldDecorRetract**](WorldAPI.md#createworlddecorretract) | **POST** /v1/world/decor/retract | Take a placed decor piece back into your inventory; answers the inventory after.
[**createWorldDm**](WorldAPI.md#createworlddm) | **POST** /v1/world/dms/{userId} | Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.
[**createWorldFollow**](WorldAPI.md#createworldfollow) | **POST** /v1/world/follows/{userId} | Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.
[**createWorldFriendInvite**](WorldAPI.md#createworldfriendinvite) | **POST** /v1/world/friends/{userId}/invite | \&quot;Join me\&quot;: send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.
[**createWorldGamePackage**](WorldAPI.md#createworldgamepackage) | **POST** /v1/world/games/packages | Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.
[**createWorldGamePackageCheck**](WorldAPI.md#createworldgamepackagecheck) | **POST** /v1/world/games/packages/check | Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.
[**createWorldGamePackagePublish**](WorldAPI.md#createworldgamepackagepublish) | **POST** /v1/world/games/packages/{id}/publish | Make an approved version the one every placed copy runs (rollback or roll-forward; running copies restart on it) and list the game again if it was unpublished. Body { version }. Starter seller plan or higher.
[**createWorldGamePackageRestore**](WorldAPI.md#createworldgamepackagerestore) | **POST** /v1/world/games/packages/{id}/restore | Restore a deleted Classic game within 30 days (it comes back unpublished).
[**createWorldGamePackageUnpublish**](WorldAPI.md#createworldgamepackageunpublish) | **POST** /v1/world/games/packages/{id}/unpublish | Take a Classic game off the Game Directory and the Carnival Plaza launcher, its store off sale. Copies people already placed keep running. Needs no plan: a lapsed creator can always take a game down.
[**createWorldGamePackageVersionSubmit**](WorldAPI.md#createworldgamepackageversionsubmit) | **POST** /v1/world/games/packages/{id}/versions/{semver}/submit | Send a draft version (uploaded with submit: false) to review: the same static check, sandbox dry run and human review as an upload. Starter seller plan or higher.
[**createWorldGameRating**](WorldAPI.md#createworldgamerating) | **POST** /v1/world/games/{id}/rating | Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.
[**createWorldGameReport**](WorldAPI.md#createworldgamereport) | **POST** /v1/world/games/{id}/report | Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.
[**createWorldGameStoreCheckout**](WorldAPI.md#createworldgamestorecheckout) | **POST** /v1/world/games/{id}/store/{item}/checkout | Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.
[**createWorldGrailMatch**](WorldAPI.md#createworldgrailmatch) | **POST** /v1/world/grails/match | Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.
[**createWorldHallLoan**](WorldAPI.md#createworldhallloan) | **POST** /v1/world/hall/loans | Lend a piece from your vault to this week&#39;s Hall of Grails exhibition: { vaultItemId, credit: &#39;name&#39; | &#39;anonymous&#39; }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.
[**createWorldHomeAsk**](WorldAPI.md#createworldhomeask) | **POST** /v1/world/homes/{slug}/ask | Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).
[**createWorldHomeGuestbook**](WorldAPI.md#createworldhomeguestbook) | **POST** /v1/world/homes/{slug}/guestbook | Sign a home guestbook (one short line).
[**createWorldHomeGuestbookReport**](WorldAPI.md#createworldhomeguestbookreport) | **POST** /v1/world/homes/{slug}/guestbook/{id}/report | Report a guestbook entry to moderation.
[**createWorldHuntStart**](WorldAPI.md#createworldhuntstart) | **POST** /v1/world/hunt/start | Start the Great Hunt this season by reading its first riddle (the Copper key&#39;s). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.
[**createWorldInteractiveAsset**](WorldAPI.md#createworldinteractiveasset) | **POST** /v1/world/interactive/assets | Upload one asset: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64; purpose product (your designs, the default) or game (Carnival Studio files such as badge icons). Answers its sha256 and the path to reference from MML.
[**createWorldInteractiveDesign**](WorldAPI.md#createworldinteractivedesign) | **POST** /v1/world/interactive/designs | Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.
[**createWorldInteractiveDesignCheck**](WorldAPI.md#createworldinteractivedesigncheck) | **POST** /v1/world/interactive/designs/{id}/check | Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.
[**createWorldInteractiveDesignPreview**](WorldAPI.md#createworldinteractivedesignpreview) | **POST** /v1/world/interactive/designs/{id}/preview | A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.
[**createWorldInteractiveDesignSubmit**](WorldAPI.md#createworldinteractivedesignsubmit) | **POST** /v1/world/interactive/designs/{id}/submit | Freeze the draft as a new version and send it to ops review. Up to 10 a day.
[**createWorldInteractiveReset**](WorldAPI.md#createworldinteractivereset) | **POST** /v1/world/interactive/reset | Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).
[**createWorldJobAppraisalAnswer**](WorldAPI.md#createworldjobappraisalanswer) | **POST** /v1/world/jobs/appraisals/{id}/answers | Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.
[**createWorldJobShiftClaim**](WorldAPI.md#createworldjobshiftclaim) | **POST** /v1/world/jobs/shifts/{id}/claim | Claim an open shift. You work it by being in the place while it runs.
[**createWorldJobShiftRelease**](WorldAPI.md#createworldjobshiftrelease) | **POST** /v1/world/jobs/shifts/{id}/release | Give a shift you claimed back to the board.
[**createWorldMarketBuy**](WorldAPI.md#createworldmarketbuy) | **POST** /v1/world/market/{kind}/{id}/buy | Buy a plot or a street.
[**createWorldMarketListing**](WorldAPI.md#createworldmarketlisting) | **POST** /v1/world/market/listings | List a plot for sale or rent, or a street for sale.
[**createWorldMarketPlotRent**](WorldAPI.md#createworldmarketplotrent) | **POST** /v1/world/market/plot/{id}/rent | Rent a plot offered for lease.
[**createWorldOutfit**](WorldAPI.md#createworldoutfit) | **POST** /v1/world/outfits | Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.
[**createWorldOutfitApply**](WorldAPI.md#createworldoutfitapply) | **POST** /v1/world/outfits/{id}/apply | Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.
[**createWorldParty**](WorldAPI.md#createworldparty) | **POST** /v1/world/parties | Start a party with you as leader (up to 8 members).
[**createWorldPartyChat**](WorldAPI.md#createworldpartychat) | **POST** /v1/world/parties/{id}/chat | Say something in your party chat (up to 2000 characters).
[**createWorldPartyInvite**](WorldAPI.md#createworldpartyinvite) | **POST** /v1/world/parties/{id}/invite | Invite a friend (userId) to your party.
[**createWorldPartyInviteAccept**](WorldAPI.md#createworldpartyinviteaccept) | **POST** /v1/world/parties/invites/{inviteId}/accept | Accept a party invite.
[**createWorldPartyInviteDecline**](WorldAPI.md#createworldpartyinvitedecline) | **POST** /v1/world/parties/invites/{inviteId}/decline | Decline a party invite.
[**createWorldPartyKick**](WorldAPI.md#createworldpartykick) | **POST** /v1/world/parties/{id}/kick | As leader, remove a member (userId).
[**createWorldPartyLeader**](WorldAPI.md#createworldpartyleader) | **POST** /v1/world/parties/{id}/leader | As leader, pass the lead to a member (userId).
[**createWorldPartyLeave**](WorldAPI.md#createworldpartyleave) | **POST** /v1/world/parties/{id}/leave | Leave your party (the lead passes on if you led it).
[**createWorldPartyWishlist**](WorldAPI.md#createworldpartywishlist) | **POST** /v1/world/parties/{id}/wishlist | Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.
[**createWorldPartyWishlistVote**](WorldAPI.md#createworldpartywishlistvote) | **POST** /v1/world/parties/{id}/wishlist/{listingId}/vote | Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.
[**createWorldPlaceItemWant**](WorldAPI.md#createworldplaceitemwant) | **POST** /v1/world/places/{slug}/items/{itemId}/want | Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.
[**createWorldPropertyPlotPhotoUploadUrl**](WorldAPI.md#createworldpropertyplotphotouploadurl) | **POST** /v1/world/property/plots/{plotId}/photo/upload-url | A presigned upload for a plot&#39;s photo (WebP/PNG/JPEG, up to 4 MB): PUT the image to uploadUrl with the same Content-Type and exact Content-Length, then store publicUrl with PUT .../photo.
[**createWorldPropertyPlotShowroom**](WorldAPI.md#createworldpropertyplotshowroom) | **POST** /v1/world/property/plots/{plotId}/showroom | Stand one of your showrooms on a plot you own or rent.
[**createWorldPropertyTrespassed**](WorldAPI.md#createworldpropertytrespassed) | **POST** /v1/world/property/trespassed | Ban someone owner-wide or from one showroom.
[**createWorldSpace**](WorldAPI.md#createworldspace) | **POST** /v1/world/spaces | Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.
[**createWorldSpaceEvent**](WorldAPI.md#createworldspaceevent) | **POST** /v1/world/spaces/{slug}/events | As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.
[**createWorldSpaceEventRsvp**](WorldAPI.md#createworldspaceeventrsvp) | **POST** /v1/world/spaces/{slug}/events/{id}/rsvp | Say whether you are going to an event.
[**createWorldSpaceInvite**](WorldAPI.md#createworldspaceinvite) | **POST** /v1/world/spaces/{slug}/invite | Invite somebody (userId) to a Space.
[**createWorldSpaceJoin**](WorldAPI.md#createworldspacejoin) | **POST** /v1/world/spaces/{slug}/join | Join a Space, or ask to when it is request-only.
[**createWorldSpaceLeave**](WorldAPI.md#createworldspaceleave) | **POST** /v1/world/spaces/{slug}/leave | Leave a Space.
[**createWorldSpaceRequestByUserId**](WorldAPI.md#createworldspacerequestbyuserid) | **POST** /v1/world/spaces/{slug}/requests/{userId} | As host or co-host, accept or turn down a request to join.
[**createWorldSpaceRole**](WorldAPI.md#createworldspacerole) | **POST** /v1/world/spaces/{slug}/role | As host, make a member a co-host or back to a member.
[**createWorldStaffApplicationDecide**](WorldAPI.md#createworldstaffapplicationdecide) | **POST** /v1/world/staff/applications/{id}/decide | Accept or decline an application.
[**createWorldStaffAssignmentRateWorker**](WorldAPI.md#createworldstaffassignmentrateworker) | **POST** /v1/world/staff/assignments/{id}/rate-worker | Rate the worker of one of your seats.
[**createWorldStaffPosting**](WorldAPI.md#createworldstaffposting) | **POST** /v1/world/staff/postings | Post a job: a showroom, stall or convention, pay, recurrence and rules.
[**createWorldStaffPostingStatus**](WorldAPI.md#createworldstaffpostingstatus) | **POST** /v1/world/staff/postings/{id}/status | Open, pause or close a posting.
[**createWorldStreetOwnedUpkeepPay**](WorldAPI.md#createworldstreetownedupkeeppay) | **POST** /v1/world/streets/owned/{id}/upkeep/pay | Pay your street&#39;s upkeep forward.
[**createWorldVenueBookingCancel**](WorldAPI.md#createworldvenuebookingcancel) | **POST** /v1/world/venue-bookings/{id}/cancel | Cancel a hall rental: the whole rent back until 7 days before the first day, nothing after.
[**createWorldWorkAssignmentRateEmployer**](WorldAPI.md#createworldworkassignmentrateemployer) | **POST** /v1/world/work/assignments/{id}/rate-employer | Rate the employer of a public-job shift you worked: paid on time, job as described, conduct.
[**createWorldWorkPostingApply**](WorldAPI.md#createworldworkpostingapply) | **POST** /v1/world/work/postings/{id}/apply | Apply for a job.
[**deleteShowroom**](WorldAPI.md#deleteshowroom) | **DELETE** /v1/showrooms/{id} | Archive a showroom: private, off its plots, billing stopped. Never deletes; the primary cannot be archived (409 showroom_primary).
[**deleteShowroomPlacement**](WorldAPI.md#deleteshowroomplacement) | **DELETE** /v1/showrooms/{id}/placement/{plotId} | Take a showroom off a plot (the plot stays yours).
[**deleteSpatialSceneGrant**](WorldAPI.md#deletespatialscenegrant) | **DELETE** /v1/spatial/scenes/{id}/grants/{grantId} | Take somebody&#39;s access to your room away, or kill an invite nobody has used yet.
[**deleteSpatialSceneNode**](WorldAPI.md#deletespatialscenenode) | **DELETE** /v1/spatial/scenes/{id}/nodes | Remove units (by id, up to 500) from one of your warehouse rooms.
[**deleteSpatialSceneWarehouseStock**](WorldAPI.md#deletespatialscenewarehousestock) | **DELETE** /v1/spatial/scenes/{id}/warehouse/stock | Take an inventory item (or unit) off its rack.
[**deleteSpatialStreetRequest**](WorldAPI.md#deletespatialstreetrequest) | **DELETE** /v1/spatial/streets/requests/{id} | Withdraw a street request you made that has not been founded yet.
[**deleteWorldBlock**](WorldAPI.md#deleteworldblock) | **DELETE** /v1/world/blocks/{id} | Unblock somebody (by the block id from GET /v1/world/blocks).
[**deleteWorldCollectionCapability**](WorldAPI.md#deleteworldcollectioncapability) | **DELETE** /v1/world/collections/{chain}/{contract}/capabilities | Withdraw your declaration for a collection.
[**deleteWorldFollow**](WorldAPI.md#deleteworldfollow) | **DELETE** /v1/world/follows/{userId} | Unfollow somebody. Idempotent.
[**deleteWorldGamePackage**](WorldAPI.md#deleteworldgamepackage) | **DELETE** /v1/world/games/packages/{id} | Delete a Classic game: unpublished, then a tombstone restorable for 30 days.
[**deleteWorldHallLoan**](WorldAPI.md#deleteworldhallloan) | **DELETE** /v1/world/hall/loans/{id} | Take one of your loans off show in the Hall of Grails.
[**deleteWorldHomeGuestbook**](WorldAPI.md#deleteworldhomeguestbook) | **DELETE** /v1/world/homes/{slug}/guestbook/{id} | As the home owner, hide a guestbook entry.
[**deleteWorldInteractiveDesign**](WorldAPI.md#deleteworldinteractivedesign) | **DELETE** /v1/world/interactive/designs/{id} | Delete a draft design, or archive a submitted one (off sale; owned copies keep working).
[**deleteWorldJobShift**](WorldAPI.md#deleteworldjobshift) | **DELETE** /v1/world/jobs/shifts/{id} | Cancel a shift you posted that nobody has worked yet.
[**deleteWorldMarketListing**](WorldAPI.md#deleteworldmarketlisting) | **DELETE** /v1/world/market/listings/{kind}/{id}/{mode} | Withdraw a plot or street from the Market.
[**deleteWorldOutfit**](WorldAPI.md#deleteworldoutfit) | **DELETE** /v1/world/outfits/{id} | Delete a saved look. 404 when it is not yours.
[**deleteWorldPartyWishlist**](WorldAPI.md#deleteworldpartywishlist) | **DELETE** /v1/world/parties/{id}/wishlist/{listingId} | Take a listing you added off the party wishlist; answers the wishlist.
[**deleteWorldPlaceBan**](WorldAPI.md#deleteworldplaceban) | **DELETE** /v1/world/places/{slug}/bans/{userId} | Lift a ban from a place you own; they can walk in again right away.
[**deleteWorldPropertyPlotShowroom**](WorldAPI.md#deleteworldpropertyplotshowroom) | **DELETE** /v1/world/property/plots/{plotId}/showroom | Take the showroom off a plot.
[**deleteWorldPropertyTrespassed**](WorldAPI.md#deleteworldpropertytrespassed) | **DELETE** /v1/world/property/trespassed/{userId} | Lift a ban.
[**deleteWorldSpace**](WorldAPI.md#deleteworldspace) | **DELETE** /v1/world/spaces/{slug} | As host, close a Space.
[**deleteWorldSpaceEvent**](WorldAPI.md#deleteworldspaceevent) | **DELETE** /v1/world/spaces/{slug}/events/{id} | As host or co-host, cancel an event.
[**deleteWorldStaffAssignment**](WorldAPI.md#deleteworldstaffassignment) | **DELETE** /v1/world/staff/assignments/{id} | Take a worker off a seat that has not started.
[**getShowroom**](WorldAPI.md#getshowroom) | **GET** /v1/showroom | Your store&#39;s showroom in Crossly World: the room and its look, fixtures with their slot grids, where every item stands (pinned by a person or placed automatically), sharing settings and the stock that can stand there. The ETag is the version.
[**getShowroomBilling**](WorldAPI.md#getshowroombilling) | **GET** /v1/showrooms/{id}/billing | A showroom&#39;s billing: included, active (paid through), past due or cancelled, and the rails a payment can use.
[**getShowroomById**](WorldAPI.md#getshowroombyid) | **GET** /v1/showrooms/{id} | One showroom: room and look, fixtures (with holders), placements, settings (hours, auto-include) and stock. The ETag is the version.
[**getShowroomCatalog**](WorldAPI.md#getshowroomcatalog) | **GET** /v1/showroom/catalog | Everything a showroom can be made of: fixture displays (kind, slots per unit), room sizes, themes, surfaces, shopfronts, facades, sign styles and fonts, window moods, and &#x60;holders&#x60;: every fixture holder with &#x60;owned&#x60; (free, or a premium one you bought in the in-world cosmetics market; an unowned premium holder is refused with holder_not_owned).
[**getShowroomPlacement**](WorldAPI.md#getshowroomplacement) | **GET** /v1/showrooms/{id}/placement | The plots a showroom stands on, and the plots your store owns or rents that it could stand on.
[**getSpatialSceneAttention**](WorldAPI.md#getspatialsceneattention) | **GET** /v1/spatial/scenes/{sceneId}/attention | What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).
[**getSpatialSceneWindow**](WorldAPI.md#getspatialscenewindow) | **GET** /v1/spatial/scenes/{id}/window | The listings you chose for the street window of your shop, in slot order (left, middle, right; empty &#x3D; newest first), and &#x60;choices&#x60;: your listings that can go in it, newest first.
[**getSpatialShopNeighbourhood**](WorldAPI.md#getspatialshopneighbourhood) | **GET** /v1/spatial/shop/neighbourhood | Where your shop stands, and the district theme your stock fits.
[**getSpatialSpace**](WorldAPI.md#getspatialspace) | **GET** /v1/spatial/spaces | The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.
[**getSpatialStreetAdmission**](WorldAPI.md#getspatialstreetadmission) | **GET** /v1/spatial/streets/admissions | Street applications and invitations: yours, and those waiting on streets you own.
[**getSpatialStreetDecor**](WorldAPI.md#getspatialstreetdecor) | **GET** /v1/spatial/streets/{slug}/decor | The decor on a street you may dress, and what you can place.
[**getWorldArcade**](WorldAPI.md#getworldarcade) | **GET** /v1/world/arcade | The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \&quot;A player\&quot;), plus creatorGames (creator games with a cabinet now). Games are played in the world.
[**getWorldAttendant**](WorldAPI.md#getworldattendant) | **GET** /v1/world/attendant | Your AI attendant and whether your AI key is connected.
[**getWorldAurora**](WorldAPI.md#getworldaurora) | **GET** /v1/world/aurora | The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.
[**getWorldAvatarBasic**](WorldAPI.md#getworldavatarbasic) | **GET** /v1/world/avatar/basics | The free basic wardrobe every account owns: 25 garments (tees, hoodie, overshirt, polo, jacket, vest, jeans, shorts, skirt, sneakers, boots, loafers, caps...) by slot, each with its colourways. Wear one by saving appearance.outfit &#x3D; { top, outer, bottom, shoes, hat } as \&quot;garment:colour\&quot; (outer and hat may be \&quot;none\&quot;) with PUT /v1/world/avatar/look.
[**getWorldAvatarIdentity**](WorldAPI.md#getworldavataridentity) | **GET** /v1/world/avatar/identity | Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.
[**getWorldAvatarLoadout**](WorldAPI.md#getworldavatarloadout) | **GET** /v1/world/avatar/loadout | What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.
[**getWorldAvatarLoadoutByUserId**](WorldAPI.md#getworldavatarloadoutbyuserid) | **GET** /v1/world/avatar/loadout/{userId} | What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.
[**getWorldAvatarLook**](WorldAPI.md#getworldavatarlook) | **GET** /v1/world/avatar/look | Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.
[**getWorldAvatarNftBadge**](WorldAPI.md#getworldavatarnftbadge) | **GET** /v1/world/avatar/nft-badge | The NFT you wear on your nameplate in the world, or null.
[**getWorldBillingRail**](WorldAPI.md#getworldbillingrail) | **GET** /v1/world/billing/rails | Which rails (card, CBX) can pay in the world right now.
[**getWorldCapability**](WorldAPI.md#getworldcapability) | **GET** /v1/world/capabilities | What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.
[**getWorldCapabilityCatalogue**](WorldAPI.md#getworldcapabilitycatalogue) | **GET** /v1/world/capabilities/catalogue | The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.
[**getWorldCapabilityWear**](WorldAPI.md#getworldcapabilitywear) | **GET** /v1/world/capabilities/wear | What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.
[**getWorldChest**](WorldAPI.md#getworldchest) | **GET** /v1/world/chests | The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.
[**getWorldCollectionCapability**](WorldAPI.md#getworldcollectioncapability) | **GET** /v1/world/collections/{chain}/{contract}/capabilities | The live capability declaration of a collection (404 when it has none).
[**getWorldContestMine**](WorldAPI.md#getworldcontestmine) | **GET** /v1/world/contests/mine | Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).
[**getWorldControl**](WorldAPI.md#getworldcontrol) | **GET** /v1/world/controls | Your world controls settings (look sensitivity, invert look, stick size, left-handed, camera distance, reduced camera motion, tap-to-walk, haptics) and whether you have seen the controls tutorial.
[**getWorldConvention**](WorldAPI.md#getworldconvention) | **GET** /v1/world/conventions/{id} | One convention. 404 for an unknown or malformed id alike.
[**getWorldConventionExhibit**](WorldAPI.md#getworldconventionexhibit) | **GET** /v1/world/conventions/{id}/exhibit | A convention from the exhibitor side: tiers with price, size, capacity and booths left, the rails that pay now, and your own booth (status, fee, paid, checked in, listings).
[**getWorldConventionHall**](WorldAPI.md#getworldconventionhall) | **GET** /v1/world/conventions/{id}/hall | The hall design (booths, stage, signs, entrance, kiosk), its version and any problems.
[**getWorldConventionManage**](WorldAPI.md#getworldconventionmanage) | **GET** /v1/world/conventions/{id}/manage | A convention you organise: its settings, booth tiers, every seller (status, booth, fee, paid, checked in) and the venue.
[**getWorldConventionStatusPage**](WorldAPI.md#getworldconventionstatuspage) | **GET** /v1/world/conventions/{id}/status-page | The status page: sellers, booths filled per tier, walk-ins, sales of brought listings, booth fees paid and owed.
[**getWorldCosmBalance**](WorldAPI.md#getworldcosmbalance) | **GET** /v1/world/cosm/balance | Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false &#x3D; COSM is not provisioned on this deployment, not a zero balance).
[**getWorldCrew**](WorldAPI.md#getworldcrew) | **GET** /v1/world/crew | Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).
[**getWorldCrewChat**](WorldAPI.md#getworldcrewchat) | **GET** /v1/world/crew/chat | Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.
[**getWorldCrewLeaderboard**](WorldAPI.md#getworldcrewleaderboard) | **GET** /v1/world/crew/leaderboards | The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.
[**getWorldDm**](WorldAPI.md#getworlddm) | **GET** /v1/world/dms/{userId} | Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.
[**getWorldEmoteShowable**](WorldAPI.md#getworldemoteshowable) | **GET** /v1/world/emotes/showable | The things you own that a show-off emote can hold up.
[**getWorldFirefly**](WorldAPI.md#getworldfirefly) | **GET** /v1/world/fireflies | Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.
[**getWorldFitStat**](WorldAPI.md#getworldfitstat) | **GET** /v1/world/fits/stats | Your walking storefront, last 7 days: distinct people who tapped \&quot;Shop this\&quot; or \&quot;Offer\&quot; on what you wore, and how many of each. Counts only; nobody is identified.
[**getWorldFitValue**](WorldAPI.md#getworldfitvalue) | **GET** /v1/world/fit-value | What your outfit is worth on the market: cents (sum of each catalogued piece&#39;s order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).
[**getWorldGame**](WorldAPI.md#getworldgame) | **GET** /v1/world/games/{id} | One live game: its manifest, its store items and which you own.
[**getWorldGameLeaderboard**](WorldAPI.md#getworldgameleaderboard) | **GET** /v1/world/games/{id}/leaderboard | A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.
[**getWorldGamePackage**](WorldAPI.md#getworldgamepackage) | **GET** /v1/world/games/packages/{id} | One of your game packages with every version, its review state and decision note.
[**getWorldGamePackageStat**](WorldAPI.md#getworldgamepackagestat) | **GET** /v1/world/games/packages/{id}/stats | Play stats for one of your Classic games: 30-day totals, the daily series the launcher ranks on (uniques, sessions, playtime, first-play bounces, D1/D7/D28), its ranking score, test impressions and players right now. ?days&#x3D;1-90.
[**getWorldGamePackageVersion**](WorldAPI.md#getworldgamepackageversion) | **GET** /v1/world/games/packages/{id}/versions | Every version of one of your Classic games: draft, pending, approved, rejected, withdrawn or cancelled, which one is live, its documents and report.
[**getWorldGameTemplate**](WorldAPI.md#getworldgametemplate) | **GET** /v1/world/games/templates/{kind} | A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id&#x3D;my-game&amp;name&#x3D;My Game.
[**getWorldHall**](WorldAPI.md#getworldhall) | **GET** /v1/world/hall | The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one&#39;s title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.
[**getWorldHallLoan**](WorldAPI.md#getworldhallloan) | **GET** /v1/world/hall/loans | Lend to the Hall: this week&#39;s exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition&#39;s category. perMember is how many you may lend each week.
[**getWorldHomePlaceable**](WorldAPI.md#getworldhomeplaceable) | **GET** /v1/world/home/placeable | What you can place in your home: your items and your furniture.
[**getWorldHunt**](WorldAPI.md#getworldhunt) | **GET** /v1/world/hunt | Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.
[**getWorldHuntScoreboard**](WorldAPI.md#getworldhuntscoreboard) | **GET** /v1/world/hunt/scoreboard | The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \&quot;A player\&quot;) and total (everybody through the Gate this season).
[**getWorldInteractiveDesign**](WorldAPI.md#getworldinteractivedesign) | **GET** /v1/world/interactive/designs/{id} | One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.
[**getWorldJob**](WorldAPI.md#getworldjob) | **GET** /v1/world/jobs | The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.
[**getWorldKite**](WorldAPI.md#getworldkite) | **GET** /v1/world/kites | Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.
[**getWorldLantern**](WorldAPI.md#getworldlantern) | **GET** /v1/world/lanterns | Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.
[**getWorldLauncher**](WorldAPI.md#getworldlauncher) | **GET** /v1/worlds/launcher | The Carnival Plaza launcher: portals for Classic games, Crossly&#39;s own card games and the Commons card tables, each with players right now, your friends inside, its ranking score (published weights, retention-weighted, first-play bounce negative) and where Play goes. Twelve ring slots: friends&#39; pick, new &amp; rising (guaranteed test impressions), then the top, first-party capped at 25%.
[**getWorldManageLedger**](WorldAPI.md#getworldmanageledger) | **GET** /v1/world/manage/ledger | World money over 7, 30 or 90 days: plot purchases, maintenance, rent, deed sales, staff wages, shifts and stalls, in and out.
[**getWorldManageOverview**](WorldAPI.md#getworldmanageoverview) | **GET** /v1/world/manage/overview | Your Crossly World at a glance: shop and addresses, property, staff and shifts, conventions, stalls, 30-day visitors and money.
[**getWorldManageVisitor**](WorldAPI.md#getworldmanagevisitor) | **GET** /v1/world/manage/visitors | Who came to your world shop over 7, 30 or 90 days: the funnel, attention by day, most-looked and most-wanted items.
[**getWorldMarket**](WorldAPI.md#getworldmarket) | **GET** /v1/world/market/{kind}/{id} | One plot or street in the Market: price, renders, neighbours, foot traffic, history.
[**getWorldNeighbourhoodClaim**](WorldAPI.md#getworldneighbourhoodclaim) | **GET** /v1/world/neighbourhoods/{slug}/claim | Whether you may claim a plot on a neighbourhood street (its top sellers by recent sales), and why not.
[**getWorldPartyChat**](WorldAPI.md#getworldpartychat) | **GET** /v1/world/parties/{id}/chat | Your party chat: the recent lines. 404 when this is not your party.
[**getWorldPlaceBoard**](WorldAPI.md#getworldplaceboard) | **GET** /v1/world/places/{slug}/boards | The Trade Floor&#39;s wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).
[**getWorldPlaceCollection**](WorldAPI.md#getworldplacecollection) | **GET** /v1/world/places/{slug}/collections/{category}/{brand}/{model} | One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.
[**getWorldPlaceDrop**](WorldAPI.md#getworldplacedrop) | **GET** /v1/world/places/{slug}/drop | The owner&#39;s next drop (name, cover, time, live) and how many people are waiting in the room.
[**getWorldPlaceItemInterest**](WorldAPI.md#getworldplaceiteminterest) | **GET** /v1/world/places/{slug}/items/{itemId}/interest | How many people looked at one item in this room today.
[**getWorldPlaceLive**](WorldAPI.md#getworldplacelive) | **GET** /v1/world/places/{slug}/live | The owner&#39;s live sale: their stream and the lot on the block, or null.
[**getWorldPlaceSeller**](WorldAPI.md#getworldplaceseller) | **GET** /v1/world/places/{slug}/seller | The shop whose public room this is (username and name), or null.
[**getWorldPlaceShopPet**](WorldAPI.md#getworldplaceshoppet) | **GET** /v1/world/places/{slug}/shop-pet | The shop&#39;s pet kind, or null.
[**getWorldPropertyPlot**](WorldAPI.md#getworldpropertyplot) | **GET** /v1/world/property/plots/{plotId} | One plot of yours: showroom, rental, value, upkeep.
[**getWorldPropertyRental**](WorldAPI.md#getworldpropertyrental) | **GET** /v1/world/property/rentals/{leaseId} | One plot you rent out, with its payments.
[**getWorldPropertyRenting**](WorldAPI.md#getworldpropertyrenting) | **GET** /v1/world/property/renting/{leaseId} | One plot you rent, with its payments.
[**getWorldRail**](WorldAPI.md#getworldrail) | **GET** /v1/world/rails | Which Worlds payment rails are on now: cash (card), CBX, or both.
[**getWorldSpace**](WorldAPI.md#getworldspace) | **GET** /v1/world/spaces/{slug} | One Space: its layout, host, events and your place in it.
[**getWorldSpaceCanHost**](WorldAPI.md#getworldspacecanhost) | **GET** /v1/world/spaces/can-host | Whether you may open a Space: sellers only, at most two active.
[**getWorldStaffPosting**](WorldAPI.md#getworldstaffposting) | **GET** /v1/world/staff/postings/{id} | One of your postings, with its shifts.
[**getWorldStaffReputation**](WorldAPI.md#getworldstaffreputation) | **GET** /v1/world/staff/reputation | Your employer reputation, rated by the people who worked your public jobs.
[**getWorldStreetFund**](WorldAPI.md#getworldstreetfund) | **GET** /v1/world/streets/{slug}/fund | A street&#39;s fund: the CBX property payments on its plots over the last four weeks, and the street events it unlocked.
[**getWorldStreetOwned**](WorldAPI.md#getworldstreetowned) | **GET** /v1/world/streets/owned/{id} | A street you own: tenants, applications, upkeep, look, fund.
[**getWorldStreetTrespassBarrier**](WorldAPI.md#getworldstreettrespassbarrier) | **GET** /v1/world/streets/{slug}/trespass-barriers | Plot numbers on the street you are trespassed from.
[**getWorldTrialLeaderboard**](WorldAPI.md#getworldtrialleaderboard) | **GET** /v1/world/trials/{course}/leaderboard | A Time Trials course&#39;s boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week&#39;s ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \&quot;A player\&quot;. 404 for an unknown course; course 1 is commons-loop.
[**getWorldTrialMine**](WorldAPI.md#getworldtrialmine) | **GET** /v1/world/trials/mine | Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.
[**getWorldVenueQuote**](WorldAPI.md#getworldvenuequote) | **GET** /v1/world/venues/{id}/quote | What a hall costs for those days (startsOn, endsOn), the full-refund date, and whether it is free.
[**getWorldWallet**](WorldAPI.md#getworldwallet) | **GET** /v1/world/wallet | Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.
[**getWorldWish**](WorldAPI.md#getworldwish) | **GET** /v1/world/wishes | The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow&#39;s wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.
[**getWorldWorkEarning**](WorldAPI.md#getworldworkearning) | **GET** /v1/world/work/earnings | What your shifts paid, by rail.
[**getWorldWorkMine**](WorldAPI.md#getworldworkmine) | **GET** /v1/world/work/mine | Where you work: your seats, applications and your teams’ open jobs.
[**listGameCoupons**](WorldAPI.md#listgamecoupons) | **GET** /v1/games/coupons | Your fee-back coupons from house-game wins: Bucks paid out of the fee on your next market purchase.
[**listShowroomItemSearch**](WorldAPI.md#listshowroomitemsearch) | **GET** /v1/showrooms/{id}/item-search | Search this store&#39;s in-stock items (title, brand, SKU) to put on a fixture or in a window slot; each with listed / passport / multi_unit badges.
[**listShowrooms**](WorldAPI.md#listshowrooms) | **GET** /v1/showrooms | Your store&#39;s showrooms, primary first: name, visibility, auto-include, pinned items, fixtures, billing and the plots each stands on.
[**listSpatialLeases**](WorldAPI.md#listspatialleases) | **GET** /v1/spatial/leases | Plots offered for lease on every street, cheapest first: address, weekly rent and maintenance in CENTS.
[**listSpatialSceneGrants**](WorldAPI.md#listspatialscenegrants) | **GET** /v1/spatial/scenes/{id}/grants | Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.
[**listSpatialSceneWarehouseUnplaced**](WorldAPI.md#listspatialscenewarehouseunplaced) | **GET** /v1/spatial/scenes/{id}/warehouse/unplaced | Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).
[**listSpatialSharedWithMe**](WorldAPI.md#listspatialsharedwithme) | **GET** /v1/spatial/shared-with-me | Rooms other people let you into.
[**listSpatialStreetLeases**](WorldAPI.md#listspatialstreetleases) | **GET** /v1/spatial/streets/{slug}/leases | Plots on a street offered for lease: weekly rent in CENTS and terms.
[**listWorldAttendantUsage**](WorldAPI.md#listworldattendantusage) | **GET** /v1/world/attendant/usage | Your AI attendant’s usage log.
[**listWorldAvatarCloset**](WorldAPI.md#listworldavatarcloset) | **GET** /v1/world/avatar/closet | Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.
[**listWorldAvatarStock**](WorldAPI.md#listworldavatarstock) | **GET** /v1/world/avatar/stock | Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.
[**listWorldAvatarWearables**](WorldAPI.md#listworldavatarwearables) | **GET** /v1/world/avatar/wearables | Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.
[**listWorldBestDressed**](WorldAPI.md#listworldbestdressed) | **GET** /v1/world/best-dressed | This week&#39;s best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.
[**listWorldCapabilityDeclarations**](WorldAPI.md#listworldcapabilitydeclarations) | **GET** /v1/world/capabilities/declarations | Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).
[**listWorldContestStandings**](WorldAPI.md#listworldconteststandings) | **GET** /v1/world/contests/{id}/standings | The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.
[**listWorldContests**](WorldAPI.md#listworldcontests) | **GET** /v1/world/contests | Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.
[**listWorldConventionExhibitors**](WorldAPI.md#listworldconventionexhibitors) | **GET** /v1/world/conventions/{id}/exhibitors | The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.
[**listWorldConventionMessages**](WorldAPI.md#listworldconventionmessages) | **GET** /v1/world/conventions/{id}/messages | Convention messages you may read: the organiser all of them (?with&#x3D;&lt;userId&gt; for one seller), an exhibitor theirs and the broadcasts.
[**listWorldConventionMine**](WorldAPI.md#listworldconventionmine) | **GET** /v1/world/conventions/mine | Conventions you host and conventions you are exhibiting at.
[**listWorldConventions**](WorldAPI.md#listworldconventions) | **GET** /v1/world/conventions | Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).
[**listWorldCosmCosmetics**](WorldAPI.md#listworldcosmcosmetics) | **GET** /v1/world/cosm/cosmetics | The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.
[**listWorldCosmDesigns**](WorldAPI.md#listworldcosmdesigns) | **GET** /v1/world/cosm/designs | Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.
[**listWorldCosmInventory**](WorldAPI.md#listworldcosminventory) | **GET** /v1/world/cosm/inventory | Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.
[**listWorldDecorCatalogue**](WorldAPI.md#listworlddecorcatalogue) | **GET** /v1/world/decor/catalogue | The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.
[**listWorldDecorDesigns**](WorldAPI.md#listworlddecordesigns) | **GET** /v1/world/decor/designs | Your decor designs and their review state. available is false until COSM is provisioned.
[**listWorldDecorInventory**](WorldAPI.md#listworlddecorinventory) | **GET** /v1/world/decor/inventory | Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.
[**listWorldDecorMarket**](WorldAPI.md#listworlddecormarket) | **GET** /v1/world/decor/market | Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.
[**listWorldDecorMine**](WorldAPI.md#listworlddecormine) | **GET** /v1/world/decor/mine | Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.
[**listWorldDecorStalls**](WorldAPI.md#listworlddecorstalls) | **GET** /v1/world/decor/stalls | Your stall bookings, to dress their booths.
[**listWorldDecorStreets**](WorldAPI.md#listworlddecorstreets) | **GET** /v1/world/decor/streets | Streets you may dress.
[**listWorldDms**](WorldAPI.md#listworlddms) | **GET** /v1/world/dms | Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.
[**listWorldFollowingRooms**](WorldAPI.md#listworldfollowingrooms) | **GET** /v1/world/following/rooms | The public rooms of people you follow, to walk into.
[**listWorldFollows**](WorldAPI.md#listworldfollows) | **GET** /v1/world/follows | Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).
[**listWorldFriendHere**](WorldAPI.md#listworldfriendhere) | **GET** /v1/world/friends/here | Your friends in Crossly World right now, and where (when they share it).
[**listWorldFriends**](WorldAPI.md#listworldfriends) | **GET** /v1/world/friends | Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.
[**listWorldGamePackageReceipts**](WorldAPI.md#listworldgamepackagereceipts) | **GET** /v1/world/games/packages/{id}/receipts | Store sales of one of your game packages, newest first: item, price paid, edition, when. Never who bought. Cursor-paged: pass pagination.nextCursor back as ?cursor&#x3D;.
[**listWorldGamePackages**](WorldAPI.md#listworldgamepackages) | **GET** /v1/world/games/packages | Your game packages, each with its latest version and review state.
[**listWorldGameRewards**](WorldAPI.md#listworldgamerewards) | **GET** /v1/world/games/rewards | Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).
[**listWorldGames**](WorldAPI.md#listworldgames) | **GET** /v1/world/games | The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.
[**listWorldHomeBuilding**](WorldAPI.md#listworldhomebuilding) | **GET** /v1/world/home/building | Homes whose owner made you a co-builder.
[**listWorldInteractiveCatalogue**](WorldAPI.md#listworldinteractivecatalogue) | **GET** /v1/world/interactive/catalogue | Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.
[**listWorldInteractiveDesigns**](WorldAPI.md#listworldinteractivedesigns) | **GET** /v1/world/interactive/designs | Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null &#x3D; none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null &#x3D; not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. &#x60;archived&#x60;: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen in the Creator Studio on crossly.net (/studio/creator/creations/interactive/new/edit).
[**listWorldJobBoard**](WorldAPI.md#listworldjobboard) | **GET** /v1/world/jobs/board | The public Job Board, filterable.
[**listWorldJobPosted**](WorldAPI.md#listworldjobposted) | **GET** /v1/world/jobs/posted | Shifts you posted for your rooms, with who claimed each and how it went.
[**listWorldMarket**](WorldAPI.md#listworldmarket) | **GET** /v1/world/market | Plots and streets for sale or rent in the Worlds Market.
[**listWorldMarketStreetSigns**](WorldAPI.md#listworldmarketstreetsigns) | **GET** /v1/world/market/streets/{slug}/signs | The street&#39;s for-sale and for-rent boards.
[**listWorldOutfits**](WorldAPI.md#listworldoutfits) | **GET** /v1/world/outfits | Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.
[**listWorldPlaceBans**](WorldAPI.md#listworldplacebans) | **GET** /v1/world/places/{slug}/bans | Who is banned from a place you own (your boutique or home).
[**listWorldPlaceBundles**](WorldAPI.md#listworldplacebundles) | **GET** /v1/world/places/{slug}/bundles | The owner&#39;s bundle deals mapped onto this room&#39;s items (itemIds null &#x3D; any N from the shop). The discount is decided at checkout.
[**listWorldPlaceCollections**](WorldAPI.md#listworldplacecollections) | **GET** /v1/world/places/{slug}/collections | The owner&#39;s collection rooms: one per category, brand and model they collect.
[**listWorldPlaceOffers**](WorldAPI.md#listworldplaceoffers) | **GET** /v1/world/places/{slug}/offers | What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.
[**listWorldPlaceRadar**](WorldAPI.md#listworldplaceradar) | **GET** /v1/world/places/{slug}/radar | What you have that someone here wants, and what is here that you want: matched on catalog ids.
[**listWorldPlaceTradeTables**](WorldAPI.md#listworldplacetradetables) | **GET** /v1/world/places/{slug}/trade-tables | The open trade tables in a place: who is sitting and what is laid on the mat.
[**listWorldPlaceTrades**](WorldAPI.md#listworldplacetrades) | **GET** /v1/world/places/{slug}/trades | Items in this room open to trades, each with its trade post path.
[**listWorldPromoted**](WorldAPI.md#listworldpromoted) | **GET** /v1/world/promoted | Promoted places in Crossly World: boosted showrooms and conventions (Sponsored, labelled \&quot;Promoted\&quot;), with the token to send when one is opened.
[**listWorldPropertyPlots**](WorldAPI.md#listworldpropertyplots) | **GET** /v1/world/property/plots | Plots your store owns or rents.
[**listWorldPropertyRentals**](WorldAPI.md#listworldpropertyrentals) | **GET** /v1/world/property/rentals | Plots you rent out.
[**listWorldPropertyRenting**](WorldAPI.md#listworldpropertyrenting) | **GET** /v1/world/property/renting | Plots you rent.
[**listWorldPropertyTrespassed**](WorldAPI.md#listworldpropertytrespassed) | **GET** /v1/world/property/trespassed | People your store has banned, owner-wide or from one showroom.
[**listWorldProvenance**](WorldAPI.md#listworldprovenance) | **GET** /v1/world/provenance | Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds&#x3D;a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \&quot;Found at The Sneaker Vault, Oct 2026\&quot; }]. Yours only.
[**listWorldQuests**](WorldAPI.md#listworldquests) | **GET** /v1/world/quests | Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.
[**listWorldSpaceMine**](WorldAPI.md#listworldspacemine) | **GET** /v1/world/spaces/mine | Spaces you belong to.
[**listWorldSpaceRequests**](WorldAPI.md#listworldspacerequests) | **GET** /v1/world/spaces/{slug}/requests | As host or co-host, who asked to join.
[**listWorldSpaceWhatsOn**](WorldAPI.md#listworldspacewhatson) | **GET** /v1/world/spaces/whats-on | Live and upcoming events across Spaces (streets&#x3D;1 and stage&#x3D;1 add street and Main Stage events).
[**listWorldSpaces**](WorldAPI.md#listworldspaces) | **GET** /v1/world/spaces | The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).
[**listWorldStaffApplicants**](WorldAPI.md#listworldstaffapplicants) | **GET** /v1/world/staff/applicants | Who applied to your postings, with their worker reputation.
[**listWorldStaffPeople**](WorldAPI.md#listworldstaffpeople) | **GET** /v1/world/staff/people | Everyone working for you: your Settings team and public workers, with their seats.
[**listWorldStaffPlaces**](WorldAPI.md#listworldstaffplaces) | **GET** /v1/world/staff/places | The showrooms, stalls and conventions a job can be posted at, and the pay rails that are live.
[**listWorldStaffPostings**](WorldAPI.md#listworldstaffpostings) | **GET** /v1/world/staff/postings | Your job postings, with their upcoming shifts.
[**listWorldStaffShifts**](WorldAPI.md#listworldstaffshifts) | **GET** /v1/world/staff/shifts | Your scheduled seats and who is on them.
[**listWorldStreaks**](WorldAPI.md#listworldstreaks) | **GET** /v1/world/streaks | The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.
[**listWorldTradeMine**](WorldAPI.md#listworldtrademine) | **GET** /v1/world/trades/mine | Your trades and each item progress through the authentication gate (verified or failed).
[**listWorldTradeTableBinder**](WorldAPI.md#listworldtradetablebinder) | **GET** /v1/world/trade-tables/binder | Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).
[**listWorldTradeTableListings**](WorldAPI.md#listworldtradetablelistings) | **GET** /v1/world/trade-tables/listings | Your open Trade Block trade listings a trade table can be opened on in the world, each with its items&#39; names.
[**listWorldVenues**](WorldAPI.md#listworldvenues) | **GET** /v1/world/venues | The Convention Center halls for rent: size, floor, booths, price per day, and the days already taken (from, to).
[**updateShowroom**](WorldAPI.md#updateshowroom) | **PUT** /v1/showroom | Replace the whole showroom layout (room, fixtures, placements, settings). Validated as a whole: every item must be this store&#39;s, every pin must fit its fixture, no two pins share a slot. Send If-Match (or expectedVersion) to refuse with 409 version_conflict if it changed meanwhile.
[**updateShowroom2**](WorldAPI.md#updateshowroom2) | **PATCH** /v1/showroom | Apply showroom ops in order, all or nothing: place, move, remove, fill (from a category / tag / brand / collection / search, in price, age, value or title order), sort, clear, add_fixture, update_fixture, remove_fixture, set_room, set_settings. Idempotent; refusals name the op (details.opIndex) with codes slot_occupied, item_not_in_store, fixture_capacity, unknown_fixture, unknown_display, version_conflict.
[**updateShowroom3**](WorldAPI.md#updateshowroom3) | **PATCH** /v1/showrooms/{id} | Apply ops to one showroom in order, all or nothing (the same ops as PATCH /api/v1/showroom).
[**updateShowroomById**](WorldAPI.md#updateshowroombyid) | **PUT** /v1/showrooms/{id} | Replace one showroom&#39;s whole layout. If-Match (or expectedVersion) refuses with 409 version_conflict on a concurrent edit.
[**updateSpatialSceneCosmetic**](WorldAPI.md#updatespatialscenecosmetic) | **PATCH** /v1/spatial/scenes/{id}/cosmetics | Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. &#x60;clear&#x60; lists keys to reset.
[**updateSpatialSceneNode**](WorldAPI.md#updatespatialscenenode) | **PATCH** /v1/spatial/scenes/{id}/nodes/{nodeId} | Move a rack in one of your warehouse rooms (position in metres).
[**updateSpatialSceneSetting**](WorldAPI.md#updatespatialscenesetting) | **PATCH** /v1/spatial/scenes/{id}/settings | How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.
[**updateSpatialSceneShopLayout**](WorldAPI.md#updatespatialsceneshoplayout) | **PUT** /v1/spatial/scenes/{id}/shop/layout | Save your shop room&#39;s sections and displays (validated server-side; the response is the stored layout).
[**updateSpatialSceneWindow**](WorldAPI.md#updatespatialscenewindow) | **PUT** /v1/spatial/scenes/{id}/window | Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.
[**updateSpatialStreetDecor**](WorldAPI.md#updatespatialstreetdecor) | **PUT** /v1/spatial/streets/{slug}/decor | Dress a street you own with decor you hold (validated against your inventory).
[**updateSpatialStreetOwned**](WorldAPI.md#updatespatialstreetowned) | **PATCH** /v1/spatial/streets/owned/{id} | Who may open a shop on a street you own (open, apply or invite).
[**updateWorldAttendant**](WorldAPI.md#updateworldattendant) | **PUT** /v1/world/attendant | Create or replace your AI attendant (BYOK: switching it on needs your AI key).
[**updateWorldAvatarIdentity**](WorldAPI.md#updateworldavataridentity) | **PUT** /v1/world/avatar/identity | Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.
[**updateWorldAvatarLook**](WorldAPI.md#updateworldavatarlook) | **PUT** /v1/world/avatar/look | Save your world look to the account, so every device starts from it. look: null stays anonymous. appearance.outfit &#x3D; { top, outer, bottom, shoes, hat } picks the basic outfit (GET /v1/world/avatar/basics).
[**updateWorldAvatarNftBadge**](WorldAPI.md#updateworldavatarnftbadge) | **PUT** /v1/world/avatar/nft-badge | Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.
[**updateWorldCapabilityWear**](WorldAPI.md#updateworldcapabilitywear) | **PUT** /v1/world/capabilities/wear | Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.
[**updateWorldCollectionCapability**](WorldAPI.md#updateworldcollectioncapability) | **PUT** /v1/world/collections/{chain}/{contract}/capabilities | Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.
[**updateWorldControl**](WorldAPI.md#updateworldcontrol) | **PUT** /v1/world/controls | Save your world controls settings to the account (any subset of prefs; out-of-range values take the default) and/or mark the controls tutorial seen.
[**updateWorldConventionHall**](WorldAPI.md#updateworldconventionhall) | **PUT** /v1/world/conventions/{id}/hall | Save the hall design: { doc, expectedVersion }. Refused on overlaps, narrow aisles, too many booths or a booth with a seller removed.
[**updateWorldConventionMyBooth**](WorldAPI.md#updateworldconventionmybooth) | **PUT** /v1/world/conventions/{id}/my-booth | Pick what your booth shows: { listingIds } — any of your live listings, up to the tier’s capacity.
[**updateWorldConventionStatus**](WorldAPI.md#updateworldconventionstatus) | **PUT** /v1/world/conventions/{id}/status | Open, start, end or cancel a convention you host.
[**updateWorldCosmDesignChainAutoUnlock**](WorldAPI.md#updateworldcosmdesignchainautounlock) | **PUT** /v1/world/cosm/designs/{id}/chain-auto-unlock | Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.
[**updateWorldEmoteWheel**](WorldAPI.md#updateworldemotewheel) | **PUT** /v1/world/emotes/wheel | Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).
[**updateWorldFitValueShare**](WorldAPI.md#updateworldfitvalueshare) | **PUT** /v1/world/fit-value/share | Whether people in a room can see what your outfit is worth.
[**updateWorldHome**](WorldAPI.md#updateworldhome) | **PATCH** /v1/world/home | Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.
[**updateWorldHomeBuilder**](WorldAPI.md#updateworldhomebuilder) | **PUT** /v1/world/home/builders | Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.
[**updateWorldHomeLayout**](WorldAPI.md#updateworldhomelayout) | **PUT** /v1/world/home/layout | Arrange your home: the full layout (up to 200 pieces you own), validated server-side.
[**updateWorldHomeLayoutBySlug**](WorldAPI.md#updateworldhomelayoutbyslug) | **PUT** /v1/world/homes/{slug}/layout | Rearrange a home you co-build (never adding the owner bought pieces).
[**updateWorldInteractiveDesignDraft**](WorldAPI.md#updateworldinteractivedesigndraft) | **PUT** /v1/world/interactive/designs/{id}/draft | Save the draft MML source (up to 64 KB); the response carries its static check.
[**updateWorldListingHoldersOnly**](WorldAPI.md#updateworldlistingholdersonly) | **PUT** /v1/world/listings/{id}/holders-only | Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.
[**updateWorldOutfit**](WorldAPI.md#updateworldoutfit) | **PATCH** /v1/world/outfits/{id} | Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.
[**updateWorldPetActive**](WorldAPI.md#updateworldpetactive) | **PUT** /v1/world/pets/active | Walk one of your pets with you in the world, or none (kind: null).
[**updateWorldPropertyPlotPhoto**](WorldAPI.md#updateworldpropertyplotphoto) | **PUT** /v1/world/property/plots/{plotId}/photo | Store a plot&#39;s photo: an image of its frontage you uploaded through POST .../photo/upload-url, a render (buildKey must be the plot&#39;s current one) or an in-world capture.
[**updateWorldPropertyRenting**](WorldAPI.md#updateworldpropertyrenting) | **PATCH** /v1/world/property/renting/{leaseId} | Turn weekly autopay on or off (card leases).
[**updateWorldQuestPin**](WorldAPI.md#updateworldquestpin) | **PUT** /v1/world/quests/pin | Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.
[**updateWorldRoomHolderGate**](WorldAPI.md#updateworldroomholdergate) | **PUT** /v1/world/rooms/{id}/holder-gate | Make your room holders-only (its collection rooms follow). Send null to open it again. Returns &#x60;{ gate }&#x60;.
[**updateWorldSpace**](WorldAPI.md#updateworldspace) | **PATCH** /v1/world/spaces/{slug} | As host, change a Space name, about or membership.
[**updateWorldSpaceHolderGate**](WorldAPI.md#updateworldspaceholdergate) | **PUT** /v1/world/spaces/{slug}/holder-gate | Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns &#x60;{ gate }&#x60;.
[**updateWorldStaffPosting**](WorldAPI.md#updateworldstaffposting) | **PUT** /v1/world/staff/postings/{id} | Replace a posting; its future unstaffed shifts are re-made.
[**updateWorldStallBookingBooth**](WorldAPI.md#updateworldstallbookingbooth) | **PUT** /v1/world/stalls/bookings/{id}/booth | Dress the booth of a stall you booked (decor you hold).
[**updateWorldStreetOwnedTheme**](WorldAPI.md#updateworldstreetownedtheme) | **PUT** /v1/world/streets/owned/{id}/theme | Set your street&#39;s theme.


# **createGamePackBreak**
```swift
    open class func createGamePackBreak(completion: @escaping (_ data: CreateGamePackBreakResponse?, _ error: Error?) -> Void)
```

Pack Break: your open pack of five real market pieces, or a fresh one. No prices until you pick.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Pack Break: your open pack of five real market pieces, or a fresh one. No prices until you pick.
WorldAPI.createGamePackBreak() { (response, error) in
    guard error == nil else {
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

**CreateGamePackBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGamePackBreakPick**
```swift
    open class func createGamePackBreakPick(id: String, completion: @escaping (_ data: CreateGamePackBreakPickResponse?, _ error: Error?) -> Void)
```

Pick the pull you think is worth the most: every lowest open ask is revealed, and a win earns a fee-back coupon.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pick the pull you think is worth the most: every lowest open ask is revealed, and a win earns a fee-back coupon.
WorldAPI.createGamePackBreakPick(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateGamePackBreakPickResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createShowroom**
```swift
    open class func createShowroom(storefrontId: UUID? = nil, completion: @escaping (_ data: CreateShowroomResponse?, _ error: Error?) -> Void)
```

Add a showroom. The first is included; an extra one has a monthly fee and is added in the dashboard (402 world_payment_failed here).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Add a showroom. The first is included; an extra one has a monthly fee and is added in the dashboard (402 world_payment_failed here).
WorldAPI.createShowroom(storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**CreateShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createShowroomPlacement**
```swift
    open class func createShowroomPlacement(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: CreateShowroomPlacementResponse?, _ error: Error?) -> Void)
```

Stand a showroom on a plot your store owns or rents (403 when it does not; 409 when another showroom stands there).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Stand a showroom on a plot your store owns or rents (403 when it does not; 409 when another showroom stands there).
WorldAPI.createShowroomPlacement(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**CreateShowroomPlacementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialInviteAccept**
```swift
    open class func createSpatialInviteAccept(completion: @escaping (_ data: CreateSpatialInviteAcceptResponse?, _ error: Error?) -> Void)
```

Redeem an invite code (dashes optional); returns the room it opens.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Redeem an invite code (dashes optional); returns the room it opens.
WorldAPI.createSpatialInviteAccept() { (response, error) in
    guard error == nil else {
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

**CreateSpatialInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyLeaseWithdraw**
```swift
    open class func createSpatialPropertyLeaseWithdraw(id: String, completion: @escaping (_ data: DeleteDaoProposalResponse?, _ error: Error?) -> Void)
```

Withdraw a lease offer nobody has accepted yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw a lease offer nobody has accepted yet.
WorldAPI.createSpatialPropertyLeaseWithdraw(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialScene**
```swift
    open class func createSpatialScene(createSpatialSceneRequest: CreateSpatialSceneRequest, completion: @escaping (_ data: SpatialSceneResponse?, _ error: Error?) -> Void)
```

Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createSpatialSceneRequest = CreateSpatialSceneRequest(kind: "kind_example", name: "name_example", categorySlug: "categorySlug_example") // CreateSpatialSceneRequest | 

// Start a 3D room: a collection (your items on shelves) or a warehouse (racks you arrange). Private until you make it public.
WorldAPI.createSpatialScene(createSpatialSceneRequest: createSpatialSceneRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSpatialSceneRequest** | **CreateSpatialSceneRequest** |  | 

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneGrant**
```swift
    open class func createSpatialSceneGrant(id: String, completion: @escaping (_ data: CreateSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Let a specific user into one of your rooms (visitor or staff), no code needed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Let a specific user into one of your rooms (visitor or staff), no code needed.
WorldAPI.createSpatialSceneGrant(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneInvite**
```swift
    open class func createSpatialSceneInvite(id: String, completion: @escaping (_ data: CreateSpatialSceneInviteResponse?, _ error: Error?) -> Void)
```

Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mint an invite code to one of your rooms (visitor or staff, optional expiry in hours). The code is in this response only: just its hash is stored.
WorldAPI.createSpatialSceneInvite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialSceneInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneNode**
```swift
    open class func createSpatialSceneNode(id: String, completion: @escaping (_ data: CreateSpatialSceneNodeResponse?, _ error: Error?) -> Void)
```

Add a unit (rack, shelf, bin) to one of your warehouse rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add a unit (rack, shelf, bin) to one of your warehouse rooms.
WorldAPI.createSpatialSceneNode(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialScenePlace**
```swift
    open class func createSpatialScenePlace(id: String, completion: @escaping (_ data: CreateSpatialScenePlaceResponse?, _ error: Error?) -> Void)
```

Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pin an inventory item to a slot in one of your rooms: by warehouse nodeId, or by a collection container key and index.
WorldAPI.createSpatialScenePlace(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialScenePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneRename**
```swift
    open class func createSpatialSceneRename(id: String, createSpatialSceneRenameRequest: CreateSpatialSceneRenameRequest, completion: @escaping (_ data: SpatialSceneResponse?, _ error: Error?) -> Void)
```

Rename one of your rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let createSpatialSceneRenameRequest = CreateSpatialSceneRenameRequest(name: "name_example") // CreateSpatialSceneRenameRequest | 

// Rename one of your rooms.
WorldAPI.createSpatialSceneRename(id: id, createSpatialSceneRenameRequest: createSpatialSceneRenameRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **createSpatialSceneRenameRequest** | **CreateSpatialSceneRenameRequest** |  | 

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneShopPlace**
```swift
    open class func createSpatialSceneShopPlace(id: String, completion: @escaping (_ data: CreateSpatialSceneShopPlaceResponse?, _ error: Error?) -> Void)
```

Place an inventory item in a section and display of your shop room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Place an inventory item in a section and display of your shop room.
WorldAPI.createSpatialSceneShopPlace(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialSceneShopPlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneUnpin**
```swift
    open class func createSpatialSceneUnpin(id: String, completion: @escaping (_ data: DeleteSpatialSceneNodeResponse?, _ error: Error?) -> Void)
```

Clear every pin in one of your rooms, so it arranges itself again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Clear every pin in one of your rooms, so it arranges itself again.
WorldAPI.createSpatialSceneUnpin(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneVisibility**
```swift
    open class func createSpatialSceneVisibility(id: String, createSpatialSceneVisibilityRequest: CreateSpatialSceneVisibilityRequest, completion: @escaping (_ data: SpatialSceneResponse?, _ error: Error?) -> Void)
```

Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let createSpatialSceneVisibilityRequest = CreateSpatialSceneVisibilityRequest(visibility: "visibility_example") // CreateSpatialSceneVisibilityRequest | 

// Make one of your rooms private, unlisted (anyone with the link) or public (in the lobby and searchable).
WorldAPI.createSpatialSceneVisibility(id: id, createSpatialSceneVisibilityRequest: createSpatialSceneVisibilityRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **createSpatialSceneVisibilityRequest** | **CreateSpatialSceneVisibilityRequest** |  | 

### Return type

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialSceneWarehouseStock**
```swift
    open class func createSpatialSceneWarehouseStock(id: String, completion: @escaping (_ data: CreateSpatialScenePlaceResponse?, _ error: Error?) -> Void)
```

Put an inventory item (or unit) on a rack in one of your warehouse rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Put an inventory item (or unit) on a rack in one of your warehouse rooms.
WorldAPI.createSpatialSceneWarehouseStock(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialScenePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetApply**
```swift
    open class func createSpatialStreetApply(slug: String, completion: @escaping (_ data: CreateSpatialStreetApplyResponse?, _ error: Error?) -> Void)
```

Ask to open your shop on a street whose owner reviews applications.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Ask to open your shop on a street whose owner reviews applications.
WorldAPI.createSpatialStreetApply(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialStreetApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetInvite**
```swift
    open class func createSpatialStreetInvite(slug: String, completion: @escaping (_ data: CreateSpatialStreetApplyResponse?, _ error: Error?) -> Void)
```

Invite a shop (by its slug) to open on a street you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Invite a shop (by its slug) to open on a street you own.
WorldAPI.createSpatialStreetInvite(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateSpatialStreetApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldAttendantTestChat**
```swift
    open class func createWorldAttendantTestChat(completion: @escaping (_ data: CreateWorldAttendantTestChatResponse?, _ error: Error?) -> Void)
```

One test answer from your AI attendant, on your own AI key (409 ai_key_required without one).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// One test answer from your AI attendant, on your own AI key (409 ai_key_required without one).
WorldAPI.createWorldAttendantTestChat() { (response, error) in
    guard error == nil else {
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

**CreateWorldAttendantTestChatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldAvatarEquip**
```swift
    open class func createWorldAvatarEquip(createWorldAvatarEquipRequest: CreateWorldAvatarEquipRequest, completion: @escaping (_ data: CreateWorldAvatarEquipResponse?, _ error: Error?) -> Void)
```

Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldAvatarEquipRequest = CreateWorldAvatarEquipRequest(cosmeticId: 123, receiptId: 123, inventoryItemId: 123, slot: "slot_example") // CreateWorldAvatarEquipRequest | 

// Wear something you already own -- exactly ONE of { cosmeticId } (a cosmetic you hold), { receiptId } (a Crossly purchase from your closet) or { inventoryItemId } (your own stock). The slot comes from the thing itself; slot is only a fallback for an item with no catalog shape. Replaces whatever was in that slot. Moves no money. Answers the slot and your loadout after the change.
WorldAPI.createWorldAvatarEquip(createWorldAvatarEquipRequest: createWorldAvatarEquipRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldAvatarEquipRequest** | **CreateWorldAvatarEquipRequest** |  | 

### Return type

**CreateWorldAvatarEquipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldAvatarUnequip**
```swift
    open class func createWorldAvatarUnequip(createWorldAvatarUnequipRequest: CreateWorldAvatarUnequipRequest, completion: @escaping (_ data: CreateWorldAvatarUnequipResponse?, _ error: Error?) -> Void)
```

Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldAvatarUnequipRequest = CreateWorldAvatarUnequipRequest(slot: "slot_example") // CreateWorldAvatarUnequipRequest | 

// Take off whatever is in one slot. Idempotent: an empty slot answers removed:false. Answers your loadout after the change.
WorldAPI.createWorldAvatarUnequip(createWorldAvatarUnequipRequest: createWorldAvatarUnequipRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldAvatarUnequipRequest** | **CreateWorldAvatarUnequipRequest** |  | 

### Return type

**CreateWorldAvatarUnequipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldAvatarWearable**
```swift
    open class func createWorldAvatarWearable(completion: @escaping (_ data: CreateWorldAvatarWearableResponse?, _ error: Error?) -> Void)
```

Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Author a wearable for a body slot (a mesh profile and params, an asking price in COSM base units as a string). A submission: inactive until an operator approves it.
WorldAPI.createWorldAvatarWearable() { (response, error) in
    guard error == nil else {
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

**CreateWorldAvatarWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldContest**
```swift
    open class func createWorldContest(completion: @escaping (_ data: CreateWorldContestResponse?, _ error: Error?) -> Void)
```

Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set up a skill contest on a game placed in your place: title, game (its instance id), entry { mode, feeCents? }, prizes by place, funder, window, attempts. Paid entry needs the operator to allow it where it runs.
WorldAPI.createWorldContest() { (response, error) in
    guard error == nil else {
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

**CreateWorldContestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldContestEntrySettlePayment**
```swift
    open class func createWorldContestEntrySettlePayment(id: String, completion: @escaping (_ data: CreateWorldContestEntrySettlePaymentResponse?, _ error: Error?) -> Void)
```

Read the fee of a paid entry back from Stripe and settle it (safe to repeat).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Read the fee of a paid entry back from Stripe and settle it (safe to repeat).
WorldAPI.createWorldContestEntrySettlePayment(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldContestEntrySettlePaymentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldContestJoin**
```swift
    open class func createWorldContestJoin(id: String, completion: @escaping (_ data: CreateWorldContestJoinResponse?, _ error: Error?) -> Void)
```

Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Enter a contest. Free and sponsored contests take you in at once; a paid one answers a client secret to pay the entry fee.
WorldAPI.createWorldContestJoin(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldContestJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConvention**
```swift
    open class func createWorldConvention(completion: @escaping (_ data: CreateWorldConventionResponse?, _ error: Error?) -> Void)
```

Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Host a convention in one of your rooms: title, dates, tables and how sellers get one (invite, free, a fee in cents, or a revenue share in basis points).
WorldAPI.createWorldConvention() { (response, error) in
    guard error == nil else {
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

**CreateWorldConventionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionAccept**
```swift
    open class func createWorldConventionAccept(id: String, completion: @escaping (_ data: CreateWorldConventionAcceptResponse?, _ error: Error?) -> Void)
```

Accept: your own invitation (no body), or, as host, an application (username).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept: your own invitation (no body), or, as host, an application (username).
WorldAPI.createWorldConventionAccept(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionApply**
```swift
    open class func createWorldConventionApply(id: String, completion: @escaping (_ data: CreateWorldConventionApplyResponse?, _ error: Error?) -> Void)
```

Ask for a table at a convention.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Ask for a table at a convention.
WorldAPI.createWorldConventionApply(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionBoothApply**
```swift
    open class func createWorldConventionBoothApply(id: String, completion: @escaping (_ data: CreateWorldConventionBoothApplyResponse?, _ error: Error?) -> Void)
```

Apply for a booth tier (or book it at once in open mode): { tierId, note?, categories? }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Apply for a booth tier (or book it at once in open mode): { tierId, note?, categories? }.
WorldAPI.createWorldConventionBoothApply(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionBoothApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionBoothFee**
```swift
    open class func createWorldConventionBoothFee(id: String, completion: @escaping (_ data: CreateWorldConventionBoothFeeResponse?, _ error: Error?) -> Void)
```

Pay your booth fee to the organiser on a Worlds rail: { rail: \"cash\" | \"cbx\" }. Once per booth. Full-access token and Idempotency-Key required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pay your booth fee to the organiser on a Worlds rail: { rail: \"cash\" | \"cbx\" }. Once per booth. Full-access token and Idempotency-Key required.
WorldAPI.createWorldConventionBoothFee(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionBoothFeeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionCheckIn**
```swift
    open class func createWorldConventionCheckIn(id: String, completion: @escaping (_ data: CreateWorldConventionCheckInResponse?, _ error: Error?) -> Void)
```

Check in: the organiser names { exhibitorId }; an exhibitor checks themselves in with {}.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Check in: the organiser names { exhibitorId }; an exhibitor checks themselves in with {}.
WorldAPI.createWorldConventionCheckIn(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionCheckInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionFull**
```swift
    open class func createWorldConventionFull(completion: @escaping (_ data: GetWorldConventionManageResponse?, _ error: Error?) -> Void)
```

Create a convention in full: venue + days (rented and paid now on the rail), hours, theme, booth tiers and prices, application or open booking, seller limits, promotion. Full-access token and Idempotency-Key required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a convention in full: venue + days (rented and paid now on the rail), hours, theme, booth tiers and prices, application or open booking, seller limits, promotion. Full-access token and Idempotency-Key required.
WorldAPI.createWorldConventionFull() { (response, error) in
    guard error == nil else {
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

**GetWorldConventionManageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionInvite**
```swift
    open class func createWorldConventionInvite(id: String, completion: @escaping (_ data: CreateWorldSpaceInviteResponse?, _ error: Error?) -> Void)
```

Invite a seller (by shop handle) to a convention you host.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Invite a seller (by shop handle) to a convention you host.
WorldAPI.createWorldConventionInvite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldSpaceInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionMessage**
```swift
    open class func createWorldConventionMessage(id: String, completion: @escaping (_ data: CreateWorldConventionMessageResponse?, _ error: Error?) -> Void)
```

Send a convention message: { body, toUserId? }. The organiser writes to one seller or every seller; an exhibitor writes to the organiser.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Send a convention message: { body, toUserId? }. The organiser writes to one seller or every seller; an exhibitor writes to the organiser.
WorldAPI.createWorldConventionMessage(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionPaid**
```swift
    open class func createWorldConventionPaid(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

As host, record that a seller (username) paid their table fee off-platform. Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// As host, record that a seller (username) paid their table fee off-platform. Moves no money.
WorldAPI.createWorldConventionPaid(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **createWorldConventionSellerAssign**
```swift
    open class func createWorldConventionSellerAssign(id: String, completion: @escaping (_ data: CreateWorldConventionSellerAssignResponse?, _ error: Error?) -> Void)
```

Move an accepted seller to another booth of their tier (swaps with whoever is there): { exhibitorId, boothKey }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Move an accepted seller to another booth of their tier (swaps with whoever is there): { exhibitorId, boothKey }.
WorldAPI.createWorldConventionSellerAssign(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionSellerAssignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionSellerDecide**
```swift
    open class func createWorldConventionSellerDecide(id: String, completion: @escaping (_ data: CreateWorldConventionBoothApplyResponse?, _ error: Error?) -> Void)
```

Approve (terms frozen, a booth assigned) or decline an application: { exhibitorId, decision }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Approve (terms frozen, a booth assigned) or decline an application: { exhibitorId, decision }.
WorldAPI.createWorldConventionSellerDecide(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldConventionBoothApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldConventionWithdraw**
```swift
    open class func createWorldConventionWithdraw(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Withdraw your table or decline your invitation; as host, decline someone (username).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw your table or decline your invitation; as host, decline someone (username).
WorldAPI.createWorldConventionWithdraw(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **createWorldCrew**
```swift
    open class func createWorldCrew(createWorldCrewRequest: CreateWorldCrewRequest, completion: @escaping (_ data: CreateWorldCrewResponse?, _ error: Error?) -> Void)
```

Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members' nameplates) }. Answers its id and join code. 409 when you are already in a crew.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldCrewRequest = CreateWorldCrewRequest(name: "name_example", tag: "tag_example") // CreateWorldCrewRequest | 

// Start a crew you own: { name (2-32 chars), tag (2-5 letters or digits, shown on members' nameplates) }. Answers its id and join code. 409 when you are already in a crew.
WorldAPI.createWorldCrew(createWorldCrewRequest: createWorldCrewRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldCrewRequest** | **CreateWorldCrewRequest** |  | 

### Return type

**CreateWorldCrewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldCrewChat**
```swift
    open class func createWorldCrewChat(createWorldCrewChatRequest: CreateWorldCrewChatRequest, completion: @escaping (_ data: WorldResponse?, _ error: Error?) -> Void)
```

Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldCrewChatRequest = CreateWorldCrewChatRequest(text: "text_example") // CreateWorldCrewChatRequest | 

// Say a line to your crew (body: text, up to 400 characters). Returns data.messages, the crew chat ring (the last 50 lines, kept in memory only), and data.said when your line went out; a blocked or too-quick line is dropped silently. 404 when you are in no crew.
WorldAPI.createWorldCrewChat(createWorldCrewChatRequest: createWorldCrewChatRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldCrewChatRequest** | **CreateWorldCrewChatRequest** |  | 

### Return type

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldCrewJoin**
```swift
    open class func createWorldCrewJoin(createWorldCrewJoinRequest: CreateWorldCrewJoinRequest, completion: @escaping (_ data: CreateWorldCrewJoinResponse?, _ error: Error?) -> Void)
```

Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldCrewJoinRequest = CreateWorldCrewJoinRequest(code: "code_example") // CreateWorldCrewJoinRequest | 

// Join a crew by the code a member gave you. 404 for an unknown code, 409 when you are already in a crew or it is full (30).
WorldAPI.createWorldCrewJoin(createWorldCrewJoinRequest: createWorldCrewJoinRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldCrewJoinRequest** | **CreateWorldCrewJoinRequest** |  | 

### Return type

**CreateWorldCrewJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldCrewLeave**
```swift
    open class func createWorldCrewLeave(completion: @escaping (_ data: CreateWorldCrewLeaveResponse?, _ error: Error?) -> Void)
```

Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Leave your crew. If you own it, the crew is disbanded. Idempotent: leaving when in none succeeds.
WorldAPI.createWorldCrewLeave() { (response, error) in
    guard error == nil else {
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

**CreateWorldCrewLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldDecorDesign**
```swift
    open class func createWorldDecorDesign(completion: @escaping (_ data: CreateWorldDecorDesignResponse?, _ error: Error?) -> Void)
```

Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Author a decor design (what it unlocks, a mesh profile and params, an asking price in COSM base units as a string). Inactive until an operator approves it.
WorldAPI.createWorldDecorDesign() { (response, error) in
    guard error == nil else {
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

**CreateWorldDecorDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldDecorDesignSubmit**
```swift
    open class func createWorldDecorDesignSubmit(id: String, completion: @escaping (_ data: CreateWorldDecorDesignSubmitResponse?, _ error: Error?) -> Void)
```

Send one of your decor designs to the review queue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Send one of your decor designs to the review queue.
WorldAPI.createWorldDecorDesignSubmit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldDecorDesignSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldDecorRetract**
```swift
    open class func createWorldDecorRetract(completion: @escaping (_ data: CreateWorldDecorRetractResponse?, _ error: Error?) -> Void)
```

Take a placed decor piece back into your inventory; answers the inventory after.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Take a placed decor piece back into your inventory; answers the inventory after.
WorldAPI.createWorldDecorRetract() { (response, error) in
    guard error == nil else {
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

**CreateWorldDecorRetractResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldDm**
```swift
    open class func createWorldDm(userId: String, createWorldCrewChatRequest: CreateWorldCrewChatRequest, completion: @escaping (_ data: CreateWorldDmResponse?, _ error: Error?) -> Void)
```

Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = "userId_example" // String | 
let createWorldCrewChatRequest = CreateWorldCrewChatRequest(text: "text_example") // CreateWorldCrewChatRequest | 

// Send a direct message to a friend (a mutual follow; never across a block), up to 400 characters, through the world chat guard. 403 when they are not a friend, 429 when sent too quickly.
WorldAPI.createWorldDm(userId: userId, createWorldCrewChatRequest: createWorldCrewChatRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** |  | 
 **createWorldCrewChatRequest** | **CreateWorldCrewChatRequest** |  | 

### Return type

**CreateWorldDmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldFollow**
```swift
    open class func createWorldFollow(userId: String, completion: @escaping (_ data: CreateWorldFollowResponse?, _ error: Error?) -> Void)
```

Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = "userId_example" // String | 

// Follow somebody. When they follow you back you are friends (friends-here, invites, messages). Idempotent.
WorldAPI.createWorldFollow(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** |  | 

### Return type

**CreateWorldFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldFriendInvite**
```swift
    open class func createWorldFriendInvite(userId: UUID, createWorldFriendInviteRequest: CreateWorldFriendInviteRequest, completion: @escaping (_ data: CreateWorldFriendInviteResponse?, _ error: Error?) -> Void)
```

\"Join me\": send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = 987 // UUID | 
let createWorldFriendInviteRequest = CreateWorldFriendInviteRequest(slug: "slug_example") // CreateWorldFriendInviteRequest | 

// \"Join me\": send one friend (a mutual follow) a notification with a link to the PUBLIC room you name by slug. 404 when they are not a friend or the room is not public; 429 when you invited them in the last minute.
WorldAPI.createWorldFriendInvite(userId: userId, createWorldFriendInviteRequest: createWorldFriendInviteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** |  | 
 **createWorldFriendInviteRequest** | **CreateWorldFriendInviteRequest** |  | 

### Return type

**CreateWorldFriendInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackage**
```swift
    open class func createWorldGamePackage(completion: @escaping (_ data: CreateWorldGamePackageResponse?, _ error: Error?) -> Void)
```

Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Submit a game package version for review: files as { path, base64 } (game.json, thumb.png, logic/, scene/, audio/, images/). Checked like the CLI, assets quarantined, the entry document dry-run, then reviewed by a person.
WorldAPI.createWorldGamePackage() { (response, error) in
    guard error == nil else {
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

**CreateWorldGamePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackageCheck**
```swift
    open class func createWorldGamePackageCheck(completion: @escaping (_ data: CreateWorldGamePackageCheckResponse?, _ error: Error?) -> Void)
```

Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Validate a game package exactly as a submission is checked (the shared intake report, your version still free) without storing, uploading or queuing anything: world-kit validate for an agent. Same files body as submit.
WorldAPI.createWorldGamePackageCheck() { (response, error) in
    guard error == nil else {
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

**CreateWorldGamePackageCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackagePublish**
```swift
    open class func createWorldGamePackagePublish(id: String, completion: @escaping (_ data: CreateWorldGamePackagePublishResponse?, _ error: Error?) -> Void)
```

Make an approved version the one every placed copy runs (rollback or roll-forward; running copies restart on it) and list the game again if it was unpublished. Body { version }. Starter seller plan or higher.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make an approved version the one every placed copy runs (rollback or roll-forward; running copies restart on it) and list the game again if it was unpublished. Body { version }. Starter seller plan or higher.
WorldAPI.createWorldGamePackagePublish(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldGamePackagePublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackageRestore**
```swift
    open class func createWorldGamePackageRestore(id: String, completion: @escaping (_ data: CreateWorldGamePackageRestoreResponse?, _ error: Error?) -> Void)
```

Restore a deleted Classic game within 30 days (it comes back unpublished).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Restore a deleted Classic game within 30 days (it comes back unpublished).
WorldAPI.createWorldGamePackageRestore(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldGamePackageRestoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackageUnpublish**
```swift
    open class func createWorldGamePackageUnpublish(id: String, completion: @escaping (_ data: CreateWorldGamePackageUnpublishResponse?, _ error: Error?) -> Void)
```

Take a Classic game off the Game Directory and the Carnival Plaza launcher, its store off sale. Copies people already placed keep running. Needs no plan: a lapsed creator can always take a game down.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take a Classic game off the Game Directory and the Carnival Plaza launcher, its store off sale. Copies people already placed keep running. Needs no plan: a lapsed creator can always take a game down.
WorldAPI.createWorldGamePackageUnpublish(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldGamePackageUnpublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGamePackageVersionSubmit**
```swift
    open class func createWorldGamePackageVersionSubmit(id: String, semver: String, completion: @escaping (_ data: CreateWorldGamePackageVersionSubmitResponse?, _ error: Error?) -> Void)
```

Send a draft version (uploaded with submit: false) to review: the same static check, sandbox dry run and human review as an upload. Starter seller plan or higher.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let semver = "semver_example" // String | 

// Send a draft version (uploaded with submit: false) to review: the same static check, sandbox dry run and human review as an upload. Starter seller plan or higher.
WorldAPI.createWorldGamePackageVersionSubmit(id: id, semver: semver) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **semver** | **String** |  | 

### Return type

**CreateWorldGamePackageVersionSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGameRating**
```swift
    open class func createWorldGameRating(id: String, completion: @escaping (_ data: CreateWorldGameRatingResponse?, _ error: Error?) -> Void)
```

Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rate a game you played, 1 to 5 stars (rating again replaces it). Only players the runner recorded in that game can rate it.
WorldAPI.createWorldGameRating(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldGameRatingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGameReport**
```swift
    open class func createWorldGameReport(id: String, completion: @escaping (_ data: CreateWorldGameReportResponse?, _ error: Error?) -> Void)
```

Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Report a game: reason broken | unfair | offensive | scam | other, optional detail. Staff review it; the creator is told the reason, never who.
WorldAPI.createWorldGameReport(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldGameReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGameStoreCheckout**
```swift
    open class func createWorldGameStoreCheckout(id: String, item: String, completion: @escaping (_ data: CreateWorldGameStoreCheckoutResponse?, _ error: Error?) -> Void)
```

Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let item = "item_example" // String | 

// Buy an item or pass from a game store: answers a client secret for the payment; the item is yours once it succeeds.
WorldAPI.createWorldGameStoreCheckout(id: id, item: item) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **item** | **String** |  | 

### Return type

**CreateWorldGameStoreCheckoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldGrailMatch**
```swift
    open class func createWorldGrailMatch(completion: @escaping (_ data: CreateWorldGrailMatchResponse?, _ error: Error?) -> Void)
```

Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Grail glints: send the ids on show somewhere (listingIds -- listings.id, inventoryIds, skuIds -- catalogue market SKUs; up to 400 each) and get back data.listingIds / data.inventoryIds / data.skuIds: the ones that are things you already want -- an open bid, a watched or wishlisted listing (or one selling the same SKU), a market watch, or a card your deck is missing. Read-only.
WorldAPI.createWorldGrailMatch() { (response, error) in
    guard error == nil else {
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

**CreateWorldGrailMatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldHallLoan**
```swift
    open class func createWorldHallLoan(completion: @escaping (_ data: CreateWorldHallLoanResponse?, _ error: Error?) -> Void)
```

Lend a piece from your vault to this week's Hall of Grails exhibition: { vaultItemId, credit: 'name' | 'anonymous' }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Lend a piece from your vault to this week's Hall of Grails exhibition: { vaultItemId, credit: 'name' | 'anonymous' }. It shows under your plaque until the exhibition ends; it stays in your vault (still listable and withdrawable), and stops showing if it leaves.
WorldAPI.createWorldHallLoan() { (response, error) in
    guard error == nil else {
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

**CreateWorldHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldHomeAsk**
```swift
    open class func createWorldHomeAsk(slug: String, completion: @escaping (_ data: CreateWorldHomeAskResponse?, _ error: Error?) -> Void)
```

Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Ask a home owner whether they would sell a piece you saw there (an item or a decor piece).
WorldAPI.createWorldHomeAsk(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldHomeAskResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldHomeGuestbook**
```swift
    open class func createWorldHomeGuestbook(slug: String, completion: @escaping (_ data: CreateWorldHomeGuestbookResponse?, _ error: Error?) -> Void)
```

Sign a home guestbook (one short line).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Sign a home guestbook (one short line).
WorldAPI.createWorldHomeGuestbook(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldHomeGuestbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldHomeGuestbookReport**
```swift
    open class func createWorldHomeGuestbookReport(slug: String, id: String, completion: @escaping (_ data: CreateWorldGameReportResponse?, _ error: Error?) -> Void)
```

Report a guestbook entry to moderation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let id = "id_example" // String | 

// Report a guestbook entry to moderation.
WorldAPI.createWorldHomeGuestbookReport(slug: slug, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **id** | **String** |  | 

### Return type

**CreateWorldGameReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldHuntStart**
```swift
    open class func createWorldHuntStart(completion: @escaping (_ data: GetWorldHuntResponse?, _ error: Error?) -> Void)
```

Start the Great Hunt this season by reading its first riddle (the Copper key's). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start the Great Hunt this season by reading its first riddle (the Copper key's). Idempotent: starting again answers your progress unchanged. Answers the same shape as GET /v1/world/hunt. 409 when no season is running.
WorldAPI.createWorldHuntStart() { (response, error) in
    guard error == nil else {
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

**GetWorldHuntResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveAsset**
```swift
    open class func createWorldInteractiveAsset(completion: @escaping (_ data: CreateWorldInteractiveAssetResponse?, _ error: Error?) -> Void)
```

Upload one asset: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64; purpose product (your designs, the default) or game (Carnival Studio files such as badge icons). Answers its sha256 and the path to reference from MML.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Upload one asset: kind glb (4 MB), wav (4 MB) or png (1 MB), the file as base64; purpose product (your designs, the default) or game (Carnival Studio files such as badge icons). Answers its sha256 and the path to reference from MML.
WorldAPI.createWorldInteractiveAsset() { (response, error) in
    guard error == nil else {
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

**CreateWorldInteractiveAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveDesign**
```swift
    open class func createWorldInteractiveDesign(completion: @escaping (_ data: GetWorldInteractiveDesignResponse?, _ error: Error?) -> Void)
```

Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create an interactive design: name, footprint (s, m, l or f), optional tint and description, an asking price in COSM base units (a string, six decimals) and optional max supply. Inactive until ops approve a submitted version.
WorldAPI.createWorldInteractiveDesign() { (response, error) in
    guard error == nil else {
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

**GetWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveDesignCheck**
```swift
    open class func createWorldInteractiveDesignCheck(id: String, completion: @escaping (_ data: CreateWorldInteractiveDesignCheckResponse?, _ error: Error?) -> Void)
```

Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Check the draft: static rules, that every referenced upload exists, and a sandboxed dry run. Budgeted per person.
WorldAPI.createWorldInteractiveDesignCheck(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldInteractiveDesignCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveDesignPreview**
```swift
    open class func createWorldInteractiveDesignPreview(id: String, completion: @escaping (_ data: CreateWorldInteractiveDesignPreviewResponse?, _ error: Error?) -> Void)
```

A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A private preview token for the draft (author only) and the socket path that runs it. Budgeted per person.
WorldAPI.createWorldInteractiveDesignPreview(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldInteractiveDesignPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveDesignSubmit**
```swift
    open class func createWorldInteractiveDesignSubmit(id: String, completion: @escaping (_ data: CreateWorldInteractiveDesignSubmitResponse?, _ error: Error?) -> Void)
```

Freeze the draft as a new version and send it to ops review. Up to 10 a day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Freeze the draft as a new version and send it to ops review. Up to 10 a day.
WorldAPI.createWorldInteractiveDesignSubmit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldInteractiveDesignSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldInteractiveReset**
```swift
    open class func createWorldInteractiveReset(completion: @escaping (_ data: CreateWorldInteractiveResetResponse?, _ error: Error?) -> Void)
```

Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wipe the stored state of an interactive piece standing in a place you own (a home or your boutique).
WorldAPI.createWorldInteractiveReset() { (response, error) in
    guard error == nil else {
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

**CreateWorldInteractiveResetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldJobAppraisalAnswer**
```swift
    open class func createWorldJobAppraisalAnswer(id: String, completion: @escaping (_ data: CreateWorldJobAppraisalAnswerResponse?, _ error: Error?) -> Void)
```

Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer a price check: your estimate of the item value in CENTS and an optional note. Moves no money; the asker may accept it.
WorldAPI.createWorldJobAppraisalAnswer(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldJobAppraisalAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldJobShiftClaim**
```swift
    open class func createWorldJobShiftClaim(id: String, completion: @escaping (_ data: CreateWorldJobShiftClaimResponse?, _ error: Error?) -> Void)
```

Claim an open shift. You work it by being in the place while it runs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Claim an open shift. You work it by being in the place while it runs.
WorldAPI.createWorldJobShiftClaim(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldJobShiftClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldJobShiftRelease**
```swift
    open class func createWorldJobShiftRelease(id: String, completion: @escaping (_ data: CreateWorldJobShiftReleaseResponse?, _ error: Error?) -> Void)
```

Give a shift you claimed back to the board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Give a shift you claimed back to the board.
WorldAPI.createWorldJobShiftRelease(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldJobShiftReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMarketBuy**
```swift
    open class func createWorldMarketBuy(kind: String, id: String, completion: @escaping (_ data: CreateWorldMarketBuyResponse?, _ error: Error?) -> Void)
```

Buy a plot or a street.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String | 
let id = "id_example" // String | 

// Buy a plot or a street.
WorldAPI.createWorldMarketBuy(kind: kind, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | **String** |  | 
 **id** | **String** |  | 

### Return type

**CreateWorldMarketBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMarketListing**
```swift
    open class func createWorldMarketListing(completion: @escaping (_ data: CreateWorldMarketListingResponse?, _ error: Error?) -> Void)
```

List a plot for sale or rent, or a street for sale.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List a plot for sale or rent, or a street for sale.
WorldAPI.createWorldMarketListing() { (response, error) in
    guard error == nil else {
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

**CreateWorldMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMarketPlotRent**
```swift
    open class func createWorldMarketPlotRent(id: String, completion: @escaping (_ data: CreateWorldMarketPlotRentResponse?, _ error: Error?) -> Void)
```

Rent a plot offered for lease.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rent a plot offered for lease.
WorldAPI.createWorldMarketPlotRent(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldMarketPlotRentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldOutfit**
```swift
    open class func createWorldOutfit(createWorldOutfitRequest: CreateWorldOutfitRequest, completion: @escaping (_ data: CreateWorldOutfitResponse?, _ error: Error?) -> Void)
```

Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorldOutfitRequest = CreateWorldOutfitRequest(name: "name_example", appearance: "TODO") // CreateWorldOutfitRequest | 

// Save what you are wearing now as a named look: { name (1-32 chars), appearance? (skin, hair, hairColour, eyes, build -- unknown keys fall back to the default) }. Each worn thing is recorded as the door it goes back on by; one that no longer traces to something you own is listed in skipped and not saved. 409 when you already keep 6.
WorldAPI.createWorldOutfit(createWorldOutfitRequest: createWorldOutfitRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorldOutfitRequest** | **CreateWorldOutfitRequest** |  | 

### Return type

**CreateWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldOutfitApply**
```swift
    open class func createWorldOutfitApply(id: UUID, completion: @escaping (_ data: CreateWorldOutfitApplyResponse?, _ error: Error?) -> Void)
```

Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Put a saved look on. Every item goes through the same equip as POST /v1/world/avatar/equip, so ownership still holds: something you no longer own is listed in skipped with the reason and not worn. Slots the look left empty are emptied (cleared). Answers the appearance of the look (for your character -- appearance lives on your device), applied, skipped and cleared. Moves no money.
WorldAPI.createWorldOutfitApply(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldOutfitApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldParty**
```swift
    open class func createWorldParty(completion: @escaping (_ data: CreateBreakResponse?, _ error: Error?) -> Void)
```

Start a party with you as leader (up to 8 members).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a party with you as leader (up to 8 members).
WorldAPI.createWorldParty() { (response, error) in
    guard error == nil else {
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

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyChat**
```swift
    open class func createWorldPartyChat(id: String, completion: @escaping (_ data: WorldResponse?, _ error: Error?) -> Void)
```

Say something in your party chat (up to 2000 characters).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Say something in your party chat (up to 2000 characters).
WorldAPI.createWorldPartyChat(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyInvite**
```swift
    open class func createWorldPartyInvite(id: String, completion: @escaping (_ data: CreateWorldPartyInviteResponse?, _ error: Error?) -> Void)
```

Invite a friend (userId) to your party.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Invite a friend (userId) to your party.
WorldAPI.createWorldPartyInvite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldPartyInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyInviteAccept**
```swift
    open class func createWorldPartyInviteAccept(inviteId: String, completion: @escaping (_ data: CreateWorldPartyInviteAcceptResponse?, _ error: Error?) -> Void)
```

Accept a party invite.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inviteId = "inviteId_example" // String | 

// Accept a party invite.
WorldAPI.createWorldPartyInviteAccept(inviteId: inviteId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String** |  | 

### Return type

**CreateWorldPartyInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyInviteDecline**
```swift
    open class func createWorldPartyInviteDecline(inviteId: String, completion: @escaping (_ data: CreateWorldPartyInviteAcceptResponse?, _ error: Error?) -> Void)
```

Decline a party invite.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inviteId = "inviteId_example" // String | 

// Decline a party invite.
WorldAPI.createWorldPartyInviteDecline(inviteId: inviteId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String** |  | 

### Return type

**CreateWorldPartyInviteAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyKick**
```swift
    open class func createWorldPartyKick(id: String, completion: @escaping (_ data: CreateWorldPartyKickResponse?, _ error: Error?) -> Void)
```

As leader, remove a member (userId).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// As leader, remove a member (userId).
WorldAPI.createWorldPartyKick(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldPartyKickResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyLeader**
```swift
    open class func createWorldPartyLeader(id: String, completion: @escaping (_ data: CreateWorldPartyLeaderResponse?, _ error: Error?) -> Void)
```

As leader, pass the lead to a member (userId).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// As leader, pass the lead to a member (userId).
WorldAPI.createWorldPartyLeader(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldPartyLeaderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyLeave**
```swift
    open class func createWorldPartyLeave(id: String, completion: @escaping (_ data: CreateWorldPartyLeaveResponse?, _ error: Error?) -> Void)
```

Leave your party (the lead passes on if you led it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Leave your party (the lead passes on if you led it).
WorldAPI.createWorldPartyLeave(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldPartyLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyWishlist**
```swift
    open class func createWorldPartyWishlist(id: String, completion: @escaping (_ data: CreateWorldPartyWishlistResponse?, _ error: Error?) -> Void)
```

Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add a listing (listingId, or its shop slug) to the party wishlist; answers the wishlist.
WorldAPI.createWorldPartyWishlist(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPartyWishlistVote**
```swift
    open class func createWorldPartyWishlistVote(id: String, listingId: String, completion: @escaping (_ data: CreateWorldPartyWishlistResponse?, _ error: Error?) -> Void)
```

Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let listingId = "listingId_example" // String | 

// Thumb a wishlist listing up or down (null clears your vote); answers the wishlist.
WorldAPI.createWorldPartyWishlistVote(id: id, listingId: listingId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **listingId** | **String** |  | 

### Return type

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPlaceItemWant**
```swift
    open class func createWorldPlaceItemWant(slug: String, itemId: String, completion: @escaping (_ data: CreateWorldPlaceItemWantResponse?, _ error: Error?) -> Void)
```

Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let itemId = "itemId_example" // String | 

// Tell a room owner you would buy one of their items (once per person per item; they see the count). Moves no money.
WorldAPI.createWorldPlaceItemWant(slug: slug, itemId: itemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **itemId** | **String** |  | 

### Return type

**CreateWorldPlaceItemWantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPropertyPlotPhotoUploadUrl**
```swift
    open class func createWorldPropertyPlotPhotoUploadUrl(plotId: String, completion: @escaping (_ data: CreateWorldPropertyPlotPhotoUploadUrlResponse?, _ error: Error?) -> Void)
```

A presigned upload for a plot's photo (WebP/PNG/JPEG, up to 4 MB): PUT the image to uploadUrl with the same Content-Type and exact Content-Length, then store publicUrl with PUT .../photo.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let plotId = "plotId_example" // String | 

// A presigned upload for a plot's photo (WebP/PNG/JPEG, up to 4 MB): PUT the image to uploadUrl with the same Content-Type and exact Content-Length, then store publicUrl with PUT .../photo.
WorldAPI.createWorldPropertyPlotPhotoUploadUrl(plotId: plotId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plotId** | **String** |  | 

### Return type

**CreateWorldPropertyPlotPhotoUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPropertyPlotShowroom**
```swift
    open class func createWorldPropertyPlotShowroom(plotId: String, completion: @escaping (_ data: CreateWorldPropertyPlotShowroomResponse?, _ error: Error?) -> Void)
```

Stand one of your showrooms on a plot you own or rent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let plotId = "plotId_example" // String | 

// Stand one of your showrooms on a plot you own or rent.
WorldAPI.createWorldPropertyPlotShowroom(plotId: plotId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plotId** | **String** |  | 

### Return type

**CreateWorldPropertyPlotShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPropertyTrespassed**
```swift
    open class func createWorldPropertyTrespassed(completion: @escaping (_ data: ListWorldPropertyTrespassedResponse?, _ error: Error?) -> Void)
```

Ban someone owner-wide or from one showroom.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ban someone owner-wide or from one showroom.
WorldAPI.createWorldPropertyTrespassed() { (response, error) in
    guard error == nil else {
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

**ListWorldPropertyTrespassedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpace**
```swift
    open class func createWorldSpace(completion: @escaping (_ data: CreateWorldSpaceResponse?, _ error: Error?) -> Void)
```

Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open a Space (sellers only, at most two): slug, name, venue, optional membership and about.
WorldAPI.createWorldSpace() { (response, error) in
    guard error == nil else {
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

**CreateWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceEvent**
```swift
    open class func createWorldSpaceEvent(slug: String, completion: @escaping (_ data: CreateWorldSpaceEventResponse?, _ error: Error?) -> Void)
```

As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// As host or co-host, put an event on: title, kind, optional about, ISO start and end with offset.
WorldAPI.createWorldSpaceEvent(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldSpaceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceEventRsvp**
```swift
    open class func createWorldSpaceEventRsvp(slug: String, id: String, completion: @escaping (_ data: CreateWorldSpaceEventRsvpResponse?, _ error: Error?) -> Void)
```

Say whether you are going to an event.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let id = "id_example" // String | 

// Say whether you are going to an event.
WorldAPI.createWorldSpaceEventRsvp(slug: slug, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **id** | **String** |  | 

### Return type

**CreateWorldSpaceEventRsvpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceInvite**
```swift
    open class func createWorldSpaceInvite(slug: String, completion: @escaping (_ data: CreateWorldSpaceInviteResponse?, _ error: Error?) -> Void)
```

Invite somebody (userId) to a Space.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Invite somebody (userId) to a Space.
WorldAPI.createWorldSpaceInvite(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldSpaceInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceJoin**
```swift
    open class func createWorldSpaceJoin(slug: String, completion: @escaping (_ data: CreateWorldSpaceJoinResponse?, _ error: Error?) -> Void)
```

Join a Space, or ask to when it is request-only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Join a Space, or ask to when it is request-only.
WorldAPI.createWorldSpaceJoin(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceLeave**
```swift
    open class func createWorldSpaceLeave(slug: String, completion: @escaping (_ data: CreateWorldCrewLeaveResponse?, _ error: Error?) -> Void)
```

Leave a Space.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Leave a Space.
WorldAPI.createWorldSpaceLeave(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **createWorldSpaceRequestByUserId**
```swift
    open class func createWorldSpaceRequestByUserId(slug: String, userId: String, completion: @escaping (_ data: CreateWorldSpaceRequestByUserIdResponse?, _ error: Error?) -> Void)
```

As host or co-host, accept or turn down a request to join.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let userId = "userId_example" // String | 

// As host or co-host, accept or turn down a request to join.
WorldAPI.createWorldSpaceRequestByUserId(slug: slug, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **userId** | **String** |  | 

### Return type

**CreateWorldSpaceRequestByUserIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldSpaceRole**
```swift
    open class func createWorldSpaceRole(slug: String, completion: @escaping (_ data: CreateWorldSpaceRoleResponse?, _ error: Error?) -> Void)
```

As host, make a member a co-host or back to a member.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// As host, make a member a co-host or back to a member.
WorldAPI.createWorldSpaceRole(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldSpaceRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldStaffApplicationDecide**
```swift
    open class func createWorldStaffApplicationDecide(id: String, completion: @escaping (_ data: CreateWorldStaffApplicationDecideResponse?, _ error: Error?) -> Void)
```

Accept or decline an application.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept or decline an application.
WorldAPI.createWorldStaffApplicationDecide(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldStaffApplicationDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldStaffAssignmentRateWorker**
```swift
    open class func createWorldStaffAssignmentRateWorker(id: String, completion: @escaping (_ data: CreateWorldStaffAssignmentRateWorkerResponse?, _ error: Error?) -> Void)
```

Rate the worker of one of your seats.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rate the worker of one of your seats.
WorldAPI.createWorldStaffAssignmentRateWorker(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldStaffAssignmentRateWorkerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldStaffPosting**
```swift
    open class func createWorldStaffPosting(completion: @escaping (_ data: WorldStaffPostingResponse?, _ error: Error?) -> Void)
```

Post a job: a showroom, stall or convention, pay, recurrence and rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Post a job: a showroom, stall or convention, pay, recurrence and rules.
WorldAPI.createWorldStaffPosting() { (response, error) in
    guard error == nil else {
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

**WorldStaffPostingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldStaffPostingStatus**
```swift
    open class func createWorldStaffPostingStatus(id: String, completion: @escaping (_ data: WorldStaffPostingResponse?, _ error: Error?) -> Void)
```

Open, pause or close a posting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Open, pause or close a posting.
WorldAPI.createWorldStaffPostingStatus(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldStaffPostingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldStreetOwnedUpkeepPay**
```swift
    open class func createWorldStreetOwnedUpkeepPay(id: String, completion: @escaping (_ data: CreateWorldStreetOwnedUpkeepPayResponse?, _ error: Error?) -> Void)
```

Pay your street's upkeep forward.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pay your street's upkeep forward.
WorldAPI.createWorldStreetOwnedUpkeepPay(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldStreetOwnedUpkeepPayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldVenueBookingCancel**
```swift
    open class func createWorldVenueBookingCancel(id: String, completion: @escaping (_ data: CreateWorldVenueBookingCancelResponse?, _ error: Error?) -> Void)
```

Cancel a hall rental: the whole rent back until 7 days before the first day, nothing after.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a hall rental: the whole rent back until 7 days before the first day, nothing after.
WorldAPI.createWorldVenueBookingCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldVenueBookingCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldWorkAssignmentRateEmployer**
```swift
    open class func createWorldWorkAssignmentRateEmployer(id: String, completion: @escaping (_ data: CreateWorldStaffAssignmentRateWorkerResponse?, _ error: Error?) -> Void)
```

Rate the employer of a public-job shift you worked: paid on time, job as described, conduct.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rate the employer of a public-job shift you worked: paid on time, job as described, conduct.
WorldAPI.createWorldWorkAssignmentRateEmployer(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldStaffAssignmentRateWorkerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldWorkPostingApply**
```swift
    open class func createWorldWorkPostingApply(id: String, completion: @escaping (_ data: CreateWorldWorkPostingApplyResponse?, _ error: Error?) -> Void)
```

Apply for a job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Apply for a job.
WorldAPI.createWorldWorkPostingApply(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldWorkPostingApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteShowroom**
```swift
    open class func deleteShowroom(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: DeleteShowroomResponse?, _ error: Error?) -> Void)
```

Archive a showroom: private, off its plots, billing stopped. Never deletes; the primary cannot be archived (409 showroom_primary).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Archive a showroom: private, off its plots, billing stopped. Never deletes; the primary cannot be archived (409 showroom_primary).
WorldAPI.deleteShowroom(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**DeleteShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteShowroomPlacement**
```swift
    open class func deleteShowroomPlacement(id: String, plotId: String, storefrontId: UUID? = nil, completion: @escaping (_ data: CreateShowroomPlacementResponse?, _ error: Error?) -> Void)
```

Take a showroom off a plot (the plot stays yours).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let plotId = "plotId_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Take a showroom off a plot (the plot stays yours).
WorldAPI.deleteShowroomPlacement(id: id, plotId: plotId, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **plotId** | **String** |  | 
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**CreateShowroomPlacementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSpatialSceneGrant**
```swift
    open class func deleteSpatialSceneGrant(id: String, grantId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Take somebody's access to your room away, or kill an invite nobody has used yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let grantId = "grantId_example" // String | 

// Take somebody's access to your room away, or kill an invite nobody has used yet.
WorldAPI.deleteSpatialSceneGrant(id: id, grantId: grantId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **grantId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSpatialSceneNode**
```swift
    open class func deleteSpatialSceneNode(id: String, completion: @escaping (_ data: DeleteSpatialSceneNodeResponse?, _ error: Error?) -> Void)
```

Remove units (by id, up to 500) from one of your warehouse rooms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Remove units (by id, up to 500) from one of your warehouse rooms.
WorldAPI.deleteSpatialSceneNode(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSpatialSceneWarehouseStock**
```swift
    open class func deleteSpatialSceneWarehouseStock(id: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Take an inventory item (or unit) off its rack.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take an inventory item (or unit) off its rack.
WorldAPI.deleteSpatialSceneWarehouseStock(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSpatialStreetRequest**
```swift
    open class func deleteSpatialStreetRequest(id: String, completion: @escaping (_ data: DeleteDaoProposalResponse?, _ error: Error?) -> Void)
```

Withdraw a street request you made that has not been founded yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw a street request you made that has not been founded yet.
WorldAPI.deleteSpatialStreetRequest(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldBlock**
```swift
    open class func deleteWorldBlock(id: String, completion: @escaping (_ data: DeleteWorldBlockResponse?, _ error: Error?) -> Void)
```

Unblock somebody (by the block id from GET /v1/world/blocks).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Unblock somebody (by the block id from GET /v1/world/blocks).
WorldAPI.deleteWorldBlock(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldBlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldCollectionCapability**
```swift
    open class func deleteWorldCollectionCapability(chain: String, contract: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Withdraw your declaration for a collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// Withdraw your declaration for a collection.
WorldAPI.deleteWorldCollectionCapability(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String** |  | 
 **contract** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldFollow**
```swift
    open class func deleteWorldFollow(userId: String, completion: @escaping (_ data: CreateWorldFollowResponse?, _ error: Error?) -> Void)
```

Unfollow somebody. Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = "userId_example" // String | 

// Unfollow somebody. Idempotent.
WorldAPI.deleteWorldFollow(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** |  | 

### Return type

**CreateWorldFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldGamePackage**
```swift
    open class func deleteWorldGamePackage(id: String, completion: @escaping (_ data: DeleteWorldGamePackageResponse?, _ error: Error?) -> Void)
```

Delete a Classic game: unpublished, then a tombstone restorable for 30 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a Classic game: unpublished, then a tombstone restorable for 30 days.
WorldAPI.deleteWorldGamePackage(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldGamePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldHallLoan**
```swift
    open class func deleteWorldHallLoan(id: String, completion: @escaping (_ data: CreateBreakResponse?, _ error: Error?) -> Void)
```

Take one of your loans off show in the Hall of Grails.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take one of your loans off show in the Hall of Grails.
WorldAPI.deleteWorldHallLoan(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldHomeGuestbook**
```swift
    open class func deleteWorldHomeGuestbook(slug: String, id: String, completion: @escaping (_ data: DeleteWorldHomeGuestbookResponse?, _ error: Error?) -> Void)
```

As the home owner, hide a guestbook entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let id = "id_example" // String | 

// As the home owner, hide a guestbook entry.
WorldAPI.deleteWorldHomeGuestbook(slug: slug, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **id** | **String** |  | 

### Return type

**DeleteWorldHomeGuestbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldInteractiveDesign**
```swift
    open class func deleteWorldInteractiveDesign(id: String, completion: @escaping (_ data: DeleteWorldInteractiveDesignResponse?, _ error: Error?) -> Void)
```

Delete a draft design, or archive a submitted one (off sale; owned copies keep working).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a draft design, or archive a submitted one (off sale; owned copies keep working).
WorldAPI.deleteWorldInteractiveDesign(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldJobShift**
```swift
    open class func deleteWorldJobShift(id: String, completion: @escaping (_ data: DeleteWorldJobShiftResponse?, _ error: Error?) -> Void)
```

Cancel a shift you posted that nobody has worked yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a shift you posted that nobody has worked yet.
WorldAPI.deleteWorldJobShift(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **deleteWorldMarketListing**
```swift
    open class func deleteWorldMarketListing(kind: String, id: String, mode: String, completion: @escaping (_ data: DeleteWorldMarketListingResponse?, _ error: Error?) -> Void)
```

Withdraw a plot or street from the Market.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String | 
let id = "id_example" // String | 
let mode = "mode_example" // String | 

// Withdraw a plot or street from the Market.
WorldAPI.deleteWorldMarketListing(kind: kind, id: id, mode: mode) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | **String** |  | 
 **id** | **String** |  | 
 **mode** | **String** |  | 

### Return type

**DeleteWorldMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldOutfit**
```swift
    open class func deleteWorldOutfit(id: UUID, completion: @escaping (_ data: DeleteWorldOutfitResponse?, _ error: Error?) -> Void)
```

Delete a saved look. 404 when it is not yours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a saved look. 404 when it is not yours.
WorldAPI.deleteWorldOutfit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldPartyWishlist**
```swift
    open class func deleteWorldPartyWishlist(id: String, listingId: String, completion: @escaping (_ data: CreateWorldPartyWishlistResponse?, _ error: Error?) -> Void)
```

Take a listing you added off the party wishlist; answers the wishlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let listingId = "listingId_example" // String | 

// Take a listing you added off the party wishlist; answers the wishlist.
WorldAPI.deleteWorldPartyWishlist(id: id, listingId: listingId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **listingId** | **String** |  | 

### Return type

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldPlaceBan**
```swift
    open class func deleteWorldPlaceBan(slug: String, userId: String, completion: @escaping (_ data: DeleteWorldPlaceBanResponse?, _ error: Error?) -> Void)
```

Lift a ban from a place you own; they can walk in again right away.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let userId = "userId_example" // String | 

// Lift a ban from a place you own; they can walk in again right away.
WorldAPI.deleteWorldPlaceBan(slug: slug, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **userId** | **String** |  | 

### Return type

**DeleteWorldPlaceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldPropertyPlotShowroom**
```swift
    open class func deleteWorldPropertyPlotShowroom(plotId: String, completion: @escaping (_ data: DeleteWorldPropertyPlotShowroomResponse?, _ error: Error?) -> Void)
```

Take the showroom off a plot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let plotId = "plotId_example" // String | 

// Take the showroom off a plot.
WorldAPI.deleteWorldPropertyPlotShowroom(plotId: plotId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plotId** | **String** |  | 

### Return type

**DeleteWorldPropertyPlotShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldPropertyTrespassed**
```swift
    open class func deleteWorldPropertyTrespassed(userId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Lift a ban.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = "userId_example" // String | 

// Lift a ban.
WorldAPI.deleteWorldPropertyTrespassed(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldSpace**
```swift
    open class func deleteWorldSpace(slug: String, completion: @escaping (_ data: DeleteWorldSpaceResponse?, _ error: Error?) -> Void)
```

As host, close a Space.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// As host, close a Space.
WorldAPI.deleteWorldSpace(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldSpaceEvent**
```swift
    open class func deleteWorldSpaceEvent(slug: String, id: String, completion: @escaping (_ data: DeleteWorldJobShiftResponse?, _ error: Error?) -> Void)
```

As host or co-host, cancel an event.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let id = "id_example" // String | 

// As host or co-host, cancel an event.
WorldAPI.deleteWorldSpaceEvent(slug: slug, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **id** | **String** |  | 

### Return type

**DeleteWorldJobShiftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldStaffAssignment**
```swift
    open class func deleteWorldStaffAssignment(id: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Take a worker off a seat that has not started.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take a worker off a seat that has not started.
WorldAPI.deleteWorldStaffAssignment(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShowroom**
```swift
    open class func getShowroom(storefrontId: UUID? = nil, completion: @escaping (_ data: GetShowroomResponse?, _ error: Error?) -> Void)
```

Your store's showroom in Crossly World: the room and its look, fixtures with their slot grids, where every item stands (pinned by a person or placed automatically), sharing settings and the stock that can stand there. The ETag is the version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Your store's showroom in Crossly World: the room and its look, fixtures with their slot grids, where every item stands (pinned by a person or placed automatically), sharing settings and the stock that can stand there. The ETag is the version.
WorldAPI.getShowroom(storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**GetShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShowroomBilling**
```swift
    open class func getShowroomBilling(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: GetShowroomBillingResponse?, _ error: Error?) -> Void)
```

A showroom's billing: included, active (paid through), past due or cancelled, and the rails a payment can use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// A showroom's billing: included, active (paid through), past due or cancelled, and the rails a payment can use.
WorldAPI.getShowroomBilling(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**GetShowroomBillingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShowroomById**
```swift
    open class func getShowroomById(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: GetShowroomResponse?, _ error: Error?) -> Void)
```

One showroom: room and look, fixtures (with holders), placements, settings (hours, auto-include) and stock. The ETag is the version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// One showroom: room and look, fixtures (with holders), placements, settings (hours, auto-include) and stock. The ETag is the version.
WorldAPI.getShowroomById(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**GetShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShowroomCatalog**
```swift
    open class func getShowroomCatalog(completion: @escaping (_ data: GetShowroomCatalogResponse?, _ error: Error?) -> Void)
```

Everything a showroom can be made of: fixture displays (kind, slots per unit), room sizes, themes, surfaces, shopfronts, facades, sign styles and fonts, window moods, and `holders`: every fixture holder with `owned` (free, or a premium one you bought in the in-world cosmetics market; an unowned premium holder is refused with holder_not_owned).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Everything a showroom can be made of: fixture displays (kind, slots per unit), room sizes, themes, surfaces, shopfronts, facades, sign styles and fonts, window moods, and `holders`: every fixture holder with `owned` (free, or a premium one you bought in the in-world cosmetics market; an unowned premium holder is refused with holder_not_owned).
WorldAPI.getShowroomCatalog() { (response, error) in
    guard error == nil else {
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

**GetShowroomCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShowroomPlacement**
```swift
    open class func getShowroomPlacement(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: GetShowroomPlacementResponse?, _ error: Error?) -> Void)
```

The plots a showroom stands on, and the plots your store owns or rents that it could stand on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// The plots a showroom stands on, and the plots your store owns or rents that it could stand on.
WorldAPI.getShowroomPlacement(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**GetShowroomPlacementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialSceneAttention**
```swift
    open class func getSpatialSceneAttention(sceneId: String, completion: @escaping (_ data: GetSpatialSceneAttentionResponse?, _ error: Error?) -> Void)
```

What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = "sceneId_example" // String | 

// What visitors looked at in one of your rooms: viewers, looks, inspects and dwell per item over the last days (1-35, default 30).
WorldAPI.getSpatialSceneAttention(sceneId: sceneId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sceneId** | **String** |  | 

### Return type

**GetSpatialSceneAttentionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialSceneWindow**
```swift
    open class func getSpatialSceneWindow(id: String, completion: @escaping (_ data: GetSpatialSceneWindowResponse?, _ error: Error?) -> Void)
```

The listings you chose for the street window of your shop, in slot order (left, middle, right; empty = newest first), and `choices`: your listings that can go in it, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The listings you chose for the street window of your shop, in slot order (left, middle, right; empty = newest first), and `choices`: your listings that can go in it, newest first.
WorldAPI.getSpatialSceneWindow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetSpatialSceneWindowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialShopNeighbourhood**
```swift
    open class func getSpatialShopNeighbourhood(completion: @escaping (_ data: GetSpatialShopNeighbourhoodResponse?, _ error: Error?) -> Void)
```

Where your shop stands, and the district theme your stock fits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Where your shop stands, and the district theme your stock fits.
WorldAPI.getSpatialShopNeighbourhood() { (response, error) in
    guard error == nil else {
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

**GetSpatialShopNeighbourhoodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialSpace**
```swift
    open class func getSpatialSpace(completion: @escaping (_ data: GetSpatialSpaceResponse?, _ error: Error?) -> Void)
```

The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The room catalogue: every space profile (what it holds, how it is sorted, its containers) and the warehouse units.
WorldAPI.getSpatialSpace() { (response, error) in
    guard error == nil else {
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

**GetSpatialSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialStreetAdmission**
```swift
    open class func getSpatialStreetAdmission(completion: @escaping (_ data: GetSpatialStreetAdmissionResponse?, _ error: Error?) -> Void)
```

Street applications and invitations: yours, and those waiting on streets you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Street applications and invitations: yours, and those waiting on streets you own.
WorldAPI.getSpatialStreetAdmission() { (response, error) in
    guard error == nil else {
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

**GetSpatialStreetAdmissionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialStreetDecor**
```swift
    open class func getSpatialStreetDecor(slug: String, completion: @escaping (_ data: GetSpatialStreetDecorResponse?, _ error: Error?) -> Void)
```

The decor on a street you may dress, and what you can place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The decor on a street you may dress, and what you can place.
WorldAPI.getSpatialStreetDecor(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetSpatialStreetDecorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldArcade**
```swift
    open class func getWorldArcade(completion: @escaping (_ data: GetWorldArcadeResponse?, _ error: Error?) -> Void)
```

The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \"A player\"), plus creatorGames (creator games with a cabinet now). Games are played in the world.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Arcade in Crossly World: data.cabinets (slot, where it stands, host -- piece, price_guess or empty --, game, title, blurb, the piece it hosts and where, record, packageId and thumbnail for a creator game from the Game Directory, players) and data.scores (the High Score wall: per game a title, kind -- leaderboard, record or top -- and up to five ASCII lines; a name shows only for somebody who chose to be seen by name, everyone else is \"A player\"), plus creatorGames (creator games with a cabinet now). Games are played in the world.
WorldAPI.getWorldArcade() { (response, error) in
    guard error == nil else {
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

**GetWorldArcadeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAttendant**
```swift
    open class func getWorldAttendant(completion: @escaping (_ data: GetWorldAttendantResponse?, _ error: Error?) -> Void)
```

Your AI attendant and whether your AI key is connected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your AI attendant and whether your AI key is connected.
WorldAPI.getWorldAttendant() { (response, error) in
    guard error == nil else {
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

**GetWorldAttendantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAurora**
```swift
    open class func getWorldAurora(completion: @escaping (_ data: GetWorldAuroraResponse?, _ error: Error?) -> Void)
```

The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Sales Aurora over the Commons in Crossly World: every real sale on Crossly in the last data.windowDays (30) days. data.total (sales in the window), data.families (key, label, colour, count per colour family: cards, coins, jewellery, electronics, media, fashion, toys, other) and data.sales (newest first, at most 48: family, ageHours, fresh -- sold in the last ten minutes, which shimmers). Aggregate only: no item, price, seller or platform. data.updatedAt is when it was read.
WorldAPI.getWorldAurora() { (response, error) in
    guard error == nil else {
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

**GetWorldAuroraResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarBasic**
```swift
    open class func getWorldAvatarBasic(completion: @escaping (_ data: GetWorldAvatarBasicResponse?, _ error: Error?) -> Void)
```

The free basic wardrobe every account owns: 25 garments (tees, hoodie, overshirt, polo, jacket, vest, jeans, shorts, skirt, sneakers, boots, loafers, caps...) by slot, each with its colourways. Wear one by saving appearance.outfit = { top, outer, bottom, shoes, hat } as \"garment:colour\" (outer and hat may be \"none\") with PUT /v1/world/avatar/look.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The free basic wardrobe every account owns: 25 garments (tees, hoodie, overshirt, polo, jacket, vest, jeans, shorts, skirt, sneakers, boots, loafers, caps...) by slot, each with its colourways. Wear one by saving appearance.outfit = { top, outer, bottom, shoes, hat } as \"garment:colour\" (outer and hat may be \"none\") with PUT /v1/world/avatar/look.
WorldAPI.getWorldAvatarBasic() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarBasicResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarIdentity**
```swift
    open class func getWorldAvatarIdentity(completion: @escaping (_ data: GetWorldAvatarIdentityResponse?, _ error: Error?) -> Void)
```

Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether others see your name in the world (named), or not (anonymous); null if you have never chosen.
WorldAPI.getWorldAvatarIdentity() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarLoadout**
```swift
    open class func getWorldAvatarLoadout(completion: @escaping (_ data: GetWorldAvatarLoadoutResponse?, _ error: Error?) -> Void)
```

What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you are wearing: the rig, its slots (avatar_head, avatar_body, avatar_outer -- a jacket over the top, avatar_legs, avatar_feet, avatar_back) and each worn entry -- a cosmetic or a real item -- with its verified-purchase mark. Carries no price, receipt id, seller or order.
WorldAPI.getWorldAvatarLoadout() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarLoadoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarLoadoutByUserId**
```swift
    open class func getWorldAvatarLoadoutByUserId(userId: UUID, completion: @escaping (_ data: GetWorldAvatarLoadoutResponse?, _ error: Error?) -> Void)
```

What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = 987 // UUID | 

// What somebody else is wearing, with the verified-purchase mark on each real item -- public on purpose, since a check only its owner can see is not a check. No price, receipt id, seller or order.
WorldAPI.getWorldAvatarLoadoutByUserId(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** |  | 

### Return type

**GetWorldAvatarLoadoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarLook**
```swift
    open class func getWorldAvatarLook(completion: @escaping (_ data: GetWorldAvatarLookResponse?, _ error: Error?) -> Void)
```

Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your world look on the account: the handle you chose (null if anonymous) and your appearance; null if you never made one.
WorldAPI.getWorldAvatarLook() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarLookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAvatarNftBadge**
```swift
    open class func getWorldAvatarNftBadge(completion: @escaping (_ data: GetWorldAvatarNftBadgeResponse?, _ error: Error?) -> Void)
```

The NFT you wear on your nameplate in the world, or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The NFT you wear on your nameplate in the world, or null.
WorldAPI.getWorldAvatarNftBadge() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarNftBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldBillingRail**
```swift
    open class func getWorldBillingRail(completion: @escaping (_ data: GetWorldBillingRailResponse?, _ error: Error?) -> Void)
```

Which rails (card, CBX) can pay in the world right now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Which rails (card, CBX) can pay in the world right now.
WorldAPI.getWorldBillingRail() { (response, error) in
    guard error == nil else {
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

**GetWorldBillingRailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCapability**
```swift
    open class func getWorldCapability(completion: @escaping (_ data: GetWorldCapabilityResponse?, _ error: Error?) -> Void)
```

What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your held NFTs unlock in Crossly World: each token with the capabilities its collection declared (wear, display, emote, gate, ...). Holding is your verified wallets (their synced tokens); the capabilities of a transferred token go within five minutes.
WorldAPI.getWorldCapability() { (response, error) in
    guard error == nil else {
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

**GetWorldCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCapabilityCatalogue**
```swift
    open class func getWorldCapabilityCatalogue(completion: @escaping (_ data: GetWorldCapabilityCatalogueResponse?, _ error: Error?) -> Void)
```

The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The capability kinds of spec crossly.nft-capabilities/1: what each does, whether only the creator of the collection may declare it, whether it needs review, and which clients honour it.
WorldAPI.getWorldCapabilityCatalogue() { (response, error) in
    guard error == nil else {
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

**GetWorldCapabilityCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCapabilityWear**
```swift
    open class func getWorldCapabilityWear(completion: @escaping (_ data: GetWorldCapabilityWearResponse?, _ error: Error?) -> Void)
```

What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you wear from your NFTs and COSM copies: your pick per avatar slot (head, body, legs, feet, back) and what the room sees.
WorldAPI.getWorldCapabilityWear() { (response, error) in
    guard error == nil else {
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

**GetWorldCapabilityWearResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldChest**
```swift
    open class func getWorldChest(completion: @escaping (_ data: GetWorldChestResponse?, _ error: Error?) -> Void)
```

The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Commons chest: data.window (this 20-minute window, UTC), spot ([x, z] on the plaza), endsAt (when the next chest comes) and mine (openedThis, and opened -- how many windows you have opened one in; the Chest opener pin comes at 10). A chest is opened by walking up to it in Crossly World, never over the API.
WorldAPI.getWorldChest() { (response, error) in
    guard error == nil else {
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

**GetWorldChestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCollectionCapability**
```swift
    open class func getWorldCollectionCapability(chain: String, contract: String, completion: @escaping (_ data: GetWorldCollectionCapabilityResponse?, _ error: Error?) -> Void)
```

The live capability declaration of a collection (404 when it has none).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// The live capability declaration of a collection (404 when it has none).
WorldAPI.getWorldCollectionCapability(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String** |  | 
 **contract** | **String** |  | 

### Return type

**GetWorldCollectionCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldContestMine**
```swift
    open class func getWorldContestMine(completion: @escaping (_ data: GetWorldContestMineResponse?, _ error: Error?) -> Void)
```

Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your contest entries (best score, attempts used, payment state) and prizes (granted, or owed until their gate opens).
WorldAPI.getWorldContestMine() { (response, error) in
    guard error == nil else {
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

**GetWorldContestMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldControl**
```swift
    open class func getWorldControl(completion: @escaping (_ data: GetWorldControlResponse?, _ error: Error?) -> Void)
```

Your world controls settings (look sensitivity, invert look, stick size, left-handed, camera distance, reduced camera motion, tap-to-walk, haptics) and whether you have seen the controls tutorial.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your world controls settings (look sensitivity, invert look, stick size, left-handed, camera distance, reduced camera motion, tap-to-walk, haptics) and whether you have seen the controls tutorial.
WorldAPI.getWorldControl() { (response, error) in
    guard error == nil else {
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

**GetWorldControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldConvention**
```swift
    open class func getWorldConvention(id: String, completion: @escaping (_ data: GetWorldConventionResponse?, _ error: Error?) -> Void)
```

One convention. 404 for an unknown or malformed id alike.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One convention. 404 for an unknown or malformed id alike.
WorldAPI.getWorldConvention(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldConventionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldConventionExhibit**
```swift
    open class func getWorldConventionExhibit(id: String, completion: @escaping (_ data: GetWorldConventionExhibitResponse?, _ error: Error?) -> Void)
```

A convention from the exhibitor side: tiers with price, size, capacity and booths left, the rails that pay now, and your own booth (status, fee, paid, checked in, listings).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A convention from the exhibitor side: tiers with price, size, capacity and booths left, the rails that pay now, and your own booth (status, fee, paid, checked in, listings).
WorldAPI.getWorldConventionExhibit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldConventionExhibitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldConventionHall**
```swift
    open class func getWorldConventionHall(id: String, completion: @escaping (_ data: GetWorldConventionHallResponse?, _ error: Error?) -> Void)
```

The hall design (booths, stage, signs, entrance, kiosk), its version and any problems.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The hall design (booths, stage, signs, entrance, kiosk), its version and any problems.
WorldAPI.getWorldConventionHall(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldConventionHallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldConventionManage**
```swift
    open class func getWorldConventionManage(id: String, completion: @escaping (_ data: GetWorldConventionManageResponse?, _ error: Error?) -> Void)
```

A convention you organise: its settings, booth tiers, every seller (status, booth, fee, paid, checked in) and the venue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A convention you organise: its settings, booth tiers, every seller (status, booth, fee, paid, checked in) and the venue.
WorldAPI.getWorldConventionManage(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldConventionManageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldConventionStatusPage**
```swift
    open class func getWorldConventionStatusPage(id: String, completion: @escaping (_ data: GetWorldConventionStatusPageResponse?, _ error: Error?) -> Void)
```

The status page: sellers, booths filled per tier, walk-ins, sales of brought listings, booth fees paid and owed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The status page: sellers, booths filled per tier, walk-ins, sales of brought listings, booth fees paid and owed.
WorldAPI.getWorldConventionStatusPage(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldConventionStatusPageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCosmBalance**
```swift
    open class func getWorldCosmBalance(completion: @escaping (_ data: GetWorldCosmBalanceResponse?, _ error: Error?) -> Void)
```

Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false = COSM is not provisioned on this deployment, not a zero balance).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your COSM balance: baseUnits (a STRING -- COSM has 6 decimals and overflows a JSON number), decimals, available (false = COSM is not provisioned on this deployment, not a zero balance).
WorldAPI.getWorldCosmBalance() { (response, error) in
    guard error == nil else {
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

**GetWorldCosmBalanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCrew**
```swift
    open class func getWorldCrew(completion: @escaping (_ data: GetWorldCrewResponse?, _ error: Error?) -> Void)
```

Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your crew: data.crew is null when you are in none, else its name, tag, join code and whether you own it; data.members lists up to 30 members, each with the public room they are in right now when they chose to be seen by name (else null).
WorldAPI.getWorldCrew() { (response, error) in
    guard error == nil else {
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

**GetWorldCrewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCrewChat**
```swift
    open class func getWorldCrewChat(completion: @escaping (_ data: WorldResponse?, _ error: Error?) -> Void)
```

Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your crew chat: data.messages is the last 50 lines (from, name, text, at), kept in memory only, so it starts empty after a restart. 404 when you are in no crew.
WorldAPI.getWorldCrewChat() { (response, error) in
    guard error == nil else {
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

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldCrewLeaderboard**
```swift
    open class func getWorldCrewLeaderboard(completion: @escaping (_ data: GetGameLeaderboardResponse?, _ error: Error?) -> Void)
```

The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The game leaderboards (Price Guess, hunts, speed trades; this week and all time) ranked among your crew only, each member by the name the crew sees. 404 when you are in no crew.
WorldAPI.getWorldCrewLeaderboard() { (response, error) in
    guard error == nil else {
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

# **getWorldDm**
```swift
    open class func getWorldDm(userId: String, completion: @escaping (_ data: GetWorldDmResponse?, _ error: Error?) -> Void)
```

Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let userId = "userId_example" // String | 

// Your direct-message thread with one friend, oldest first (the last 100 lines: id, from, text, at, mine). Reading it marks their lines read.
WorldAPI.getWorldDm(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** |  | 

### Return type

**GetWorldDmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldEmoteShowable**
```swift
    open class func getWorldEmoteShowable(completion: @escaping (_ data: GetWorldEmoteShowableResponse?, _ error: Error?) -> Void)
```

The things you own that a show-off emote can hold up.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The things you own that a show-off emote can hold up.
WorldAPI.getWorldEmoteShowable() { (response, error) in
    guard error == nil else {
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

**GetWorldEmoteShowableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldFirefly**
```swift
    open class func getWorldFirefly(completion: @escaping (_ data: GetWorldFireflyResponse?, _ error: Error?) -> Void)
```

Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Fireflies on the Commons lawn: data.day (today, UTC), today (fireflies everyone has caught today) and mine (today -- your catches today, up to perDay -- total, all your catches; the Firefly Catcher pin comes at 30 -- and perDay). Fireflies are caught by walking up to a lit one in Crossly World after dark, never over the API, and nothing is spent.
WorldAPI.getWorldFirefly() { (response, error) in
    guard error == nil else {
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

**GetWorldFireflyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldFitStat**
```swift
    open class func getWorldFitStat(completion: @escaping (_ data: GetWorldFitStatResponse?, _ error: Error?) -> Void)
```

Your walking storefront, last 7 days: distinct people who tapped \"Shop this\" or \"Offer\" on what you wore, and how many of each. Counts only; nobody is identified.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your walking storefront, last 7 days: distinct people who tapped \"Shop this\" or \"Offer\" on what you wore, and how many of each. Counts only; nobody is identified.
WorldAPI.getWorldFitStat() { (response, error) in
    guard error == nil else {
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

**GetWorldFitStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldFitValue**
```swift
    open class func getWorldFitValue(completion: @escaping (_ data: GetWorldFitValueResponse?, _ error: Error?) -> Void)
```

What your outfit is worth on the market: cents (sum of each catalogued piece's order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your outfit is worth on the market: cents (sum of each catalogued piece's order-book price -- last sale, else lowest ask), pieces worn, how many were priced, and share (whether you show it on your card).
WorldAPI.getWorldFitValue() { (response, error) in
    guard error == nil else {
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

**GetWorldFitValueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGame**
```swift
    open class func getWorldGame(id: String, completion: @escaping (_ data: GetWorldGameResponse?, _ error: Error?) -> Void)
```

One live game: its manifest, its store items and which you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One live game: its manifest, its store items and which you own.
WorldAPI.getWorldGame(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameLeaderboard**
```swift
    open class func getWorldGameLeaderboard(id: String, completion: @escaping (_ data: GetWorldGameLeaderboardResponse?, _ error: Error?) -> Void)
```

A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A live game leaderboard, this week and all time, by its manifest scoring (wins, best points, or best time). Only people who chose to be named show by name. scoring is null for a game that keeps no board.
WorldAPI.getWorldGameLeaderboard(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldGameLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGamePackage**
```swift
    open class func getWorldGamePackage(id: String, completion: @escaping (_ data: GetWorldGamePackageResponse?, _ error: Error?) -> Void)
```

One of your game packages with every version, its review state and decision note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your game packages with every version, its review state and decision note.
WorldAPI.getWorldGamePackage(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldGamePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGamePackageStat**
```swift
    open class func getWorldGamePackageStat(id: String, completion: @escaping (_ data: GetWorldGamePackageStatResponse?, _ error: Error?) -> Void)
```

Play stats for one of your Classic games: 30-day totals, the daily series the launcher ranks on (uniques, sessions, playtime, first-play bounces, D1/D7/D28), its ranking score, test impressions and players right now. ?days=1-90.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Play stats for one of your Classic games: 30-day totals, the daily series the launcher ranks on (uniques, sessions, playtime, first-play bounces, D1/D7/D28), its ranking score, test impressions and players right now. ?days=1-90.
WorldAPI.getWorldGamePackageStat(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldGamePackageStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGamePackageVersion**
```swift
    open class func getWorldGamePackageVersion(id: String, completion: @escaping (_ data: GetWorldGamePackageVersionResponse?, _ error: Error?) -> Void)
```

Every version of one of your Classic games: draft, pending, approved, rejected, withdrawn or cancelled, which one is live, its documents and report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Every version of one of your Classic games: draft, pending, approved, rejected, withdrawn or cancelled, which one is live, its documents and report.
WorldAPI.getWorldGamePackageVersion(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldGamePackageVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameTemplate**
```swift
    open class func getWorldGameTemplate(kind: String, completion: @escaping (_ data: GetWorldGameTemplateResponse?, _ error: Error?) -> Void)
```

A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id=my-game&name=My Game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String | 

// A fresh game package from a template (table, arena, object; collection is an NFT capability declaration), as { path, base64 } files: the world-kit init, for an agent with no local kit. ?id=my-game&name=My Game.
WorldAPI.getWorldGameTemplate(kind: kind) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | **String** |  | 

### Return type

**GetWorldGameTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldHall**
```swift
    open class func getWorldHall(completion: @escaping (_ data: GetWorldHallResponse?, _ error: Error?) -> Void)
```

The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one's title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Hall of Grails in Crossly World: data.exhibition (key, title, blurb, endsAt -- a new one every Monday UTC -- and next, the coming one's title) and data.exhibits, up to twelve real catalogue items in slot order (skuId, name, brand, imageUrl, thumbUrl, retailCents, lowestAskCents, lastSaleCents: the live order book, null when the market has none). The first stands on the centre plinth. Buy, bid or watch an exhibit through the market endpoints with its skuId.
WorldAPI.getWorldHall() { (response, error) in
    guard error == nil else {
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

**GetWorldHallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldHallLoan**
```swift
    open class func getWorldHallLoan(completion: @escaping (_ data: GetWorldHallLoanResponse?, _ error: Error?) -> Void)
```

Lend to the Hall: this week's exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition's category. perMember is how many you may lend each week.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Lend to the Hall: this week's exhibition (key, title, categorySlug, endsAt), your loans on show (id, vaultItemId, skuId, name, credit, since) and the vault pieces you can lend (eligible: vaultItemId, skuId, name, imageUrl, grade) -- held in your Crossly vault, not pledged, in the exhibition's category. perMember is how many you may lend each week.
WorldAPI.getWorldHallLoan() { (response, error) in
    guard error == nil else {
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

**GetWorldHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldHomePlaceable**
```swift
    open class func getWorldHomePlaceable(completion: @escaping (_ data: GetWorldHomePlaceableResponse?, _ error: Error?) -> Void)
```

What you can place in your home: your items and your furniture.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you can place in your home: your items and your furniture.
WorldAPI.getWorldHomePlaceable() { (response, error) in
    guard error == nil else {
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

**GetWorldHomePlaceableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldHunt**
```swift
    open class func getWorldHunt(completion: @escaping (_ data: GetWorldHuntResponse?, _ error: Error?) -> Void)
```

Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Great Hunt: data.season (id, name, startsAt, endsAt, the title and how many earn it, live), started (you read the first clue), held (keys held, 0-3, always in the order copper, jade, crystal), keys (each with its name, colour, its riddle once it is yours to read, and when you picked it up), and cleared (your rank through the Gate this season, when, and whether you earned the title) or null. Keys are picked up by walking to them in Crossly World; nothing here takes one.
WorldAPI.getWorldHunt() { (response, error) in
    guard error == nil else {
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

**GetWorldHuntResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldHuntScoreboard**
```swift
    open class func getWorldHuntScoreboard(completion: @escaping (_ data: GetWorldHuntScoreboardResponse?, _ error: Error?) -> Void)
```

The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \"A player\") and total (everybody through the Gate this season).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Great Hunt Scoreboard, as the monolith in the Commons shows it: data.season (the running season, or the last one between seasons), finishers (the first ten through the Gate in order: rank, name, short, named, at, titled -- a name shows only for somebody who chose to be seen by name in the world, everyone else is \"A player\") and total (everybody through the Gate this season).
WorldAPI.getWorldHuntScoreboard() { (response, error) in
    guard error == nil else {
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

**GetWorldHuntScoreboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldInteractiveDesign**
```swift
    open class func getWorldInteractiveDesign(id: String, completion: @escaping (_ data: GetWorldInteractiveDesignResponse?, _ error: Error?) -> Void)
```

One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your interactive designs: its draft source, the last static check, and every submitted version with its review state.
WorldAPI.getWorldInteractiveDesign(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldInteractiveDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldJob**
```swift
    open class func getWorldJob(completion: @escaping (_ data: GetWorldJobResponse?, _ error: Error?) -> Void)
```

The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The jobs board: open staff shifts you could claim, your claimed shifts and open price checks (appraisals), as the world shows them.
WorldAPI.getWorldJob() { (response, error) in
    guard error == nil else {
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

**GetWorldJobResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldKite**
```swift
    open class func getWorldKite(completion: @escaping (_ data: GetWorldKiteResponse?, _ error: Error?) -> Void)
```

Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Kites flown on the Commons lawn: data.day (today, UTC), today (kites everyone has flown today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have flown one on; the Kite flyer pin comes at 5). Kites are flown by standing out on the lawn in Crossly World by day, never over the API, and nothing is spent.
WorldAPI.getWorldKite() { (response, error) in
    guard error == nil else {
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

**GetWorldKiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldLantern**
```swift
    open class func getWorldLantern(completion: @escaping (_ data: GetWorldKiteResponse?, _ error: Error?) -> Void)
```

Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Sky lanterns in the Commons: data.day (today, UTC), today (lanterns everyone has released today) and mine (today -- yours today, up to perDay -- perDay, and days -- the days you have released one on; the Lantern lighter pin comes at 5). Lanterns are released at the lantern stand in Crossly World, never over the API, and nothing is spent.
WorldAPI.getWorldLantern() { (response, error) in
    guard error == nil else {
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

**GetWorldKiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldLauncher**
```swift
    open class func getWorldLauncher(completion: @escaping (_ data: GetWorldLauncherResponse?, _ error: Error?) -> Void)
```

The Carnival Plaza launcher: portals for Classic games, Crossly's own card games and the Commons card tables, each with players right now, your friends inside, its ranking score (published weights, retention-weighted, first-play bounce negative) and where Play goes. Twelve ring slots: friends' pick, new & rising (guaranteed test impressions), then the top, first-party capped at 25%.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Carnival Plaza launcher: portals for Classic games, Crossly's own card games and the Commons card tables, each with players right now, your friends inside, its ranking score (published weights, retention-weighted, first-play bounce negative) and where Play goes. Twelve ring slots: friends' pick, new & rising (guaranteed test impressions), then the top, first-party capped at 25%.
WorldAPI.getWorldLauncher() { (response, error) in
    guard error == nil else {
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

**GetWorldLauncherResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldManageLedger**
```swift
    open class func getWorldManageLedger(completion: @escaping (_ data: GetWorldManageLedgerResponse?, _ error: Error?) -> Void)
```

World money over 7, 30 or 90 days: plot purchases, maintenance, rent, deed sales, staff wages, shifts and stalls, in and out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// World money over 7, 30 or 90 days: plot purchases, maintenance, rent, deed sales, staff wages, shifts and stalls, in and out.
WorldAPI.getWorldManageLedger() { (response, error) in
    guard error == nil else {
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

**GetWorldManageLedgerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldManageOverview**
```swift
    open class func getWorldManageOverview(completion: @escaping (_ data: GetWorldManageOverviewResponse?, _ error: Error?) -> Void)
```

Your Crossly World at a glance: shop and addresses, property, staff and shifts, conventions, stalls, 30-day visitors and money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World at a glance: shop and addresses, property, staff and shifts, conventions, stalls, 30-day visitors and money.
WorldAPI.getWorldManageOverview() { (response, error) in
    guard error == nil else {
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

**GetWorldManageOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldManageVisitor**
```swift
    open class func getWorldManageVisitor(completion: @escaping (_ data: GetWorldManageVisitorResponse?, _ error: Error?) -> Void)
```

Who came to your world shop over 7, 30 or 90 days: the funnel, attention by day, most-looked and most-wanted items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Who came to your world shop over 7, 30 or 90 days: the funnel, attention by day, most-looked and most-wanted items.
WorldAPI.getWorldManageVisitor() { (response, error) in
    guard error == nil else {
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

**GetWorldManageVisitorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldMarket**
```swift
    open class func getWorldMarket(kind: String, id: String, completion: @escaping (_ data: GetWorldMarketResponse?, _ error: Error?) -> Void)
```

One plot or street in the Market: price, renders, neighbours, foot traffic, history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String | 
let id = "id_example" // String | 

// One plot or street in the Market: price, renders, neighbours, foot traffic, history.
WorldAPI.getWorldMarket(kind: kind, id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kind** | **String** |  | 
 **id** | **String** |  | 

### Return type

**GetWorldMarketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldNeighbourhoodClaim**
```swift
    open class func getWorldNeighbourhoodClaim(slug: String, completion: @escaping (_ data: GetWorldNeighbourhoodClaimResponse?, _ error: Error?) -> Void)
```

Whether you may claim a plot on a neighbourhood street (its top sellers by recent sales), and why not.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Whether you may claim a plot on a neighbourhood street (its top sellers by recent sales), and why not.
WorldAPI.getWorldNeighbourhoodClaim(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldNeighbourhoodClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPartyChat**
```swift
    open class func getWorldPartyChat(id: String, completion: @escaping (_ data: WorldResponse?, _ error: Error?) -> Void)
```

Your party chat: the recent lines. 404 when this is not your party.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Your party chat: the recent lines. 404 when this is not your party.
WorldAPI.getWorldPartyChat(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceBoard**
```swift
    open class func getWorldPlaceBoard(slug: String, completion: @escaping (_ data: GetWorldPlaceBoardResponse?, _ error: Error?) -> Void)
```

The Trade Floor's wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The Trade Floor's wall of wants, its authentication desk and its Vault Markets ticker (vaultMovers: bookKey, name, label, units, markCents, change24hBps; only the trade-floor place has them).
WorldAPI.getWorldPlaceBoard(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldPlaceBoardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceCollection**
```swift
    open class func getWorldPlaceCollection(slug: String, category: String, brand: String, model: String, completion: @escaping (_ data: GetWorldPlaceCollectionResponse?, _ error: Error?) -> Void)
```

One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let category = "category_example" // String | 
let brand = "brand_example" // String | 
let model = "model_example" // String | 

// One collection room: every piece of the set, owned or missing. 404 for an unknown room or set.
WorldAPI.getWorldPlaceCollection(slug: slug, category: category, brand: brand, model: model) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **category** | **String** |  | 
 **brand** | **String** |  | 
 **model** | **String** |  | 

### Return type

**GetWorldPlaceCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceDrop**
```swift
    open class func getWorldPlaceDrop(slug: String, completion: @escaping (_ data: GetWorldPlaceDropResponse?, _ error: Error?) -> Void)
```

The owner's next drop (name, cover, time, live) and how many people are waiting in the room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The owner's next drop (name, cover, time, live) and how many people are waiting in the room.
WorldAPI.getWorldPlaceDrop(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldPlaceDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceItemInterest**
```swift
    open class func getWorldPlaceItemInterest(slug: String, itemId: String, completion: @escaping (_ data: GetWorldPlaceItemInterestResponse?, _ error: Error?) -> Void)
```

How many people looked at one item in this room today.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let itemId = "itemId_example" // String | 

// How many people looked at one item in this room today.
WorldAPI.getWorldPlaceItemInterest(slug: slug, itemId: itemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **itemId** | **String** |  | 

### Return type

**GetWorldPlaceItemInterestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceLive**
```swift
    open class func getWorldPlaceLive(slug: String, completion: @escaping (_ data: GetWorldPlaceLiveResponse?, _ error: Error?) -> Void)
```

The owner's live sale: their stream and the lot on the block, or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The owner's live sale: their stream and the lot on the block, or null.
WorldAPI.getWorldPlaceLive(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldPlaceLiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceSeller**
```swift
    open class func getWorldPlaceSeller(slug: String, completion: @escaping (_ data: GetWorldPlaceSellerResponse?, _ error: Error?) -> Void)
```

The shop whose public room this is (username and name), or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The shop whose public room this is (username and name), or null.
WorldAPI.getWorldPlaceSeller(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldPlaceSellerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaceShopPet**
```swift
    open class func getWorldPlaceShopPet(slug: String, completion: @escaping (_ data: GetWorldPlaceShopPetResponse?, _ error: Error?) -> Void)
```

The shop's pet kind, or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The shop's pet kind, or null.
WorldAPI.getWorldPlaceShopPet(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldPlaceShopPetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPropertyPlot**
```swift
    open class func getWorldPropertyPlot(plotId: String, completion: @escaping (_ data: GetWorldPropertyPlotResponse?, _ error: Error?) -> Void)
```

One plot of yours: showroom, rental, value, upkeep.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let plotId = "plotId_example" // String | 

// One plot of yours: showroom, rental, value, upkeep.
WorldAPI.getWorldPropertyPlot(plotId: plotId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plotId** | **String** |  | 

### Return type

**GetWorldPropertyPlotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPropertyRental**
```swift
    open class func getWorldPropertyRental(leaseId: String, completion: @escaping (_ data: GetWorldPropertyRentalResponse?, _ error: Error?) -> Void)
```

One plot you rent out, with its payments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let leaseId = "leaseId_example" // String | 

// One plot you rent out, with its payments.
WorldAPI.getWorldPropertyRental(leaseId: leaseId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaseId** | **String** |  | 

### Return type

**GetWorldPropertyRentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPropertyRenting**
```swift
    open class func getWorldPropertyRenting(leaseId: String, completion: @escaping (_ data: GetWorldPropertyRentalResponse?, _ error: Error?) -> Void)
```

One plot you rent, with its payments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let leaseId = "leaseId_example" // String | 

// One plot you rent, with its payments.
WorldAPI.getWorldPropertyRenting(leaseId: leaseId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaseId** | **String** |  | 

### Return type

**GetWorldPropertyRentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldRail**
```swift
    open class func getWorldRail(completion: @escaping (_ data: GetWorldRailResponse?, _ error: Error?) -> Void)
```

Which Worlds payment rails are on now: cash (card), CBX, or both.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Which Worlds payment rails are on now: cash (card), CBX, or both.
WorldAPI.getWorldRail() { (response, error) in
    guard error == nil else {
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

**GetWorldRailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldSpace**
```swift
    open class func getWorldSpace(slug: String, completion: @escaping (_ data: GetWorldSpaceResponse?, _ error: Error?) -> Void)
```

One Space: its layout, host, events and your place in it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One Space: its layout, host, events and your place in it.
WorldAPI.getWorldSpace(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldSpaceCanHost**
```swift
    open class func getWorldSpaceCanHost(completion: @escaping (_ data: GetWorldSpaceCanHostResponse?, _ error: Error?) -> Void)
```

Whether you may open a Space: sellers only, at most two active.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether you may open a Space: sellers only, at most two active.
WorldAPI.getWorldSpaceCanHost() { (response, error) in
    guard error == nil else {
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

**GetWorldSpaceCanHostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStaffPosting**
```swift
    open class func getWorldStaffPosting(id: String, completion: @escaping (_ data: GetWorldStaffPostingResponse?, _ error: Error?) -> Void)
```

One of your postings, with its shifts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your postings, with its shifts.
WorldAPI.getWorldStaffPosting(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldStaffPostingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStaffReputation**
```swift
    open class func getWorldStaffReputation(completion: @escaping (_ data: GetWorldStaffReputationResponse?, _ error: Error?) -> Void)
```

Your employer reputation, rated by the people who worked your public jobs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your employer reputation, rated by the people who worked your public jobs.
WorldAPI.getWorldStaffReputation() { (response, error) in
    guard error == nil else {
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

**GetWorldStaffReputationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStreetFund**
```swift
    open class func getWorldStreetFund(slug: String, completion: @escaping (_ data: GetWorldStreetFundResponse?, _ error: Error?) -> Void)
```

A street's fund: the CBX property payments on its plots over the last four weeks, and the street events it unlocked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// A street's fund: the CBX property payments on its plots over the last four weeks, and the street events it unlocked.
WorldAPI.getWorldStreetFund(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldStreetFundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStreetOwned**
```swift
    open class func getWorldStreetOwned(id: String, completion: @escaping (_ data: GetWorldStreetOwnedResponse?, _ error: Error?) -> Void)
```

A street you own: tenants, applications, upkeep, look, fund.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A street you own: tenants, applications, upkeep, look, fund.
WorldAPI.getWorldStreetOwned(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldStreetOwnedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStreetTrespassBarrier**
```swift
    open class func getWorldStreetTrespassBarrier(slug: String, completion: @escaping (_ data: GetWorldStreetTrespassBarrierResponse?, _ error: Error?) -> Void)
```

Plot numbers on the street you are trespassed from.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Plot numbers on the street you are trespassed from.
WorldAPI.getWorldStreetTrespassBarrier(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldStreetTrespassBarrierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldTrialLeaderboard**
```swift
    open class func getWorldTrialLeaderboard(course: String, completion: @escaping (_ data: GetWorldTrialLeaderboardResponse?, _ error: Error?) -> Void)
```

A Time Trials course's boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week's ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \"A player\". 404 for an unknown course; course 1 is commons-loop.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let course = "course_example" // String | 

// A Time Trials course's boards, as the board beside it in the Commons shows them: data.course, week, weekly (this week's ten fastest: rank, name, short, named, ms, at) and allTime (the ten fastest ever, each person once). A name shows only for somebody who chose to be seen by name in the world; everyone else is \"A player\". 404 for an unknown course; course 1 is commons-loop.
WorldAPI.getWorldTrialLeaderboard(course: course) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **course** | **String** |  | 

### Return type

**GetWorldTrialLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldTrialMine**
```swift
    open class func getWorldTrialMine(completion: @escaping (_ data: GetWorldTrialMineResponse?, _ error: Error?) -> Void)
```

Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Hoverboard Time Trials bests: data.week (its Monday, YYYY-MM-DD, UTC) and courses, each with course (id, name, parMs, rings, lengthM), week (your best lap this week in ms, your place on the weekly board, laps finished, and the split at each ring) or null, and allTime (your best ever in ms, your place on the all-time board, when) or null. Laps are timed by Crossly from where it saw you ride in the world; nothing here writes one.
WorldAPI.getWorldTrialMine() { (response, error) in
    guard error == nil else {
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

**GetWorldTrialMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldVenueQuote**
```swift
    open class func getWorldVenueQuote(id: String, completion: @escaping (_ data: GetWorldVenueQuoteResponse?, _ error: Error?) -> Void)
```

What a hall costs for those days (startsOn, endsOn), the full-refund date, and whether it is free.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// What a hall costs for those days (startsOn, endsOn), the full-refund date, and whether it is free.
WorldAPI.getWorldVenueQuote(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldVenueQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldWallet**
```swift
    open class func getWorldWallet(completion: @escaping (_ data: GetWorldWalletResponse?, _ error: Error?) -> Void)
```

Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every balance you hold in Crossly World, read-only: bucksCents (Crossly Bucks, cents); cbx (available, decimals, and the three CBX balances kept apart as base-unit STRINGS -- granted (spend here only), earned (withdrawable once matured), connected (a delegation ceiling on your own wallet, not cash on hand) -- plus pendingCents of cashback not yet matured); cosm (available, decimals, baseUnits string). available:false means that currency is not provisioned on this deployment, not that you hold none.
WorldAPI.getWorldWallet() { (response, error) in
    guard error == nil else {
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

**GetWorldWalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldWish**
```swift
    open class func getWorldWish(completion: @escaping (_ data: GetWorldWishResponse?, _ error: Error?) -> Void)
```

The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow's wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Wishing Fountain in the Commons: data.day (today, UTC), today (wishes everyone has made today) and mine (madeToday, days -- how many days you have wished on, the Wishmaker pin comes at 7 -- and nextAt, when tomorrow's wish opens). One wish a day; a wish is made by tossing a coin at the fountain in Crossly World, never over the API, and nothing is spent.
WorldAPI.getWorldWish() { (response, error) in
    guard error == nil else {
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

**GetWorldWishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldWorkEarning**
```swift
    open class func getWorldWorkEarning(completion: @escaping (_ data: GetWorldWorkEarningResponse?, _ error: Error?) -> Void)
```

What your shifts paid, by rail.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your shifts paid, by rail.
WorldAPI.getWorldWorkEarning() { (response, error) in
    guard error == nil else {
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

**GetWorldWorkEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldWorkMine**
```swift
    open class func getWorldWorkMine(completion: @escaping (_ data: GetWorldWorkMineResponse?, _ error: Error?) -> Void)
```

Where you work: your seats, applications and your teams’ open jobs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Where you work: your seats, applications and your teams’ open jobs.
WorldAPI.getWorldWorkMine() { (response, error) in
    guard error == nil else {
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

**GetWorldWorkMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGameCoupons**
```swift
    open class func listGameCoupons(completion: @escaping (_ data: ListGameCouponsResponse?, _ error: Error?) -> Void)
```

Your fee-back coupons from house-game wins: Bucks paid out of the fee on your next market purchase.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your fee-back coupons from house-game wins: Bucks paid out of the fee on your next market purchase.
WorldAPI.listGameCoupons() { (response, error) in
    guard error == nil else {
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

**ListGameCouponsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listShowroomItemSearch**
```swift
    open class func listShowroomItemSearch(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: ListShowroomItemSearchResponse?, _ error: Error?) -> Void)
```

Search this store's in-stock items (title, brand, SKU) to put on a fixture or in a window slot; each with listed / passport / multi_unit badges.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Search this store's in-stock items (title, brand, SKU) to put on a fixture or in a window slot; each with listed / passport / multi_unit badges.
WorldAPI.listShowroomItemSearch(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**ListShowroomItemSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listShowrooms**
```swift
    open class func listShowrooms(storefrontId: UUID? = nil, completion: @escaping (_ data: ListShowroomsResponse?, _ error: Error?) -> Void)
```

Your store's showrooms, primary first: name, visibility, auto-include, pinned items, fixtures, billing and the plots each stands on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Your store's showrooms, primary first: name, visibility, auto-include, pinned items, fixtures, billing and the plots each stands on.
WorldAPI.listShowrooms(storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**ListShowroomsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialLeases**
```swift
    open class func listSpatialLeases(completion: @escaping (_ data: ListSpatialLeasesResponse?, _ error: Error?) -> Void)
```

Plots offered for lease on every street, cheapest first: address, weekly rent and maintenance in CENTS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots offered for lease on every street, cheapest first: address, weekly rent and maintenance in CENTS.
WorldAPI.listSpatialLeases() { (response, error) in
    guard error == nil else {
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

**ListSpatialLeasesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialSceneGrants**
```swift
    open class func listSpatialSceneGrants(id: String, completion: @escaping (_ data: ListSpatialSceneGrantsResponse?, _ error: Error?) -> Void)
```

Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Everyone who can currently walk into one of your rooms, and unused invites. Never returns codes.
WorldAPI.listSpatialSceneGrants(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListSpatialSceneGrantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialSceneWarehouseUnplaced**
```swift
    open class func listSpatialSceneWarehouseUnplaced(id: String, completion: @escaping (_ data: ListSpatialSceneWarehouseUnplacedResponse?, _ error: Error?) -> Void)
```

Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stock not yet on a shelf in a warehouse room you can arrange (q filters by title).
WorldAPI.listSpatialSceneWarehouseUnplaced(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListSpatialSceneWarehouseUnplacedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialSharedWithMe**
```swift
    open class func listSpatialSharedWithMe(completion: @escaping (_ data: ListSpatialSharedWithMeResponse?, _ error: Error?) -> Void)
```

Rooms other people let you into.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rooms other people let you into.
WorldAPI.listSpatialSharedWithMe() { (response, error) in
    guard error == nil else {
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

**ListSpatialSharedWithMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialStreetLeases**
```swift
    open class func listSpatialStreetLeases(slug: String, completion: @escaping (_ data: ListSpatialLeasesResponse?, _ error: Error?) -> Void)
```

Plots on a street offered for lease: weekly rent in CENTS and terms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Plots on a street offered for lease: weekly rent in CENTS and terms.
WorldAPI.listSpatialStreetLeases(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListSpatialLeasesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldAttendantUsage**
```swift
    open class func listWorldAttendantUsage(completion: @escaping (_ data: ListWorldAttendantUsageResponse?, _ error: Error?) -> Void)
```

Your AI attendant’s usage log.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your AI attendant’s usage log.
WorldAPI.listWorldAttendantUsage() { (response, error) in
    guard error == nil else {
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

**ListWorldAttendantUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldAvatarCloset**
```swift
    open class func listWorldAvatarCloset(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: ListWorldAvatarClosetResponse?, _ error: Error?) -> Void)
```

Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int |  (optional)
let offset = 987 // Int |  (optional)

// Everything you can verifiably wear (your Crossly purchase receipts), newest first: receiptId, item title, brand, size, image, catalog sku/variant, quantity, purchasedAt. Pass a receiptId to POST /v1/world/avatar/equip to put one on. limit 1-200, offset for paging.
WorldAPI.listWorldAvatarCloset(limit: limit, offset: offset) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **offset** | **Int** |  | [optional] 

### Return type

**ListWorldAvatarClosetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldAvatarStock**
```swift
    open class func listWorldAvatarStock(completion: @escaping (_ data: ListWorldAvatarStockResponse?, _ error: Error?) -> Void)
```

Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Items of your OWN inventory you could wear into a room as a walking storefront: inventoryItemId, title, image and the slot it would go on. Pass an inventoryItemId to POST /v1/world/avatar/equip.
WorldAPI.listWorldAvatarStock() { (response, error) in
    guard error == nil else {
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

**ListWorldAvatarStockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldAvatarWearables**
```swift
    open class func listWorldAvatarWearables(completion: @escaping (_ data: ListWorldAvatarWearablesResponse?, _ error: Error?) -> Void)
```

Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wearables you have authored as a designer: id, sku, name, slot, priceBaseUnits (COSM base units, a string), maxSupply, mintedCount, active (false until reviewed). meta.available is false when COSM is not provisioned here.
WorldAPI.listWorldAvatarWearables() { (response, error) in
    guard error == nil else {
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

**ListWorldAvatarWearablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldBestDressed**
```swift
    open class func listWorldBestDressed(completion: @escaping (_ data: ListWorldBestDressedResponse?, _ error: Error?) -> Void)
```

This week's best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// This week's best-dressed board (Monday-based), top ten: name, profile username and loves. Only people still choosing to be seen by name.
WorldAPI.listWorldBestDressed() { (response, error) in
    guard error == nil else {
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

**ListWorldBestDressedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldCapabilityDeclarations**
```swift
    open class func listWorldCapabilityDeclarations(completion: @escaping (_ data: ListWorldCapabilityDeclarationsResponse?, _ error: Error?) -> Void)
```

Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your capability declarations, in every review state (pending, live, rejected with the note from the reviewer).
WorldAPI.listWorldCapabilityDeclarations() { (response, error) in
    guard error == nil else {
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

**ListWorldCapabilityDeclarationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldContestStandings**
```swift
    open class func listWorldContestStandings(id: String, completion: @escaping (_ data: ListWorldContestStandingsResponse?, _ error: Error?) -> Void)
```

The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The standings of a contest now: best score first (or lowest, for a time game), ties to whoever got there first.
WorldAPI.listWorldContestStandings(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldContestStandingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldContests**
```swift
    open class func listWorldContests(completion: @escaping (_ data: ListWorldContestsResponse?, _ error: Error?) -> Void)
```

Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open skill contests on Crossly World games, soonest ending first: entry mode (free, sponsored, paid) and prizes.
WorldAPI.listWorldContests() { (response, error) in
    guard error == nil else {
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

**ListWorldContestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldConventionExhibitors**
```swift
    open class func listWorldConventionExhibitors(id: String, completion: @escaping (_ data: ListWorldConventionExhibitorsResponse?, _ error: Error?) -> Void)
```

The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The host roster: who applied, who was invited, who is coming (by shop handle). Host only; 404 otherwise.
WorldAPI.listWorldConventionExhibitors(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldConventionExhibitorsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldConventionMessages**
```swift
    open class func listWorldConventionMessages(id: String, completion: @escaping (_ data: ListWorldConventionMessagesResponse?, _ error: Error?) -> Void)
```

Convention messages you may read: the organiser all of them (?with=<userId> for one seller), an exhibitor theirs and the broadcasts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Convention messages you may read: the organiser all of them (?with=<userId> for one seller), an exhibitor theirs and the broadcasts.
WorldAPI.listWorldConventionMessages(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldConventionMessagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldConventionMine**
```swift
    open class func listWorldConventionMine(completion: @escaping (_ data: ListWorldConventionMineResponse?, _ error: Error?) -> Void)
```

Conventions you host and conventions you are exhibiting at.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Conventions you host and conventions you are exhibiting at.
WorldAPI.listWorldConventionMine() { (response, error) in
    guard error == nil else {
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

**ListWorldConventionMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldConventions**
```swift
    open class func listWorldConventions(completion: @escaping (_ data: ListWorldConventionsResponse?, _ error: Error?) -> Void)
```

Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Conventions open to sellers now or soon: title, room, dates, and how to get a table (invite, free, fee or revenue share).
WorldAPI.listWorldConventions() { (response, error) in
    guard error == nil else {
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

**ListWorldConventionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldCosmCosmetics**
```swift
    open class func listWorldCosmCosmetics(tier: Tier_listWorldCosmCosmetics? = nil, slot: String? = nil, completion: @escaping (_ data: ListCosmCosmeticsResponse?, _ error: Error?) -> Void)
```

The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let tier = "tier_example" // String |  (optional)
let slot = "slot_example" // String |  (optional)

// The active cosmetics catalogue, optionally by tier (premium | earned | stake_exclusive) or slot: sku, name, slot, tier, priceCents (premium only), priceBaseUnits (earned only, COSM base units string), supply, fusable, preview and what it unlocks. Read-only: cosmetics are bought on crossly.net. meta.available / meta.decimals.
WorldAPI.listWorldCosmCosmetics(tier: tier, slot: slot) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tier** | **String** |  | [optional] 
 **slot** | **String** |  | [optional] 

### Return type

**ListCosmCosmeticsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldCosmDesigns**
```swift
    open class func listWorldCosmDesigns(completion: @escaping (_ data: ListWorldCosmDesignsResponse?, _ error: Error?) -> Void)
```

Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your COSM designs in the world: popularity toward the free chain unlock a popular limited design earns, whether it is on chain, and your opt-out. Declare what a design does with chain cosm and the design id as the contract.
WorldAPI.listWorldCosmDesigns() { (response, error) in
    guard error == nil else {
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

**ListWorldCosmDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldCosmInventory**
```swift
    open class func listWorldCosmInventory(completion: @escaping (_ data: ListWorldCosmInventoryResponse?, _ error: Error?) -> Void)
```

Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Cosmetics you hold, newest first: ownershipId, cosmeticId, sku, name, slot, tier, how it was acquired, bound, edition number, acquiredAt and what it unlocks. Pass a cosmeticId to POST /v1/world/avatar/equip to wear one. meta.available.
WorldAPI.listWorldCosmInventory() { (response, error) in
    guard error == nil else {
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

**ListWorldCosmInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorCatalogue**
```swift
    open class func listWorldDecorCatalogue(surface: Surface_listWorldDecorCatalogue? = nil, completion: @escaping (_ data: ListWorldDecorCatalogueResponse?, _ error: Error?) -> Void)
```

The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let surface = "surface_example" // String |  (optional)

// The Decor Shop: every active cosmetic grouped by surface (avatar | home | shop | stall | street) and slot -- name, tier, priceCents (premium: the dollar price, paid in CBX at spot) or priceBaseUnits (earned: COSM, base-unit string), edition supply and remaining, tint swatch, preview, what it unlocks, owned + your edition number, and buyWith. Read-only: buying and minting happen on crossly.net/shop/decor. meta.available, meta.mint {open, reason}, meta.cbx {open, reason} (CBX opens at mint), meta.balances (your COSM and CBX, base-unit strings), meta.surfaces. Never sold by card.
WorldAPI.listWorldDecorCatalogue(surface: surface) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **surface** | **String** |  | [optional] 

### Return type

**ListWorldDecorCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorDesigns**
```swift
    open class func listWorldDecorDesigns(completion: @escaping (_ data: ListWorldDecorDesignsResponse?, _ error: Error?) -> Void)
```

Your decor designs and their review state. available is false until COSM is provisioned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your decor designs and their review state. available is false until COSM is provisioned.
WorldAPI.listWorldDecorDesigns() { (response, error) in
    guard error == nil else {
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

**ListWorldDecorDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorInventory**
```swift
    open class func listWorldDecorInventory(completion: @escaping (_ data: ListWorldDecorInventoryResponse?, _ error: Error?) -> Void)
```

Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your decor as an INVENTORY. Decor is a quantity: every copy is one unit -- a placed prop (home_prop, prop) uses one per placement, a finish (wallpaper, floor, theme, shopfront, facade, sign style, street lamp/banner/paving/arch, booth canopy/pattern/lights/counter) one per space it dresses; free values are unlimited. Per item: key, value, pair (key:value), name, sku, surface, placeable, tint, owned, placed, available, placements [{ space { kind: home | shop | stall | street, id, name }, count }], copies [{ ownershipId, editionNumber }]. meta.available, meta.spaces (every space you dress). Read-only: placing and retracting happen in the app or on crossly.net.
WorldAPI.listWorldDecorInventory() { (response, error) in
    guard error == nil else {
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

**ListWorldDecorInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorMarket**
```swift
    open class func listWorldDecorMarket(completion: @escaping (_ data: ListWorldDecorMarketResponse?, _ error: Error?) -> Void)
```

Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Decor copies other people are reselling (asks in COSM); optional pair filter. Read only: listing and buying stay on crossly.net.
WorldAPI.listWorldDecorMarket() { (response, error) in
    guard error == nil else {
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

**ListWorldDecorMarketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorMine**
```swift
    open class func listWorldDecorMine(completion: @escaping (_ data: ListWorldDecorMineResponse?, _ error: Error?) -> Void)
```

Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Decor you hold AND decor you have minted to your wallet, newest first: ownershipId, cosmeticId, sku, name, surface, slot, tier, acquiredVia, bound, editionNumber of maxSupply, mintState (held | minting | minted), mintAddress, mintable, and what it unlocks. meta.available, meta.mint.
WorldAPI.listWorldDecorMine() { (response, error) in
    guard error == nil else {
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

**ListWorldDecorMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorStalls**
```swift
    open class func listWorldDecorStalls(completion: @escaping (_ data: ListStallMineResponse?, _ error: Error?) -> Void)
```

Your stall bookings, to dress their booths.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your stall bookings, to dress their booths.
WorldAPI.listWorldDecorStalls() { (response, error) in
    guard error == nil else {
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

**ListStallMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDecorStreets**
```swift
    open class func listWorldDecorStreets(completion: @escaping (_ data: ListWorldDecorStreetsResponse?, _ error: Error?) -> Void)
```

Streets you may dress.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Streets you may dress.
WorldAPI.listWorldDecorStreets() { (response, error) in
    guard error == nil else {
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

**ListWorldDecorStreetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldDms**
```swift
    open class func listWorldDms(completion: @escaping (_ data: ListWorldDmsResponse?, _ error: Error?) -> Void)
```

Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your friends (mutual follows) for direct messages: each with userId, name, the last line between you (text, at, mine) or null, and how many of theirs you have not read; most recent first.
WorldAPI.listWorldDms() { (response, error) in
    guard error == nil else {
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

**ListWorldDmsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldFollowingRooms**
```swift
    open class func listWorldFollowingRooms(completion: @escaping (_ data: ListWorldFollowingRoomsResponse?, _ error: Error?) -> Void)
```

The public rooms of people you follow, to walk into.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The public rooms of people you follow, to walk into.
WorldAPI.listWorldFollowingRooms() { (response, error) in
    guard error == nil else {
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

**ListWorldFollowingRoomsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldFollows**
```swift
    open class func listWorldFollows(completion: @escaping (_ data: ListWorldFollowsResponse?, _ error: Error?) -> Void)
```

Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Everybody you follow in Crossly World, newest first, each with mutual: true when they follow you back (a friend).
WorldAPI.listWorldFollows() { (response, error) in
    guard error == nil else {
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

**ListWorldFollowsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldFriendHere**
```swift
    open class func listWorldFriendHere(completion: @escaping (_ data: ListWorldFriendsResponse?, _ error: Error?) -> Void)
```

Your friends in Crossly World right now, and where (when they share it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your friends in Crossly World right now, and where (when they share it).
WorldAPI.listWorldFriendHere() { (response, error) in
    guard error == nil else {
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

**ListWorldFriendsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldFriends**
```swift
    open class func listWorldFriends(completion: @escaping (_ data: ListWorldFriendsResponse?, _ error: Error?) -> Void)
```

Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your friends (mutual follows), each with the PUBLIC room they are in right now when they chose to be seen by name there (else null), and their home address slug when they let friends visit. Invisible and anonymous friends are never located.
WorldAPI.listWorldFriends() { (response, error) in
    guard error == nil else {
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

**ListWorldFriendsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldGamePackageReceipts**
```swift
    open class func listWorldGamePackageReceipts(id: String, completion: @escaping (_ data: ListWorldGamePackageReceiptsResponse?, _ error: Error?) -> Void)
```

Store sales of one of your game packages, newest first: item, price paid, edition, when. Never who bought. Cursor-paged: pass pagination.nextCursor back as ?cursor=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Store sales of one of your game packages, newest first: item, price paid, edition, when. Never who bought. Cursor-paged: pass pagination.nextCursor back as ?cursor=.
WorldAPI.listWorldGamePackageReceipts(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldGamePackageReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldGamePackages**
```swift
    open class func listWorldGamePackages(completion: @escaping (_ data: ListWorldGamePackagesResponse?, _ error: Error?) -> Void)
```

Your game packages, each with its latest version and review state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your game packages, each with its latest version and review state.
WorldAPI.listWorldGamePackages() { (response, error) in
    guard error == nil else {
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

**ListWorldGamePackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldGameRewards**
```swift
    open class func listWorldGameRewards(completion: @escaping (_ data: ListWorldGameRewardsResponse?, _ error: Error?) -> Void)
```

Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rewards you won in games: granted, or recorded as unfunded for COSM and CBX (a game prints no value).
WorldAPI.listWorldGameRewards() { (response, error) in
    guard error == nil else {
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

**ListWorldGameRewardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldGames**
```swift
    open class func listWorldGames(completion: @escaping (_ data: ListWorldGamesResponse?, _ error: Error?) -> Void)
```

The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Game Directory: every live, reviewed game package with its players, places, rewards, contests and the piece people place.
WorldAPI.listWorldGames() { (response, error) in
    guard error == nil else {
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

**ListWorldGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldHomeBuilding**
```swift
    open class func listWorldHomeBuilding(completion: @escaping (_ data: ListWorldHomeBuildingResponse?, _ error: Error?) -> Void)
```

Homes whose owner made you a co-builder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Homes whose owner made you a co-builder.
WorldAPI.listWorldHomeBuilding() { (response, error) in
    guard error == nil else {
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

**ListWorldHomeBuildingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldInteractiveCatalogue**
```swift
    open class func listWorldInteractiveCatalogue(completion: @escaping (_ data: ListWorldInteractiveCatalogueResponse?, _ error: Error?) -> Void)
```

Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Interactive objects: every piece that runs a shared script in a room (first-party and approved creator designs). Per item: model (the piece key a home layout or boutique prop stores), decorValue (the home_prop value its SKU claims), source (first_party | creator), name, blurb, size [x, z] metres, fallbackMesh, cosmeticId (the SKU on the Decor Shop, null when not on sale) and version (a creator design: the approved version every copy runs). Read-only: buying is on crossly.net/shop/decor.
WorldAPI.listWorldInteractiveCatalogue() { (response, error) in
    guard error == nil else {
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

**ListWorldInteractiveCatalogueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldInteractiveDesigns**
```swift
    open class func listWorldInteractiveDesigns(archived: Archived_listWorldInteractiveDesigns? = nil, completion: @escaping (_ data: ListWorldInteractiveDesignsResponse?, _ error: Error?) -> Void)
```

Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null = none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null = not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. `archived`: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen in the Creator Studio on crossly.net (/studio/creator/creations/interactive/new/edit).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let archived = "archived_example" // String |  (optional)

// Your interactive-object designs (MML documents you wrote), newest first: id, handle, name, footprint (s | m | l | f), tint, priceBaseUnits (COSM, base-unit string), maxSupply, model, decorValue, cosmeticId, liveVersion (the approved version every copy runs; null = none), withdrawnReason, archivedAt (you archived it: off sale, owned copies keep running; null = not archived), latestVersion { version, state: pending | approved | rejected | withdrawn | cancelled, decisionNote }, inReview. `archived`: exclude (default), include or only archived designs. Read-only: writing, previewing, submitting and archiving happen in the Creator Studio on crossly.net (/studio/creator/creations/interactive/new/edit).
WorldAPI.listWorldInteractiveDesigns(archived: archived) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **archived** | **String** |  | [optional] 

### Return type

**ListWorldInteractiveDesignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldJobBoard**
```swift
    open class func listWorldJobBoard(completion: @escaping (_ data: ListWorldJobBoardResponse?, _ error: Error?) -> Void)
```

The public Job Board, filterable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The public Job Board, filterable.
WorldAPI.listWorldJobBoard() { (response, error) in
    guard error == nil else {
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

**ListWorldJobBoardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldJobPosted**
```swift
    open class func listWorldJobPosted(completion: @escaping (_ data: ListJobShiftsResponse?, _ error: Error?) -> Void)
```

Shifts you posted for your rooms, with who claimed each and how it went.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Shifts you posted for your rooms, with who claimed each and how it went.
WorldAPI.listWorldJobPosted() { (response, error) in
    guard error == nil else {
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

**ListJobShiftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldMarket**
```swift
    open class func listWorldMarket(completion: @escaping (_ data: ListWorldMarketResponse?, _ error: Error?) -> Void)
```

Plots and streets for sale or rent in the Worlds Market.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots and streets for sale or rent in the Worlds Market.
WorldAPI.listWorldMarket() { (response, error) in
    guard error == nil else {
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

**ListWorldMarketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldMarketStreetSigns**
```swift
    open class func listWorldMarketStreetSigns(slug: String, completion: @escaping (_ data: ListWorldMarketStreetSignsResponse?, _ error: Error?) -> Void)
```

The street's for-sale and for-rent boards.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The street's for-sale and for-rent boards.
WorldAPI.listWorldMarketStreetSigns(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldMarketStreetSignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldOutfits**
```swift
    open class func listWorldOutfits(completion: @escaping (_ data: ListWorldOutfitsResponse?, _ error: Error?) -> Void)
```

Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your saved outfits (up to 6, oldest first): id, name, appearance (skin, hair, hairColour, eyes, build) and items -- each worn thing as the door it goes back on by (slot, door: cosmetic | receipt | stock, id, label). Put one on with POST /v1/world/outfits/:id/apply.
WorldAPI.listWorldOutfits() { (response, error) in
    guard error == nil else {
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

**ListWorldOutfitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceBans**
```swift
    open class func listWorldPlaceBans(slug: String, completion: @escaping (_ data: ListWorldPlaceBansResponse?, _ error: Error?) -> Void)
```

Who is banned from a place you own (your boutique or home).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Who is banned from a place you own (your boutique or home).
WorldAPI.listWorldPlaceBans(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceBansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceBundles**
```swift
    open class func listWorldPlaceBundles(slug: String, completion: @escaping (_ data: ListWorldPlaceBundlesResponse?, _ error: Error?) -> Void)
```

The owner's bundle deals mapped onto this room's items (itemIds null = any N from the shop). The discount is decided at checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The owner's bundle deals mapped onto this room's items (itemIds null = any N from the shop). The discount is decided at checkout.
WorldAPI.listWorldPlaceBundles(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceBundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceCollections**
```swift
    open class func listWorldPlaceCollections(slug: String, completion: @escaping (_ data: ListWorldPlaceCollectionsResponse?, _ error: Error?) -> Void)
```

The owner's collection rooms: one per category, brand and model they collect.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The owner's collection rooms: one per category, brand and model they collect.
WorldAPI.listWorldPlaceCollections(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceOffers**
```swift
    open class func listWorldPlaceOffers(slug: String, completion: @escaping (_ data: ListWorldPlaceOffersResponse?, _ error: Error?) -> Void)
```

What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// What is for sale in a public room: price, condition and stock, with market references. 404 when no such room is shared.
WorldAPI.listWorldPlaceOffers(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceRadar**
```swift
    open class func listWorldPlaceRadar(slug: String, completion: @escaping (_ data: ListWorldPlaceRadarResponse?, _ error: Error?) -> Void)
```

What you have that someone here wants, and what is here that you want: matched on catalog ids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// What you have that someone here wants, and what is here that you want: matched on catalog ids.
WorldAPI.listWorldPlaceRadar(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceRadarResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceTradeTables**
```swift
    open class func listWorldPlaceTradeTables(slug: String, completion: @escaping (_ data: ListWorldPlaceTradeTablesResponse?, _ error: Error?) -> Void)
```

The open trade tables in a place: who is sitting and what is laid on the mat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The open trade tables in a place: who is sitting and what is laid on the mat.
WorldAPI.listWorldPlaceTradeTables(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceTradeTablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPlaceTrades**
```swift
    open class func listWorldPlaceTrades(slug: String, completion: @escaping (_ data: ListWorldPlaceTradesResponse?, _ error: Error?) -> Void)
```

Items in this room open to trades, each with its trade post path.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Items in this room open to trades, each with its trade post path.
WorldAPI.listWorldPlaceTrades(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldPlaceTradesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPromoted**
```swift
    open class func listWorldPromoted(completion: @escaping (_ data: ListWorldPromotedResponse?, _ error: Error?) -> Void)
```

Promoted places in Crossly World: boosted showrooms and conventions (Sponsored, labelled \"Promoted\"), with the token to send when one is opened.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Promoted places in Crossly World: boosted showrooms and conventions (Sponsored, labelled \"Promoted\"), with the token to send when one is opened.
WorldAPI.listWorldPromoted() { (response, error) in
    guard error == nil else {
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

**ListWorldPromotedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPropertyPlots**
```swift
    open class func listWorldPropertyPlots(completion: @escaping (_ data: ListWorldPropertyPlotsResponse?, _ error: Error?) -> Void)
```

Plots your store owns or rents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots your store owns or rents.
WorldAPI.listWorldPropertyPlots() { (response, error) in
    guard error == nil else {
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

**ListWorldPropertyPlotsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPropertyRentals**
```swift
    open class func listWorldPropertyRentals(completion: @escaping (_ data: ListWorldPropertyRentalsResponse?, _ error: Error?) -> Void)
```

Plots you rent out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots you rent out.
WorldAPI.listWorldPropertyRentals() { (response, error) in
    guard error == nil else {
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

**ListWorldPropertyRentalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPropertyRenting**
```swift
    open class func listWorldPropertyRenting(completion: @escaping (_ data: ListWorldPropertyRentalsResponse?, _ error: Error?) -> Void)
```

Plots you rent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots you rent.
WorldAPI.listWorldPropertyRenting() { (response, error) in
    guard error == nil else {
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

**ListWorldPropertyRentalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPropertyTrespassed**
```swift
    open class func listWorldPropertyTrespassed(completion: @escaping (_ data: ListWorldPropertyTrespassedResponse?, _ error: Error?) -> Void)
```

People your store has banned, owner-wide or from one showroom.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// People your store has banned, owner-wide or from one showroom.
WorldAPI.listWorldPropertyTrespassed() { (response, error) in
    guard error == nil else {
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

**ListWorldPropertyTrespassedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldProvenance**
```swift
    open class func listWorldProvenance(completion: @escaping (_ data: ListWorldProvenanceResponse?, _ error: Error?) -> Void)
```

Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds=a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \"Found at The Sneaker Vault, Oct 2026\" }]. Yours only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Provenance trails: where in Crossly World your purchases were found, newest first (optionally ?listingIds=a,b -- platform listing ids). data: [{ platformListingId, slug (the listing public slug), kind (room | window | stall | space | drop | auction | worn | agent), place (its name, or null when gone), at, line -- e.g. \"Found at The Sneaker Vault, Oct 2026\" }]. Yours only.
WorldAPI.listWorldProvenance() { (response, error) in
    guard error == nil else {
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

**ListWorldProvenanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldQuests**
```swift
    open class func listWorldQuests(completion: @escaping (_ data: ListWorldQuestsResponse?, _ error: Error?) -> Void)
```

Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every world quest with your progress: key, the pin it earns, goal, target, count, done, colour. meta.wearing is the pin on your nameplate (or null); meta.streak your current and best daily visit streak. Progress only comes from what the server saw -- there is no write of it.
WorldAPI.listWorldQuests() { (response, error) in
    guard error == nil else {
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

**ListWorldQuestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldSpaceMine**
```swift
    open class func listWorldSpaceMine(completion: @escaping (_ data: ListWorldSpacesResponse?, _ error: Error?) -> Void)
```

Spaces you belong to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Spaces you belong to.
WorldAPI.listWorldSpaceMine() { (response, error) in
    guard error == nil else {
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

**ListWorldSpacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldSpaceRequests**
```swift
    open class func listWorldSpaceRequests(slug: String, completion: @escaping (_ data: ListWorldSpaceRequestsResponse?, _ error: Error?) -> Void)
```

As host or co-host, who asked to join.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// As host or co-host, who asked to join.
WorldAPI.listWorldSpaceRequests(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldSpaceRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldSpaceWhatsOn**
```swift
    open class func listWorldSpaceWhatsOn(completion: @escaping (_ data: ListWorldSpaceWhatsOnResponse?, _ error: Error?) -> Void)
```

Live and upcoming events across Spaces (streets=1 and stage=1 add street and Main Stage events).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live and upcoming events across Spaces (streets=1 and stage=1 add street and Main Stage events).
WorldAPI.listWorldSpaceWhatsOn() { (response, error) in
    guard error == nil else {
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

**ListWorldSpaceWhatsOnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldSpaces**
```swift
    open class func listWorldSpaces(completion: @escaping (_ data: ListWorldSpacesResponse?, _ error: Error?) -> Void)
```

The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Spaces directory: seller-hosted clubs with a venue, members and events (optional venue filter).
WorldAPI.listWorldSpaces() { (response, error) in
    guard error == nil else {
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

**ListWorldSpacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStaffApplicants**
```swift
    open class func listWorldStaffApplicants(completion: @escaping (_ data: ListWorldStaffApplicantsResponse?, _ error: Error?) -> Void)
```

Who applied to your postings, with their worker reputation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Who applied to your postings, with their worker reputation.
WorldAPI.listWorldStaffApplicants() { (response, error) in
    guard error == nil else {
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

**ListWorldStaffApplicantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStaffPeople**
```swift
    open class func listWorldStaffPeople(completion: @escaping (_ data: ListWorldStaffPeopleResponse?, _ error: Error?) -> Void)
```

Everyone working for you: your Settings team and public workers, with their seats.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Everyone working for you: your Settings team and public workers, with their seats.
WorldAPI.listWorldStaffPeople() { (response, error) in
    guard error == nil else {
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

**ListWorldStaffPeopleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStaffPlaces**
```swift
    open class func listWorldStaffPlaces(completion: @escaping (_ data: ListWorldStaffPlacesResponse?, _ error: Error?) -> Void)
```

The showrooms, stalls and conventions a job can be posted at, and the pay rails that are live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The showrooms, stalls and conventions a job can be posted at, and the pay rails that are live.
WorldAPI.listWorldStaffPlaces() { (response, error) in
    guard error == nil else {
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

**ListWorldStaffPlacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStaffPostings**
```swift
    open class func listWorldStaffPostings(completion: @escaping (_ data: ListWorldStaffPostingsResponse?, _ error: Error?) -> Void)
```

Your job postings, with their upcoming shifts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your job postings, with their upcoming shifts.
WorldAPI.listWorldStaffPostings() { (response, error) in
    guard error == nil else {
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

**ListWorldStaffPostingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStaffShifts**
```swift
    open class func listWorldStaffShifts(completion: @escaping (_ data: ListWorldStaffShiftsResponse?, _ error: Error?) -> Void)
```

Your scheduled seats and who is on them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your scheduled seats and who is on them.
WorldAPI.listWorldStaffShifts() { (response, error) in
    guard error == nil else {
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

**ListWorldStaffShiftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldStreaks**
```swift
    open class func listWorldStreaks(completion: @escaping (_ data: ListWorldStreaksResponse?, _ error: Error?) -> Void)
```

The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The longest current daily visit streaks (2+ days), top ten: name and days. Only people still choosing to be seen by name.
WorldAPI.listWorldStreaks() { (response, error) in
    guard error == nil else {
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

**ListWorldStreaksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldTradeMine**
```swift
    open class func listWorldTradeMine(completion: @escaping (_ data: ListWorldTradeMineResponse?, _ error: Error?) -> Void)
```

Your trades and each item progress through the authentication gate (verified or failed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your trades and each item progress through the authentication gate (verified or failed).
WorldAPI.listWorldTradeMine() { (response, error) in
    guard error == nil else {
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

**ListWorldTradeMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldTradeTableBinder**
```swift
    open class func listWorldTradeTableBinder(completion: @escaping (_ data: ListWorldTradeTableBinderResponse?, _ error: Error?) -> Void)
```

Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your binder: unsold collection rows that are catalog items and may be laid on a trade mat -- key, variantId, condition, grade, portfolioId, name, image and valueCents (market value, cents).
WorldAPI.listWorldTradeTableBinder() { (response, error) in
    guard error == nil else {
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

**ListWorldTradeTableBinderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldTradeTableListings**
```swift
    open class func listWorldTradeTableListings(completion: @escaping (_ data: ListWorldTradeTableListingsResponse?, _ error: Error?) -> Void)
```

Your open Trade Block trade listings a trade table can be opened on in the world, each with its items' names.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your open Trade Block trade listings a trade table can be opened on in the world, each with its items' names.
WorldAPI.listWorldTradeTableListings() { (response, error) in
    guard error == nil else {
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

**ListWorldTradeTableListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldVenues**
```swift
    open class func listWorldVenues(completion: @escaping (_ data: ListWorldVenuesResponse?, _ error: Error?) -> Void)
```

The Convention Center halls for rent: size, floor, booths, price per day, and the days already taken (from, to).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Convention Center halls for rent: size, floor, booths, price per day, and the days already taken (from, to).
WorldAPI.listWorldVenues() { (response, error) in
    guard error == nil else {
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

**ListWorldVenuesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateShowroom**
```swift
    open class func updateShowroom(storefrontId: UUID? = nil, completion: @escaping (_ data: UpdateShowroomResponse?, _ error: Error?) -> Void)
```

Replace the whole showroom layout (room, fixtures, placements, settings). Validated as a whole: every item must be this store's, every pin must fit its fixture, no two pins share a slot. Send If-Match (or expectedVersion) to refuse with 409 version_conflict if it changed meanwhile.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Replace the whole showroom layout (room, fixtures, placements, settings). Validated as a whole: every item must be this store's, every pin must fit its fixture, no two pins share a slot. Send If-Match (or expectedVersion) to refuse with 409 version_conflict if it changed meanwhile.
WorldAPI.updateShowroom(storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**UpdateShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateShowroom2**
```swift
    open class func updateShowroom2(storefrontId: UUID? = nil, completion: @escaping (_ data: UpdateShowroom2Response?, _ error: Error?) -> Void)
```

Apply showroom ops in order, all or nothing: place, move, remove, fill (from a category / tag / brand / collection / search, in price, age, value or title order), sort, clear, add_fixture, update_fixture, remove_fixture, set_room, set_settings. Idempotent; refusals name the op (details.opIndex) with codes slot_occupied, item_not_in_store, fixture_capacity, unknown_fixture, unknown_display, version_conflict.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Apply showroom ops in order, all or nothing: place, move, remove, fill (from a category / tag / brand / collection / search, in price, age, value or title order), sort, clear, add_fixture, update_fixture, remove_fixture, set_room, set_settings. Idempotent; refusals name the op (details.opIndex) with codes slot_occupied, item_not_in_store, fixture_capacity, unknown_fixture, unknown_display, version_conflict.
WorldAPI.updateShowroom2(storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**UpdateShowroom2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateShowroom3**
```swift
    open class func updateShowroom3(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: UpdateShowroom2Response?, _ error: Error?) -> Void)
```

Apply ops to one showroom in order, all or nothing (the same ops as PATCH /api/v1/showroom).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Apply ops to one showroom in order, all or nothing (the same ops as PATCH /api/v1/showroom).
WorldAPI.updateShowroom3(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**UpdateShowroom2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateShowroomById**
```swift
    open class func updateShowroomById(id: String, storefrontId: UUID? = nil, completion: @escaping (_ data: UpdateShowroomResponse?, _ error: Error?) -> Void)
```

Replace one showroom's whole layout. If-Match (or expectedVersion) refuses with 409 version_conflict on a concurrent edit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let storefrontId = 987 // UUID | Which store (else X-Storefront-Id, else your default store). (optional)

// Replace one showroom's whole layout. If-Match (or expectedVersion) refuses with 409 version_conflict on a concurrent edit.
WorldAPI.updateShowroomById(id: id, storefrontId: storefrontId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **storefrontId** | **UUID** | Which store (else X-Storefront-Id, else your default store). | [optional] 

### Return type

**UpdateShowroomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialSceneCosmetic**
```swift
    open class func updateSpatialSceneCosmetic(id: String, completion: @escaping (_ data: UpdateSpatialSceneCosmeticResponse?, _ error: Error?) -> Void)
```

Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. `clear` lists keys to reset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Redecorate one of your rooms (wall, floor, lighting, trim...). Unknown keys are dropped; the response is what survived. `clear` lists keys to reset.
WorldAPI.updateSpatialSceneCosmetic(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateSpatialSceneCosmeticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialSceneNode**
```swift
    open class func updateSpatialSceneNode(id: String, nodeId: String, completion: @escaping (_ data: UpdateSpatialSceneNodeResponse?, _ error: Error?) -> Void)
```

Move a rack in one of your warehouse rooms (position in metres).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let nodeId = "nodeId_example" // String | 

// Move a rack in one of your warehouse rooms (position in metres).
WorldAPI.updateSpatialSceneNode(id: id, nodeId: nodeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **nodeId** | **String** |  | 

### Return type

**UpdateSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialSceneSetting**
```swift
    open class func updateSpatialSceneSetting(id: String, completion: @escaping (_ data: SpatialSceneResponse?, _ error: Error?) -> Void)
```

How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// How one of your rooms is laid out and lit: grouping and sort keys, theme, overlay and the arrival camera. Cosmetics and the shop layout have their own writers.
WorldAPI.updateSpatialSceneSetting(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**SpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialSceneShopLayout**
```swift
    open class func updateSpatialSceneShopLayout(id: String, completion: @escaping (_ data: UpdateSpatialSceneShopLayoutResponse?, _ error: Error?) -> Void)
```

Save your shop room's sections and displays (validated server-side; the response is the stored layout).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save your shop room's sections and displays (validated server-side; the response is the stored layout).
WorldAPI.updateSpatialSceneShopLayout(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateSpatialSceneShopLayoutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialSceneWindow**
```swift
    open class func updateSpatialSceneWindow(id: String, completion: @escaping (_ data: UpdateSpatialSceneWindowResponse?, _ error: Error?) -> Void)
```

Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Choose up to three of your live Crossly listings for the street window of your shop, in slot order. Picks that sell drop out and the newest fill in; an empty list goes back to newest first.
WorldAPI.updateSpatialSceneWindow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateSpatialSceneWindowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialStreetDecor**
```swift
    open class func updateSpatialStreetDecor(slug: String, completion: @escaping (_ data: GetSpatialStreetDecorResponse?, _ error: Error?) -> Void)
```

Dress a street you own with decor you hold (validated against your inventory).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Dress a street you own with decor you hold (validated against your inventory).
WorldAPI.updateSpatialStreetDecor(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetSpatialStreetDecorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialStreetOwned**
```swift
    open class func updateSpatialStreetOwned(id: String, completion: @escaping (_ data: SpatialStreetResponse?, _ error: Error?) -> Void)
```

Who may open a shop on a street you own (open, apply or invite).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Who may open a shop on a street you own (open, apply or invite).
WorldAPI.updateSpatialStreetOwned(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**SpatialStreetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldAttendant**
```swift
    open class func updateWorldAttendant(completion: @escaping (_ data: UpdateWorldAttendantResponse?, _ error: Error?) -> Void)
```

Create or replace your AI attendant (BYOK: switching it on needs your AI key).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create or replace your AI attendant (BYOK: switching it on needs your AI key).
WorldAPI.updateWorldAttendant() { (response, error) in
    guard error == nil else {
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

**UpdateWorldAttendantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldAvatarIdentity**
```swift
    open class func updateWorldAvatarIdentity(completion: @escaping (_ data: UpdateWorldAvatarIdentityResponse?, _ error: Error?) -> Void)
```

Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Choose named or anonymous. Rooms you are already in keep the old answer until you rejoin.
WorldAPI.updateWorldAvatarIdentity() { (response, error) in
    guard error == nil else {
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

**UpdateWorldAvatarIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldAvatarLook**
```swift
    open class func updateWorldAvatarLook(completion: @escaping (_ data: UpdateWorldAvatarLookResponse?, _ error: Error?) -> Void)
```

Save your world look to the account, so every device starts from it. look: null stays anonymous. appearance.outfit = { top, outer, bottom, shoes, hat } picks the basic outfit (GET /v1/world/avatar/basics).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save your world look to the account, so every device starts from it. look: null stays anonymous. appearance.outfit = { top, outer, bottom, shoes, hat } picks the basic outfit (GET /v1/world/avatar/basics).
WorldAPI.updateWorldAvatarLook() { (response, error) in
    guard error == nil else {
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

**UpdateWorldAvatarLookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldAvatarNftBadge**
```swift
    open class func updateWorldAvatarNftBadge(completion: @escaping (_ data: GetWorldAvatarNftBadgeResponse?, _ error: Error?) -> Void)
```

Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wear an NFT you hold on your nameplate (null to take it off). Checked again each time you join a room.
WorldAPI.updateWorldAvatarNftBadge() { (response, error) in
    guard error == nil else {
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

**GetWorldAvatarNftBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldCapabilityWear**
```swift
    open class func updateWorldCapabilityWear(completion: @escaping (_ data: GetWorldCapabilityWearResponse?, _ error: Error?) -> Void)
```

Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wear a held token on an avatar slot (refId from GET /v1/world/capabilities), or pass refId null to take it off. Its collection must declare a wear capability for that slot.
WorldAPI.updateWorldCapabilityWear() { (response, error) in
    guard error == nil else {
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

**GetWorldCapabilityWearResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldCollectionCapability**
```swift
    open class func updateWorldCollectionCapability(chain: String, contract: String, completion: @escaping (_ data: GetWorldCollectionCapabilityResponse?, _ error: Error?) -> Void)
```

Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// Declare what the tokens of a collection can do (the whole declaration, spec crossly.nft-capabilities/1). As its creator (launched on Crossly or claimed) any kind; as a holder, cosmetic kinds only. Replaces your previous declaration; pending if it names an uploaded asset or an always-reviewed kind.
WorldAPI.updateWorldCollectionCapability(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String** |  | 
 **contract** | **String** |  | 

### Return type

**GetWorldCollectionCapabilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldControl**
```swift
    open class func updateWorldControl(completion: @escaping (_ data: GetWorldControlResponse?, _ error: Error?) -> Void)
```

Save your world controls settings to the account (any subset of prefs; out-of-range values take the default) and/or mark the controls tutorial seen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save your world controls settings to the account (any subset of prefs; out-of-range values take the default) and/or mark the controls tutorial seen.
WorldAPI.updateWorldControl() { (response, error) in
    guard error == nil else {
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

**GetWorldControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldConventionHall**
```swift
    open class func updateWorldConventionHall(id: String, completion: @escaping (_ data: UpdateWorldConventionHallResponse?, _ error: Error?) -> Void)
```

Save the hall design: { doc, expectedVersion }. Refused on overlaps, narrow aisles, too many booths or a booth with a seller removed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save the hall design: { doc, expectedVersion }. Refused on overlaps, narrow aisles, too many booths or a booth with a seller removed.
WorldAPI.updateWorldConventionHall(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldConventionHallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldConventionMyBooth**
```swift
    open class func updateWorldConventionMyBooth(id: String, completion: @escaping (_ data: UpdateWorldConventionMyBoothResponse?, _ error: Error?) -> Void)
```

Pick what your booth shows: { listingIds } — any of your live listings, up to the tier’s capacity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pick what your booth shows: { listingIds } — any of your live listings, up to the tier’s capacity.
WorldAPI.updateWorldConventionMyBooth(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldConventionMyBoothResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldConventionStatus**
```swift
    open class func updateWorldConventionStatus(id: String, completion: @escaping (_ data: UpdateWorldConventionStatusResponse?, _ error: Error?) -> Void)
```

Open, start, end or cancel a convention you host.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Open, start, end or cancel a convention you host.
WorldAPI.updateWorldConventionStatus(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldConventionStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldCosmDesignChainAutoUnlock**
```swift
    open class func updateWorldCosmDesignChainAutoUnlock(id: String, completion: @escaping (_ data: CreateCosmDesignerChainAutoUnlockResponse?, _ error: Error?) -> Void)
```

Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Opt one of your COSM designs in or out of the free chain unlock it earns when popular (on by default). Answers its popularity.
WorldAPI.updateWorldCosmDesignChainAutoUnlock(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateCosmDesignerChainAutoUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldEmoteWheel**
```swift
    open class func updateWorldEmoteWheel(updateWorldEmoteWheelRequest: UpdateWorldEmoteWheelRequest, completion: @escaping (_ data: UpdateWorldEmoteWheelResponse?, _ error: Error?) -> Void)
```

Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateWorldEmoteWheelRequest = UpdateWorldEmoteWheelRequest(wheel: ["wheel_example"]) // UpdateWorldEmoteWheelRequest | 

// Arrange your emote wheel: up to 8 slots, each an emote id, a moment slot or null. Returns the saved wheel (locked or unknown ids are dropped).
WorldAPI.updateWorldEmoteWheel(updateWorldEmoteWheelRequest: updateWorldEmoteWheelRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWorldEmoteWheelRequest** | **UpdateWorldEmoteWheelRequest** |  | 

### Return type

**UpdateWorldEmoteWheelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldFitValueShare**
```swift
    open class func updateWorldFitValueShare(completion: @escaping (_ data: UpdateWorldFitValueShareResponse?, _ error: Error?) -> Void)
```

Whether people in a room can see what your outfit is worth.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether people in a room can see what your outfit is worth.
WorldAPI.updateWorldFitValueShare() { (response, error) in
    guard error == nil else {
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

**UpdateWorldFitValueShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldHome**
```swift
    open class func updateWorldHome(completion: @escaping (_ data: WorldHomeResponse?, _ error: Error?) -> Void)
```

Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your home: privacy (open, friends, private), theme, and wall, floor and mood decor you hold.
WorldAPI.updateWorldHome() { (response, error) in
    guard error == nil else {
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

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldHomeBuilder**
```swift
    open class func updateWorldHomeBuilder(updateWorldHomeBuilderRequest: UpdateWorldHomeBuilderRequest, completion: @escaping (_ data: UpdateWorldHomeBuilderResponse?, _ error: Error?) -> Void)
```

Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateWorldHomeBuilderRequest = UpdateWorldHomeBuilderRequest(userIds: [123]) // UpdateWorldHomeBuilderRequest | 

// Set the co-builders of your home: { userIds } -- friends (mutual follows) only, at most 4, replacing the list ([] clears it). They may rearrange your home in the world with your things and add free furniture, never your bought pieces. New co-builders get a world notice.
WorldAPI.updateWorldHomeBuilder(updateWorldHomeBuilderRequest: updateWorldHomeBuilderRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWorldHomeBuilderRequest** | **UpdateWorldHomeBuilderRequest** |  | 

### Return type

**UpdateWorldHomeBuilderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldHomeLayout**
```swift
    open class func updateWorldHomeLayout(completion: @escaping (_ data: WorldHomeResponse?, _ error: Error?) -> Void)
```

Arrange your home: the full layout (up to 200 pieces you own), validated server-side.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Arrange your home: the full layout (up to 200 pieces you own), validated server-side.
WorldAPI.updateWorldHomeLayout() { (response, error) in
    guard error == nil else {
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

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldHomeLayoutBySlug**
```swift
    open class func updateWorldHomeLayoutBySlug(slug: String, completion: @escaping (_ data: WorldHomeResponse?, _ error: Error?) -> Void)
```

Rearrange a home you co-build (never adding the owner bought pieces).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Rearrange a home you co-build (never adding the owner bought pieces).
WorldAPI.updateWorldHomeLayoutBySlug(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldInteractiveDesignDraft**
```swift
    open class func updateWorldInteractiveDesignDraft(id: String, completion: @escaping (_ data: UpdateWorldInteractiveDesignDraftResponse?, _ error: Error?) -> Void)
```

Save the draft MML source (up to 64 KB); the response carries its static check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save the draft MML source (up to 64 KB); the response carries its static check.
WorldAPI.updateWorldInteractiveDesignDraft(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldInteractiveDesignDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldListingHoldersOnly**
```swift
    open class func updateWorldListingHoldersOnly(id: String, completion: @escaping (_ data: UpdateWorldListingHoldersOnlyResponse?, _ error: Error?) -> Void)
```

Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Reserve one of your listings for holders of a collection you declared a holders_only perk for (or release it). Checkout refuses anybody else.
WorldAPI.updateWorldListingHoldersOnly(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldListingHoldersOnlyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldOutfit**
```swift
    open class func updateWorldOutfit(id: UUID, updateWorldOutfitRequest: UpdateWorldOutfitRequest, completion: @escaping (_ data: UpdateWorldOutfitResponse?, _ error: Error?) -> Void)
```

Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let updateWorldOutfitRequest = UpdateWorldOutfitRequest(name: "name_example") // UpdateWorldOutfitRequest | 

// Rename a saved look: { name (1-32 chars) }. 404 when it is not yours.
WorldAPI.updateWorldOutfit(id: id, updateWorldOutfitRequest: updateWorldOutfitRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **updateWorldOutfitRequest** | **UpdateWorldOutfitRequest** |  | 

### Return type

**UpdateWorldOutfitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldPetActive**
```swift
    open class func updateWorldPetActive(updateWorldPetActiveRequest: UpdateWorldPetActiveRequest, completion: @escaping (_ data: UpdateWorldPetActiveResponse?, _ error: Error?) -> Void)
```

Walk one of your pets with you in the world, or none (kind: null).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateWorldPetActiveRequest = UpdateWorldPetActiveRequest(kind: "kind_example") // UpdateWorldPetActiveRequest | 

// Walk one of your pets with you in the world, or none (kind: null).
WorldAPI.updateWorldPetActive(updateWorldPetActiveRequest: updateWorldPetActiveRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWorldPetActiveRequest** | **UpdateWorldPetActiveRequest** |  | 

### Return type

**UpdateWorldPetActiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldPropertyPlotPhoto**
```swift
    open class func updateWorldPropertyPlotPhoto(plotId: String, completion: @escaping (_ data: UpdateWorldPropertyPlotPhotoResponse?, _ error: Error?) -> Void)
```

Store a plot's photo: an image of its frontage you uploaded through POST .../photo/upload-url, a render (buildKey must be the plot's current one) or an in-world capture.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let plotId = "plotId_example" // String | 

// Store a plot's photo: an image of its frontage you uploaded through POST .../photo/upload-url, a render (buildKey must be the plot's current one) or an in-world capture.
WorldAPI.updateWorldPropertyPlotPhoto(plotId: plotId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plotId** | **String** |  | 

### Return type

**UpdateWorldPropertyPlotPhotoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldPropertyRenting**
```swift
    open class func updateWorldPropertyRenting(leaseId: String, completion: @escaping (_ data: UpdateWorldPropertyRentingResponse?, _ error: Error?) -> Void)
```

Turn weekly autopay on or off (card leases).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let leaseId = "leaseId_example" // String | 

// Turn weekly autopay on or off (card leases).
WorldAPI.updateWorldPropertyRenting(leaseId: leaseId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leaseId** | **String** |  | 

### Return type

**UpdateWorldPropertyRentingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldQuestPin**
```swift
    open class func updateWorldQuestPin(updateWorldQuestPinRequest: UpdateWorldQuestPinRequest, completion: @escaping (_ data: UpdateWorldQuestPinResponse?, _ error: Error?) -> Void)
```

Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateWorldQuestPinRequest = UpdateWorldQuestPinRequest(pin: "pin_example") // UpdateWorldQuestPinRequest | 

// Wear a pin you EARNED from a quest on your nameplate, or { pin: null } to wear none. 403 for a pin you have not earned. Shows from the next room you walk into.
WorldAPI.updateWorldQuestPin(updateWorldQuestPinRequest: updateWorldQuestPinRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateWorldQuestPinRequest** | **UpdateWorldQuestPinRequest** |  | 

### Return type

**UpdateWorldQuestPinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldRoomHolderGate**
```swift
    open class func updateWorldRoomHolderGate(id: String, completion: @escaping (_ data: UpdateWorldRoomHolderGateResponse?, _ error: Error?) -> Void)
```

Make your room holders-only (its collection rooms follow). Send null to open it again. Returns `{ gate }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make your room holders-only (its collection rooms follow). Send null to open it again. Returns `{ gate }`.
WorldAPI.updateWorldRoomHolderGate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldRoomHolderGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldSpace**
```swift
    open class func updateWorldSpace(slug: String, completion: @escaping (_ data: UpdateWorldSpaceResponse?, _ error: Error?) -> Void)
```

As host, change a Space name, about or membership.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// As host, change a Space name, about or membership.
WorldAPI.updateWorldSpace(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldSpaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldSpaceHolderGate**
```swift
    open class func updateWorldSpaceHolderGate(slug: String, completion: @escaping (_ data: UpdateWorldRoomHolderGateResponse?, _ error: Error?) -> Void)
```

Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns `{ gate }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Make your Space holders-only: only holders of an NFT collection join it (others can look in). Send null to open it again. Returns `{ gate }`.
WorldAPI.updateWorldSpaceHolderGate(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldRoomHolderGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldStaffPosting**
```swift
    open class func updateWorldStaffPosting(id: String, completion: @escaping (_ data: WorldStaffPostingResponse?, _ error: Error?) -> Void)
```

Replace a posting; its future unstaffed shifts are re-made.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Replace a posting; its future unstaffed shifts are re-made.
WorldAPI.updateWorldStaffPosting(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldStaffPostingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldStallBookingBooth**
```swift
    open class func updateWorldStallBookingBooth(id: String, completion: @escaping (_ data: UpdateWorldStallBookingBoothResponse?, _ error: Error?) -> Void)
```

Dress the booth of a stall you booked (decor you hold).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Dress the booth of a stall you booked (decor you hold).
WorldAPI.updateWorldStallBookingBooth(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldStallBookingBoothResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldStreetOwnedTheme**
```swift
    open class func updateWorldStreetOwnedTheme(id: String, completion: @escaping (_ data: UpdateWorldStreetOwnedThemeResponse?, _ error: Error?) -> Void)
```

Set your street's theme.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set your street's theme.
WorldAPI.updateWorldStreetOwnedTheme(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldStreetOwnedThemeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

