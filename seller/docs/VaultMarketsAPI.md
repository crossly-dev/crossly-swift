# VaultMarketsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVaultLend**](VaultMarketsAPI.md#createvaultlend) | **POST** /v1/vault/{id}/lend | Turn lending on or off for a unit you own in the vault, optionally with your minimum borrow rate (APR in basis points). Returns &#x60;{ lendEnabled, minAprBps }&#x60;.
[**createVaultMarketAccount**](VaultMarketsAPI.md#createvaultmarketaccount) | **POST** /v1/vault-markets/account | Open your account at the custodian partner (once). Returns &#x60;{ status }&#x60;; the custodian verifies it before it is active.
[**createVaultMarketAdminMark**](VaultMarketsAPI.md#createvaultmarketadminmark) | **POST** /v1/vault-markets/admin-marks | Upload your fund administrator&#39;s prices (&#x60;administrator&#x60;, &#x60;marks: [{ bookKey, day, cents }]&#x60;). Shown beside Crossly&#39;s marks and labelled as yours; they never change a Crossly figure.
[**createVaultMarketAdvance**](VaultMarketsAPI.md#createvaultmarketadvance) | **POST** /v1/vault-markets/advances | Take an advance against a vault unit that is listed for sale: paid into your custodian account, netted from the sale. Free for 60 days, then the pool rate. Needs a verified ID.
[**createVaultMarketAdvanceRelist**](VaultMarketsAPI.md#createvaultmarketadvancerelist) | **POST** /v1/vault-markets/advances/{id}/relist | Relist an advance&#39;s unit at a new price (never so low its sale could not repay the advance).
[**createVaultMarketAgentDraftCancel**](VaultMarketsAPI.md#createvaultmarketagentdraftcancel) | **POST** /v1/vault-markets/agent/drafts/{id}/cancel | Throw a drafted order away (only while it is still a draft). Returns { ok, draft }.
[**createVaultMarketAgentWatch**](VaultMarketsAPI.md#createvaultmarketagentwatch) | **POST** /v1/vault-markets/agent/watches | Watch a book key: tell me once when its best bid, lowest ask, last trade or market price crosses a price (cents). Leave out direction for \&quot;crosses\&quot; (whichever way it has to move). Never trades. At most 50 live, each for 90 days.
[**createVaultMarketAlert**](VaultMarketsAPI.md#createvaultmarketalert) | **POST** /v1/vault-markets/alerts | Alert me when a key&#39;s market price goes above or below a price (fires once).
[**createVaultMarketAlertPrefTest**](VaultMarketsAPI.md#createvaultmarketalertpreftest) | **POST** /v1/vault-markets/alert-prefs/test | Send yourself one test alert of a &#x60;kind&#x60; through your own switches. Returns &#x60;{ sent, kind, plan }&#x60;, where plan says per channel: send, off, quiet (held by quiet hours) or unavailable.
[**createVaultMarketAuctionLot**](VaultMarketsAPI.md#createvaultmarketauctionlot) | **POST** /v1/vault-markets/auctions/lots | Consign a stored, authenticated unit to the next weekly or premier event, with an optional opening price and reserve. The unit is held until the close. Returns &#x60;{ lotId, eventId, endsAt }&#x60;.
[**createVaultMarketAuctionLotBid**](VaultMarketsAPI.md#createvaultmarketauctionlotbid) | **POST** /v1/vault-markets/auctions/lots/{id}/bids | Leave or raise your maximum on a lot; the system bids for you up to it. A bid in the last 2 minutes extends the lot by 2 minutes. The winner&#39;s saved card is charged at the close through the order book. ID needed above $10,000.
[**createVaultMarketAuctionLotWithdraw**](VaultMarketsAPI.md#createvaultmarketauctionlotwithdraw) | **POST** /v1/vault-markets/auctions/lots/{id}/withdraw | Withdraw your lot before any bid; the unit goes back on your shelf. Returns &#x60;{ ok }&#x60;.
[**createVaultMarketBlock**](VaultMarketsAPI.md#createvaultmarketblock) | **POST** /v1/vault-markets/blocks | Place a block buy for an entity: one order booked to the first sub-account in &#x60;plan&#x60; (it pays from its custodian account), split across every sub-account in the plan at the average price, fees included, once it is done and the custodian confirmed each payment. Each share&#39;s cash moves between the entity&#39;s own custodian accounts; its units move only after that settles. Every sub-account must be one you may trade, and its share must fit its limits.
[**createVaultMarketBlockAllocate**](VaultMarketsAPI.md#createvaultmarketblockallocate) | **POST** /v1/vault-markets/blocks/{orderId}/allocate | Allocate a done block now (the keeper does it too). Returns &#x60;{ outcome, block }&#x60;: allocated, waiting (a payment or transfer is not settled yet), nothing_filled or none.
[**createVaultMarketBullionFamilyPeg**](VaultMarketsAPI.md#createvaultmarketbullionfamilypeg) | **POST** /v1/vault-markets/bullion/family-pegs | Set a family-wide spot-pegged quote: one \&quot;any 1 oz gold coin\&quot; quote resting on each product book of a bullion family at the chosen condition (DS, VNDS or Used). When any leg fills it comes off the others and goes back on only for what is left; two fills at once are settled one at a time against what is left. A bid pays from your custodian account. Replaces your live family quote on the same family, condition and side. ID required.
[**createVaultMarketBullionPeg**](VaultMarketsAPI.md#createvaultmarketbullionpeg) | **POST** /v1/vault-markets/bullion/pegs | Set a spot-pegged maker quote on a bullion book key: \&quot;spot plus or minus N cents\&quot; or \&quot;plus or minus N basis points\&quot;, with an optional floor and cap. It rests as a pro limit order re-priced every spot tick and is pulled while spot is stale. Replaces your live quote on the same key and side. ID required.
[**createVaultMarketCollectionWorthWatch**](VaultMarketsAPI.md#createvaultmarketcollectionworthwatch) | **POST** /v1/vault-markets/collection-worth/watch | Watch every collection item that sits on a vault book key (up to the watchlist cap). Returns &#x60;{ watched, skipped }&#x60;.
[**createVaultMarketCreatorAttribution**](VaultMarketsAPI.md#createvaultmarketcreatorattribution) | **POST** /v1/vault-markets/creators/attribution | Use a creator code: the creator earns a capped share of the fee Crossly keeps on your Vault Markets trades for a limited window (paid by Crossly, never by you). Only for people new to Vault Markets, once, and never your own code.
[**createVaultMarketCreatorCohostInviteRespond**](VaultMarketsAPI.md#createvaultmarketcreatorcohostinviterespond) | **POST** /v1/vault-markets/creators/cohost-invites/{id}/respond | For creators: accept or decline an invite to co-host a Market Open launch show (&#x60;accept&#x60; true or false). Accepting needs your vault room verified and adds you to the show as a co-host; your room and the Commons then say you co-host it, with the creator-programme disclosure when it applies.
[**createVaultMarketCreditRepay**](VaultMarketsAPI.md#createvaultmarketcreditrepay) | **POST** /v1/vault-markets/credit/{id}/repay | Repay from your custodian account, interest first. Omit &#x60;amountCents&#x60; to repay everything; pass &#x60;requestId&#x60; to make a retry safe. Repaid in full, the items are free.
[**createVaultMarketDcmLink**](VaultMarketsAPI.md#createvaultmarketdcmlink) | **POST** /v1/vault-markets/dcm/link | Link a partner exchange account to your account (or to a firm sub-account you manage, &#x60;subaccountId&#x60;) so Crossly can show its positions: &#x60;accountRef&#x60; (the account id there) and &#x60;code&#x60; (the one-time link code it gave you). The partner must confirm the code; the code is never stored. Read-only: Crossly never trades on it.
[**createVaultMarketDcmUnlink**](VaultMarketsAPI.md#createvaultmarketdcmunlink) | **POST** /v1/vault-markets/dcm/unlink | Unlink the partner exchange account from your account (or the firm sub-account &#x60;subaccountId&#x60;): Crossly stops reading it and its hedges leave portfolio margin.
[**createVaultMarketDealerApply**](VaultMarketsAPI.md#createvaultmarketdealerapply) | **POST** /v1/vault-markets/dealer/apply | Apply to be a dealer (ID check first). Ops review; approved dealers get raised limits and their bids show as dealer bids.
[**createVaultMarketDealerBid**](VaultMarketsAPI.md#createvaultmarketdealerbid) | **POST** /v1/vault-markets/dealer/bids | Place a standing dealer bid: a resting GTC/GTD limit buy, flagged as a dealer bid. Approved dealers only.
[**createVaultMarketDealerPool**](VaultMarketsAPI.md#createvaultmarketdealerpool) | **POST** /v1/vault-markets/dealer/pools | Open a curve pool on a key (approved dealers, ID checked): linear (delta in cents) or exponential (delta in bps), spot, fee, levels per side, units it may sell, and a buy budget from your custodian account. Its ladder goes up at once.
[**createVaultMarketDealerPoolClose**](VaultMarketsAPI.md#createvaultmarketdealerpoolclose) | **POST** /v1/vault-markets/dealer/pools/{id}/close | Close a curve pool: its legs come off the book; what filled stays filled.
[**createVaultMarketDealerPoolPreview**](VaultMarketsAPI.md#createvaultmarketdealerpoolpreview) | **POST** /v1/vault-markets/dealer/pools/preview | The bids and asks a set of curve settings would show, and why each side stops where it does. Places nothing.
[**createVaultMarketDeposit**](VaultMarketsAPI.md#createvaultmarketdeposit) | **POST** /v1/vault-markets/deposits | Open a ship-in deposit for an ungraded catalogue item (&#x60;skuId&#x60;, &#x60;variantId&#x60;, &#x60;condition&#x60; DS / VNDS / Used). It is inbound until the vault receives and checks it, then stored in your name. Returns &#x60;{ vaultItem: { id, status } }&#x60;.
[**createVaultMarketDonation**](VaultMarketsAPI.md#createvaultmarketdonation) | **POST** /v1/vault-markets/donations | Give a unit to Crossly Cares (once the charity can receive; otherwise its gate message). Returns &#x60;{ id, markCents }&#x60;.
[**createVaultMarketEntity**](VaultMarketsAPI.md#createvaultmarketentity) | **POST** /v1/vault-markets/entities | Open an entity account: you become its admin and the custodian partner starts KYB (its own flow; Crossly keeps only its reference). Needs a verified ID and the custodian (503 names what is missing).
[**createVaultMarketEntityEcp**](VaultMarketsAPI.md#createvaultmarketentityecp) | **POST** /v1/vault-markets/entities/{id}/ecp | Admin: record the entity&#39;s attestation that it is an eligible contract participant. Raising its caps is still an ops decision.
[**createVaultMarketEntityHalt**](VaultMarketsAPI.md#createvaultmarketentityhalt) | **POST** /v1/vault-markets/entities/{id}/halts | Admin or risk: the firm kill switch. Halts the entity (no &#x60;subaccountId&#x60;) or one sub-account: open orders on it are cancelled and no new ones are placed until cleared.
[**createVaultMarketEntityHaltClear**](VaultMarketsAPI.md#createvaultmarketentityhaltclear) | **POST** /v1/vault-markets/entities/{id}/halts/{haltId}/clear | Admin or risk: lift a firm halt.
[**createVaultMarketEntityInvitation**](VaultMarketsAPI.md#createvaultmarketentityinvitation) | **POST** /v1/vault-markets/entities/{id}/invitation | Accept or decline an invitation (&#x60;accept&#x60;). Trading, admin and risk roles need a verified ID to accept.
[**createVaultMarketEntityKyb**](VaultMarketsAPI.md#createvaultmarketentitykyb) | **POST** /v1/vault-markets/entities/{id}/kyb | Refresh the entity&#39;s KYB status from the custodian (and its onboarding link while KYB is open).
[**createVaultMarketEntityMember**](VaultMarketsAPI.md#createvaultmarketentitymember) | **POST** /v1/vault-markets/entities/{id}/members | Admin: invite a Crossly user by email as admin, trader, risk, ops or viewer (a viewer can never place an order), with optional limits and sub-accounts.
[**createVaultMarketEntitySubaccount**](VaultMarketsAPI.md#createvaultmarketentitysubaccount) | **POST** /v1/vault-markets/entities/{id}/subaccounts | Admin: open a sub-account once the custodian approved the entity; its limits are held to the entity&#39;s caps.
[**createVaultMarketEntitySubaccountClose**](VaultMarketsAPI.md#createvaultmarketentitysubaccountclose) | **POST** /v1/vault-markets/entities/{id}/subaccounts/{subId}/close | Admin: close a sub-account that holds nothing and has no open orders.
[**createVaultMarketFollowCopyWatchAlertRead**](VaultMarketsAPI.md#createvaultmarketfollowcopywatchalertread) | **POST** /v1/vault-markets/follows/copy-watch/alerts/read | Mark every copy-watch alert read. Returns &#x60;{ marked }&#x60;.
[**createVaultMarketGift**](VaultMarketsAPI.md#createvaultmarketgift) | **POST** /v1/vault-markets/gifts | Give a unit in your vault to another Crossly user (by @username or email). It stays on its shelf; they have 7 days to accept. ID needed above $1,000 at the mark. Returns &#x60;{ id, expiresAt }&#x60;.
[**createVaultMarketGiftAccept**](VaultMarketsAPI.md#createvaultmarketgiftaccept) | **POST** /v1/vault-markets/gifts/{id}/accept | Accept a gift: the unit becomes yours in place. Returns &#x60;{ status }&#x60;.
[**createVaultMarketGiftCancel**](VaultMarketsAPI.md#createvaultmarketgiftcancel) | **POST** /v1/vault-markets/gifts/{id}/cancel | Cancel a gift you sent before it is accepted. Returns &#x60;{ status }&#x60;.
[**createVaultMarketGiftDecline**](VaultMarketsAPI.md#createvaultmarketgiftdecline) | **POST** /v1/vault-markets/gifts/{id}/decline | Decline a gift: the unit stays with the giver. Returns &#x60;{ status }&#x60;.
[**createVaultMarketGradeToVault**](VaultMarketsAPI.md#createvaultmarketgradetovault) | **POST** /v1/vault-markets/grade-to-vault | Start Grade to Vault on one item (&#x60;source&#x60; inventory or vault_unit). With &#x60;runId&#x60; the grading slot is booked at once (free; your saved card is charged only if the run locks). Nothing is listed until you confirm a price after the grade.
[**createVaultMarketGradeToVaultBook**](VaultMarketsAPI.md#createvaultmarketgradetovaultbook) | **POST** /v1/vault-markets/grade-to-vault/{id}/book | Book (or re-book) the grading slot of a flow still at \&quot;picked\&quot;. Answers 503 naming GRADING_HUB_ADDRESS when runs are not open.
[**createVaultMarketGradeToVaultCancel**](VaultMarketsAPI.md#createvaultmarketgradetovaultcancel) | **POST** /v1/vault-markets/grade-to-vault/{id}/cancel | Stop the flow before the card goes to the grader (still picked, or its slot only reserved: nothing was charged).
[**createVaultMarketGradeToVaultKeep**](VaultMarketsAPI.md#createvaultmarketgradetovaultkeep) | **POST** /v1/vault-markets/grade-to-vault/{id}/keep | Keep the graded unit in your vault without listing it. The flow ends; list it any time from the vault.
[**createVaultMarketGradeToVaultList**](VaultMarketsAPI.md#createvaultmarketgradetovaultlist) | **POST** /v1/vault-markets/grade-to-vault/{id}/list | Confirm the price for the grade the unit came back with (&#x60;confirm: true&#x60;, &#x60;gradeKey&#x60; must match the unit). Pre-trade risk, the price band and the ID line apply, then one shelf ask is placed on the Crossly order book.
[**createVaultMarketGradeToVaultShipped**](VaultMarketsAPI.md#createvaultmarketgradetovaultshipped) | **POST** /v1/vault-markets/grade-to-vault/{id}/shipped | You mailed the card to the grading hub (an inventory card, once its run locked).
[**createVaultMarketGrading**](VaultMarketsAPI.md#createvaultmarketgrading) | **POST** /v1/vault-markets/grading | Send a raw vault unit on the grading hub&#39;s shelf to a Grading Run (&#x60;runId&#x60;). It is held until it comes back, graded, to the same vault item. The slot is free; your saved card is charged only if the run locks.
[**createVaultMarketGradingPull**](VaultMarketsAPI.md#createvaultmarketgradingpull) | **POST** /v1/vault-markets/grading/{submissionId}/pull | Pull a vault unit out of its run before the run locks (nothing was charged). It goes back on the shelf.
[**createVaultMarketHallLoan**](VaultMarketsAPI.md#createvaultmarkethallloan) | **POST** /v1/vault-markets/hall/loans | Lend a unit in your Crossly vault to the Hall of Grails: { vaultItemId, credit: &#39;name&#39; | &#39;anonymous&#39; }. A standing loan of display rights only: the unit goes on a plinth, under a plate naming you (or \&quot;a collector\&quot;), in every weekly exhibition whose category it fits. It never moves and stays yours to list, sell or withdraw. Earns reputation per exhibition shown; no cash. Resumes a loan you opted out of while it still shows.
[**createVaultMarketHallLoanCredit**](VaultMarketsAPI.md#createvaultmarkethallloancredit) | **POST** /v1/vault-markets/hall/loans/{id}/credit | Change how the plate on a lent unit&#39;s plinth names you, from now: { credit: &#39;name&#39; } (your display name) or { credit: &#39;anonymous&#39; } (\&quot;a collector\&quot;).
[**createVaultMarketHallLoanOptOut**](VaultMarketsAPI.md#createvaultmarkethallloanoptout) | **POST** /v1/vault-markets/hall/loans/{id}/opt-out | Opt a Hall of Grails loan out, at any time. A unit on a plinth this week finishes this exhibition (status ending, showingUntil); otherwise the loan ends now (status ended).
[**createVaultMarketIdentityStart**](VaultMarketsAPI.md#createvaultmarketidentitystart) | **POST** /v1/vault-markets/identity/start | Start (or resume) the one-time ID check the money features and larger orders need. Returns &#x60;{ url }&#x60; to open, or &#x60;{ alreadyVerified: true }&#x60;.
[**createVaultMarketIndex**](VaultMarketsAPI.md#createvaultmarketindex) | **POST** /v1/vault-markets/indexes | Make an index of your own: 1 to 50 book keys, weighted by mark or equally. Up to 10 per account.
[**createVaultMarketIndexBuy**](VaultMarketsAPI.md#createvaultmarketindexbuy) | **POST** /v1/vault-markets/indexes/{slug}/buy | Buy the basket: one limit buy per key in the index for 1-5 whole units each, at most &#x60;maxBpsOverMark&#x60; over each key&#39;s mark, IOC or GTC. Every unit is a real item that lands in your vault. Idempotent on &#x60;clientBasketId&#x60;; returns a result per key.
[**createVaultMarketIndexComplaint**](VaultMarketsAPI.md#createvaultmarketindexcomplaint) | **POST** /v1/vault-markets/index-complaints | File a complaint about an index or the method (&#x60;slug&#x60; optional). Every complaint is answered. Returns &#x60;{ id, status, createdAt }&#x60;.
[**createVaultMarketIndexConsultationComment**](VaultMarketsAPI.md#createvaultmarketindexconsultationcomment) | **POST** /v1/vault-markets/index-consultations/{id}/comments | Comment on an open consultation (5 to 5,000 characters; up to 5 per person). Comments are published without your name. Returns &#x60;{ ok }&#x60;.
[**createVaultMarketInstantExit**](VaultMarketsAPI.md#createvaultmarketinstantexit) | **POST** /v1/vault-markets/instant-exit | Sell a unit now at the quoted price: a sell IOC at &#x60;priceCents&#x60; through the pro engine. Refused, with the new quote, if the best bid dropped below it. Crossly never buys or funds it.
[**createVaultMarketJoint**](VaultMarketsAPI.md#createvaultmarketjoint) | **POST** /v1/vault-markets/joint | Open a joint vault (ID first): you hold full rights and accept the current joint terms. &#x60;invite&#x60; sends invitations (@username or email, each with view, trade or full rights). Returns &#x60;{ id, status, invited }&#x60;.
[**createVaultMarketJointClose**](VaultMarketsAPI.md#createvaultmarketjointclose) | **POST** /v1/vault-markets/joint/{id}/close | Close the joint vault (full rights): open joint orders are cancelled and every unit goes back to its owner. Returns &#x60;{ status, unitsReturned }&#x60;.
[**createVaultMarketJointInvite**](VaultMarketsAPI.md#createvaultmarketjointinvite) | **POST** /v1/vault-markets/joint/{id}/invite | Invite a Crossly user (full rights only). They have 14 days and show ID to join. Returns &#x60;{ userId, rights, expiresAt }&#x60;.
[**createVaultMarketJointMemberRemove**](VaultMarketsAPI.md#createvaultmarketjointmemberremove) | **POST** /v1/vault-markets/joint/{id}/members/{userId}/remove | Remove a member (full rights), or leave when userId is you. Their units go back to their own account and their joint orders are cancelled. Returns &#x60;{ userId, status, unitsReturned, jointStatus }&#x60;.
[**createVaultMarketJointMemberRight**](VaultMarketsAPI.md#createvaultmarketjointmemberright) | **POST** /v1/vault-markets/joint/{id}/members/{userId}/rights | Set a member rights to view, trade or full (full rights only; the vault always keeps a full member). Returns &#x60;{ userId, rights }&#x60;.
[**createVaultMarketJointRespond**](VaultMarketsAPI.md#createvaultmarketjointrespond) | **POST** /v1/vault-markets/joint/{id}/respond | Accept (ID first; accepts the current joint terms) or decline an invitation. Returns &#x60;{ status }&#x60;.
[**createVaultMarketJointTerm**](VaultMarketsAPI.md#createvaultmarketjointterm) | **POST** /v1/vault-markets/joint/{id}/terms | Accept the current joint terms (needed to trade after the terms version changes). Returns &#x60;{ termsVersion }&#x60;.
[**createVaultMarketJointTrade**](VaultMarketsAPI.md#createvaultmarketjointtrade) | **POST** /v1/vault-markets/joint/{id}/trades | Place a limit order for the joint vault (trade or full rights, ID shown). A buy (bookKey) is placed on you, paid from your own Vault Markets account, and what it buys is booked to the joint vault. A sell (vaultItemId of a unit in it) is placed on the unit owner of record, who gets the proceeds; pre-trade checks run against you too. Returns &#x60;{ tradeId, side, bookKey, ownerUserId, order }&#x60;.
[**createVaultMarketJointTradeCancel**](VaultMarketsAPI.md#createvaultmarketjointtradecancel) | **POST** /v1/vault-markets/joint/{id}/trades/{tradeId}/cancel | Cancel a working joint order (trade or full rights); what filled stays filled. Returns &#x60;{ tradeId, order }&#x60;.
[**createVaultMarketJointUnit**](VaultMarketsAPI.md#createvaultmarketjointunit) | **POST** /v1/vault-markets/joint/{id}/units | Put units you own into the joint vault (each stored and free). They keep you as owner of record and stay on the shelf. Returns &#x60;{ added, vaultItemIds }&#x60;.
[**createVaultMarketJointUnitRemove**](VaultMarketsAPI.md#createvaultmarketjointunitremove) | **POST** /v1/vault-markets/joint/{id}/units/remove | Take units out of the joint vault, back to their owner own account (yours at any rights; anyone else with full rights). Returns &#x60;{ removed, vaultItemIds }&#x60;.
[**createVaultMarketLargeTraderReportFile**](VaultMarketsAPI.md#createvaultmarketlargetraderreportfile) | **POST** /v1/vault-markets/large-trader-reports/{id}/file | File (or amend, or refile) a large-trader report: why you hold it (purpose), who you act for, other accounts you control, whether you plan to add, and a statement of 20+ characters. Returns the report.
[**createVaultMarketLearnQuiz**](VaultMarketsAPI.md#createvaultmarketlearnquiz) | **POST** /v1/vault-markets/learn/{concept}/quiz | Answer a concept&#39;s quiz (&#x60;answers&#x60;: the chosen choice index per question). Graded on the server; 5 tries an hour.
[**createVaultMarketLiveStreamFeaturedLot**](VaultMarketsAPI.md#createvaultmarketlivestreamfeaturedlot) | **POST** /v1/vault-markets/live-streams/{id}/featured-lot | Feature an open lot on your live show (or &#x60;lotId: null&#x60; to take it off). Viewers hear LIVE_PIN_CHANGED. Returns &#x60;{ ok }&#x60;.
[**createVaultMarketLoan**](VaultMarketsAPI.md#createvaultmarketloan) | **POST** /v1/vault-markets/loans | Borrow against stored vault units: they are pledged (no listing, lending or withdrawal) and the market pool lends &#x60;amountCents&#x60; into your custodian account. Needs a verified ID.
[**createVaultMarketLoanRecall**](VaultMarketsAPI.md#createvaultmarketloanrecall) | **POST** /v1/vault-markets/loans/{id}/recall | Recall a lent unit: the short has 3 days to return one. Returns &#x60;{ recallDueAt }&#x60;.
[**createVaultMarketLoanUnit**](VaultMarketsAPI.md#createvaultmarketloanunit) | **POST** /v1/vault-markets/loans/{id}/units | Pledge more stored units to a loan (answers a loan call, or makes room).
[**createVaultMarketLoanUnitRelease**](VaultMarketsAPI.md#createvaultmarketloanunitrelease) | **POST** /v1/vault-markets/loans/{id}/units/{vaultItemId}/release | Free one pledged unit, if what is owed still fits inside the other units&#39; limit.
[**createVaultMarketLoanUnitSell**](VaultMarketsAPI.md#createvaultmarketloanunitsell) | **POST** /v1/vault-markets/loans/{id}/units/{vaultItemId}/sell | Sell a pledged unit to repay its loan: it is listed at &#x60;priceCents&#x60; (at least the sale floor) and stays pledged until it sells; the proceeds repay the loan first and the rest is yours. Calling it again re-prices it.
[**createVaultMarketLocate**](VaultMarketsAPI.md#createvaultmarketlocate) | **POST** /v1/vault-markets/locates | Hold up to &#x60;qty&#x60; lendable units of &#x60;bookKey&#x60; for 15 minutes so a short can open against them (&#x60;termDays&#x60; 30/90 for a term loan). Needs lending (VAULT_LENDING_TERMS_VERSION) and the ID check. Returns the locate with how many units it holds.
[**createVaultMarketLong**](VaultMarketsAPI.md#createvaultmarketlong) | **POST** /v1/vault-markets/longs | Buy &#x60;units&#x60; units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) into your vault with leverage (up to 2x) from the market staking pool, paying up to &#x60;maxCents&#x60; each. A partial fill opens with the units bought and the rest is cancelled. Returns &#x60;{ positionId, matched, units }&#x60;.
[**createVaultMarketMidpoint**](VaultMarketsAPI.md#createvaultmarketmidpoint) | **POST** /v1/vault-markets/midpoint | A hidden block order that trades only at the firm-book midpoint, with another midpoint order of at least your minimum size.
[**createVaultMarketMidpointCancel**](VaultMarketsAPI.md#createvaultmarketmidpointcancel) | **POST** /v1/vault-markets/midpoint/{id}/cancel | Cancel a midpoint order.
[**createVaultMarketMmDmm**](VaultMarketsAPI.md#createvaultmarketmmdmm) | **POST** /v1/vault-markets/mm/dmm | Apply to be the designated market maker on a tier B or C key. Ops approves; one per key.
[**createVaultMarketMmLeave**](VaultMarketsAPI.md#createvaultmarketmmleave) | **POST** /v1/vault-markets/mm/{id}/leave | Leave a market-maker programme.
[**createVaultMarketMmLp**](VaultMarketsAPI.md#createvaultmarketmmlp) | **POST** /v1/vault-markets/mm/lp | Join a key as a Registered Liquidity Provider (ID needed). Meeting coverage earns the LP rates.
[**createVaultMarketMmMassCancel**](VaultMarketsAPI.md#createvaultmarketmmmasscancel) | **POST** /v1/vault-markets/mm/mass-cancel | Cancel every open order (one key, or only quotes) and every resting leg in one statement: nothing fills between the first cancel and the last.
[**createVaultMarketMmMmpReset**](VaultMarketsAPI.md#createvaultmarketmmmmpreset) | **POST** /v1/vault-markets/mm/mmp/reset | End a market-maker protection freeze early.
[**createVaultMarketOpeningWaitlist**](VaultMarketsAPI.md#createvaultmarketopeningwaitlist) | **POST** /v1/vault-markets/opening/{slug}/waitlist | Join a key&#39;s waitlist, optionally with a friend&#39;s invite code (&#x60;ref&#x60;). Inviting moves you up the queue; nobody is paid. Returns your place and your own code.
[**createVaultMarketP2pLoanCall**](VaultMarketsAPI.md#createvaultmarketp2ploancall) | **POST** /v1/vault-markets/p2p/loans/{id}/call | Lender: call the loan (once it is a day old). A refinancing auction runs for about 30 hours, the rate a new lender gets climbing to the ceiling; repaid or refinanced, you are paid in full; neither by the end, the unit moves to your vault.
[**createVaultMarketP2pLoanCancelCall**](VaultMarketsAPI.md#createvaultmarketp2ploancancelcall) | **POST** /v1/vault-markets/p2p/loans/{id}/cancel-call | Lender: take back your call before any other lender has taken the loan over. The refinancing auction stops and the loan carries on as before on its terms.
[**createVaultMarketP2pLoanRefiAuction**](VaultMarketsAPI.md#createvaultmarketp2ploanrefiauction) | **POST** /v1/vault-markets/p2p/loans/{id}/refi-auction | Borrower: look for a cheaper lender. A refinancing auction runs for &#x60;hours&#x60; (1-72, default 24); the rate a new lender gets climbs from &#x60;startAprBps&#x60; (default half the loan rate) to just under the loan rate now. The first lender to take it pays your lender off and the loan carries on at that lower rate. Nobody by the end: nothing changes.
[**createVaultMarketP2pLoanRefiAuctionCancel**](VaultMarketsAPI.md#createvaultmarketp2ploanrefiauctioncancel) | **POST** /v1/vault-markets/p2p/loans/{id}/refi-auction/cancel | Borrower: stop looking for a cheaper lender before anyone has taken the loan over. The loan carries on unchanged.
[**createVaultMarketP2pLoanRefinance**](VaultMarketsAPI.md#createvaultmarketp2ploanrefinance) | **POST** /v1/vault-markets/p2p/loans/{id}/refinance | Take over a loan in a refinancing auction (a lender call or a borrower search for a cheaper lender): you pay the old lender everything owed now (refused above &#x60;maxPayoffCents&#x60;), which becomes your loan to the same borrower at the auction rate now. Needs a verified ID, an active account and the current lending terms. Pass &#x60;requestId&#x60; to make a retry safe.
[**createVaultMarketP2pLoanRepay**](VaultMarketsAPI.md#createvaultmarketp2ploanrepay) | **POST** /v1/vault-markets/p2p/loans/{id}/repay | Borrower: repay from your custodian account to the lender. Without &#x60;amountCents&#x60;, in full (principal plus interest to the second; the unit is free once the custodian has it). With &#x60;amountCents&#x60; below what is owed, a part payment: interest first, then principal, at least the interest owed now and at least $1; the loan stays open on the principal left. Pass &#x60;requestId&#x60; to make a retry safe.
[**createVaultMarketP2pOffer**](VaultMarketsAPI.md#createvaultmarketp2poffer) | **POST** /v1/vault-markets/p2p/offers | Offer to lend: &#x60;principalCents&#x60; per loan at &#x60;aprBps&#x60; a year against an item (&#x60;bookKey&#x60;) or one unit (&#x60;vaultItemId&#x60;), for up to &#x60;maxLoans&#x60; loans, lasting &#x60;expiresInDays&#x60; (default 90). Nothing is held: the custodian pays from your own account when a borrower takes it. Needs a verified ID, an active account and the current lending terms.
[**createVaultMarketP2pOfferCancel**](VaultMarketsAPI.md#createvaultmarketp2poffercancel) | **POST** /v1/vault-markets/p2p/offers/{id}/cancel | Withdraw one of your open offers. Loans already taken from it carry on.
[**createVaultMarketP2pOfferTake**](VaultMarketsAPI.md#createvaultmarketp2poffertake) | **POST** /v1/vault-markets/p2p/offers/{id}/take | Borrow: take an offer against one of your stored vault units (&#x60;vaultItemId&#x60;). The unit is pledged (no listing, lending or withdrawal) and the principal is paid into your custodian account. Interest accrues by the second; repay any time. Pass &#x60;requestId&#x60; to make a retry safe.
[**createVaultMarketPaperMissionMarkCheck**](VaultMarketsAPI.md#createvaultmarketpapermissionmarkcheck) | **POST** /v1/vault-markets/paper/missions/mark-check | Answer the \&quot;Read the mark\&quot; mission: the quality letter (A, B or C) you read on a market page, checked against the stored mark. One answer per market, 10 a day. Returns &#x60;{ bookKey, answer, correct, quality, mission, next }&#x60;.
[**createVaultMarketPaperOrder**](VaultMarketsAPI.md#createvaultmarketpaperorder) | **POST** /v1/vault-markets/paper/orders | Place a paper order (play money only). It takes visible real liquidity now at book prices with the taker fee simulated; a GTC limit rests the rest with a queue-position estimate, filled later as the real tape reaches it. Sells only paper units you hold (no paper shorts). Never touches the real book. Returns &#x60;{ order, fills }&#x60;.
[**createVaultMarketPaperOrderCancel**](VaultMarketsAPI.md#createvaultmarketpaperordercancel) | **POST** /v1/vault-markets/paper/orders/{id}/cancel | Cancel a working paper order: the play cash or paper units it held come back. Returns &#x60;{ order }&#x60;.
[**createVaultMarketPaperReset**](VaultMarketsAPI.md#createvaultmarketpaperreset) | **POST** /v1/vault-markets/paper/reset | Reset your paper account to $10,000 of play money: working paper orders are cancelled, paper positions cleared, and your leaderboard week starts again. Once a day.
[**createVaultMarketPartnerApply**](VaultMarketsAPI.md#createvaultmarketpartnerapply) | **POST** /v1/vault-markets/partners/apply | Apply as a Vault Drop-off Partner (a card shop that takes walk-ins for the vault). Needs the one-time ID check; ops approve.
[**createVaultMarketPartnerBatch**](VaultMarketsAPI.md#createvaultmarketpartnerbatch) | **POST** /v1/vault-markets/partners/batches | An approved partner sends walk-ins in under its code: each item (catalogue variant, condition, grade, photos) becomes an inbound vault unit; the box gets one prepaid label. The partner earns a capped share of Crossly&#39;s fee on each unit&#39;s first sale.
[**createVaultMarketPoolStake**](VaultMarketsAPI.md#createvaultmarketpoolstake) | **POST** /v1/vault-markets/pool/stakes | Stake CBX you hold at the custodian into the market pool (base units, as a string). Returns &#x60;{ stakeId, shares }&#x60;.
[**createVaultMarketPoolStakeUnstake**](VaultMarketsAPI.md#createvaultmarketpoolstakeunstake) | **POST** /v1/vault-markets/pool/stakes/{id}/unstake | Unstake: paid out after the 7-day cooldown. Returns &#x60;{ cooldownUntil }&#x60;.
[**createVaultMarketPortfolioMarginEnroll**](VaultMarketsAPI.md#createvaultmarketportfoliomarginenroll) | **POST** /v1/vault-markets/portfolio-margin/enroll | Admin: put a firm sub-account under portfolio margin. Needs VAULT_LEVERAGE_VENUE, your ID, an ECP-attested entity that passed KYB, and the minimum equity. Its positions are then margined on the whole account, recalculated every 5 minutes; calls and auctions are unchanged. Audited.
[**createVaultMarketPortfolioMarginLeave**](VaultMarketsAPI.md#createvaultmarketportfoliomarginleave) | **POST** /v1/vault-markets/portfolio-margin/leave | Admin: take a firm sub-account off portfolio margin. Each position is then held to its own tier floors again and may be called at once. Audited.
[**createVaultMarketPortfolioMarginWhatIf**](VaultMarketsAPI.md#createvaultmarketportfoliomarginwhatif) | **POST** /v1/vault-markets/portfolio-margin/what-if | The portfolio margin requirement of a firm sub-account before and after a trade (&#x60;bookKey&#x60;, &#x60;side&#x60; buy or sell, &#x60;units&#x60;), at the Crossly mark with fees left out. Changes nothing.
[**createVaultMarketPositionCancel**](VaultMarketsAPI.md#createvaultmarketpositioncancel) | **POST** /v1/vault-markets/positions/{id}/cancel | Cancel the working order: an unfilled opening order cancels the position; an unfilled cover or close leaves it open. Returns &#x60;{ ok }&#x60;.
[**createVaultMarketPositionClose**](VaultMarketsAPI.md#createvaultmarketpositionclose) | **POST** /v1/vault-markets/positions/{id}/close | Close a leveraged long: all its units, or &#x60;units&#x60; of them, each sold for at least &#x60;minCents&#x60;; each sale repays the pool first.
[**createVaultMarketPositionCollateral**](VaultMarketsAPI.md#createvaultmarketpositioncollateral) | **POST** /v1/vault-markets/positions/{id}/collateral | Answer a margin call: a short posts more collateral (USD, or CBX at half value); a leveraged long pays down its pool loan. Returns the position.
[**createVaultMarketPositionCover**](VaultMarketsAPI.md#createvaultmarketpositioncover) | **POST** /v1/vault-markets/positions/{id}/cover | Cover a short: all its units, or &#x60;units&#x60; of them, each buying any unit of the key into the vault for up to &#x60;maxCents&#x60;; each goes back to its lender.
[**createVaultMarketPriceWidget**](VaultMarketsAPI.md#createvaultmarketpricewidget) | **POST** /v1/vault-markets/price-widgets | Make a price widget for one vault market (&#x60;kind&#x60; mark + &#x60;bookKey&#x60;) or one public index (&#x60;kind&#x60; index + &#x60;indexSlug&#x60;): range, layout (compact or chart), theme (auto, light, dark), optionally your own affiliate code for the link back and the sites allowed to show it (empty &#x3D; any). Returns the widget with its snippets.
[**createVaultMarketPriceWidgetPreview**](VaultMarketsAPI.md#createvaultmarketpricewidgetpreview) | **POST** /v1/vault-markets/price-widgets/preview | What a widget would show before you save it: &#x60;view&#x60; (value, move, quality, n, as-of, link back) and &#x60;html&#x60;, the exact page the iframe serves. Nothing is stored.
[**createVaultMarketProBracket**](VaultMarketsAPI.md#createvaultmarketprobracket) | **POST** /v1/vault-markets/pro/brackets | A buy order with a take-profit and/or stop-loss attached; the exits arm as an OCO pair for what the entry fills.
[**createVaultMarketProLinkCancel**](VaultMarketsAPI.md#createvaultmarketprolinkcancel) | **POST** /v1/vault-markets/pro/links/{id}/cancel | Cancel a linked order: its open child orders come off; a bracket&#39;s entry stays.
[**createVaultMarketProOco**](VaultMarketsAPI.md#createvaultmarketprooco) | **POST** /v1/vault-markets/pro/oco | Two orders on one key, one cancels the other: when one fills or its stop triggers, the other is cancelled (a partial fill shrinks it).
[**createVaultMarketProOrder**](VaultMarketsAPI.md#createvaultmarketproorder) | **POST** /v1/vault-markets/pro/orders | Place an order on a vault book: limit, market (protected, IOC), stop or stop-limit; GTC, GTD, IOC or FOK; post-only; an iceberg &#x60;displayQuantity&#x60;; a TWAP or VWAP algo over a window. Idempotent on &#x60;clientOrderId&#x60;. &#x60;subaccountId&#x60; trades for a firm sub-account you may trade (your role, its KYB, its limits, no firm halt; buys pay from its custodian account and land in it).
[**createVaultMarketProOrderCancel**](VaultMarketsAPI.md#createvaultmarketproordercancel) | **POST** /v1/vault-markets/pro/orders/{id}/cancel | Cancel an order; what filled stays filled.
[**createVaultMarketProOrderCancelAll**](VaultMarketsAPI.md#createvaultmarketproordercancelall) | **POST** /v1/vault-markets/pro/orders/cancel-all | Cancel every open order, or every one on a book key. Returns &#x60;{ cancelled }&#x60;.
[**createVaultMarketProOrderReplace**](VaultMarketsAPI.md#createvaultmarketproorderreplace) | **POST** /v1/vault-markets/pro/orders/{id}/replace | Amend an order&#39;s price, stop or quantity (cancel-replace: it re-queues at its new price).
[**createVaultMarketProQuote**](VaultMarketsAPI.md#createvaultmarketproquote) | **POST** /v1/vault-markets/pro/quotes | Market makers: set a two-sided post-only quote on a book key (replaces the last). With cancel-on-disconnect (default) heartbeat every 30 s or it is pulled.
[**createVaultMarketProQuoteHeartbeat**](VaultMarketsAPI.md#createvaultmarketproquoteheartbeat) | **POST** /v1/vault-markets/pro/quotes/heartbeat | Keep your quotes alive (cancel-on-disconnect). Returns &#x60;{ quotes, at }&#x60;.
[**createVaultMarketProTrailingStop**](VaultMarketsAPI.md#createvaultmarketprotrailingstop) | **POST** /v1/vault-markets/pro/trailing-stops | A trailing stop: its stop follows the best price since it was placed, &#x60;trailBps&#x60; or &#x60;trailCents&#x60; behind (under the high for a sell, over the low for a buy).
[**createVaultMarketProfileFollow**](VaultMarketsAPI.md#createvaultmarketprofilefollow) | **POST** /v1/vault-markets/profiles/{handle}/follow | Follow someone with a public vault: their new vault buys appear in your feed. No copy trading.
[**createVaultMarketRecurring**](VaultMarketsAPI.md#createvaultmarketrecurring) | **POST** /v1/vault-markets/recurring | Start a recurring buy: one whole unit of a key every week, two weeks or month, at no more than &#x60;maxPriceCents&#x60; and/or the mark plus &#x60;capBpsOverMark&#x60;; card (with an optional backup) or custodian; optional auto-lend.
[**createVaultMarketRfq**](VaultMarketsAPI.md#createvaultmarketrfq) | **POST** /v1/vault-markets/rfq | Ask for a quote on a block: dealers, the key&#39;s DMM and LPs, and holders are told, anonymously. Answers are firm for 60 s. Your limit is never shown.
[**createVaultMarketRfqAccept**](VaultMarketsAPI.md#createvaultmarketrfqaccept) | **POST** /v1/vault-markets/rfq/{id}/accept | Take one answer: it fills as a block through the normal fill path (fees by role, self-trade prevention, halts, LULD).
[**createVaultMarketRfqCancel**](VaultMarketsAPI.md#createvaultmarketrfqcancel) | **POST** /v1/vault-markets/rfq/{id}/cancel | Cancel your open quote request.
[**createVaultMarketRfqRespond**](VaultMarketsAPI.md#createvaultmarketrfqrespond) | **POST** /v1/vault-markets/rfq/{id}/respond | Answer a quote request for the full quantity with a firm price, good for 60 s. Selling needs the units free in your vault; buying pays from your Vault Markets custodian account.
[**createVaultMarketRfqResponseWithdraw**](VaultMarketsAPI.md#createvaultmarketrfqresponsewithdraw) | **POST** /v1/vault-markets/rfq/responses/{id}/withdraw | Withdraw your live answer to a quote request.
[**createVaultMarketSetGoal**](VaultMarketsAPI.md#createvaultmarketsetgoal) | **POST** /v1/vault-markets/set-goals | Start a goal on a catalogue set (category, brandSlug, modelSlug from the set search), optionally with a target: one condition, and any grade, ungraded, or one exact grade. One live goal per set.
[**createVaultMarketSetGoalBasket**](VaultMarketsAPI.md#createvaultmarketsetgoalbasket) | **POST** /v1/vault-markets/set-goals/{id}/basket | Place the \&quot;complete my set\&quot; basket bid: one GTC limit buy per missing piece, under a hard budget, paid by one of your saved cards or your custodian account. Every leg passes pre-trade risk and the ID line like any order. Idempotent on clientBasketId. One working basket per goal; its legs are cancelled once the set is complete.
[**createVaultMarketSetGoalBasketCancel**](VaultMarketsAPI.md#createvaultmarketsetgoalbasketcancel) | **POST** /v1/vault-markets/set-goals/{id}/basket/cancel | Cancel the goal working basket bid: every working leg comes off the book; what already filled stays in your vault.
[**createVaultMarketShareCard**](VaultMarketsAPI.md#createvaultmarketsharecard) | **POST** /v1/vault-markets/share-cards | Make a verified share card of a position, a vault unit, a public index or your portfolio (&#x60;kind&#x60;, &#x60;refId&#x60;). The % on it is the price move since your real fill; amounts stay hidden unless &#x60;showAmounts&#x60;.
[**createVaultMarketShort**](VaultMarketsAPI.md#createvaultmarketshort) | **POST** /v1/vault-markets/shorts | Short a book key: borrow &#x60;units&#x60; lent units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) and sell each at &#x60;limitCents&#x60; or better, posting collateral for all of them (50% of the mark each; CBX counts at half, up to 30%). All units are borrowed or none unless &#x60;allowPartial&#x60;. A partial sale opens with the units sold. Returns &#x60;{ positionId, matched, units }&#x60;.
[**createVaultMarketSupplyBatchLabel**](VaultMarketsAPI.md#createvaultmarketsupplybatchlabel) | **POST** /v1/vault-markets/supply/batches/{id}/label | Buy a box&#39;s prepaid label again after it failed (for example once a ship-from address is saved). A box that has a label keeps it.
[**createVaultMarketSupplyInvite**](VaultMarketsAPI.md#createvaultmarketsupplyinvite) | **POST** /v1/vault-markets/supply/invites/{id} | Accept or decline a Market Open invite (&#x60;accept&#x60;).
[**createVaultMarketSupplySend**](VaultMarketsAPI.md#createvaultmarketsupplysend) | **POST** /v1/vault-markets/supply/send | Send inventory items matched to a catalogue variant to the vault as one box: each becomes an inbound vault unit, and the box gets one prepaid inbound label (a PDF to print). Optional: auto-list each unit in the vault book at a share of the mark once stored, and lend when idle. Items that cannot go say why. Crosslisted listings stay live.
[**createVaultMarketTerm**](VaultMarketsAPI.md#createvaultmarketterm) | **POST** /v1/vault-markets/terms | Accept the current lending terms (needed to lend or short). Returns &#x60;{ termsVersion }&#x60;.
[**createVaultMarketTodClaimObject**](VaultMarketsAPI.md#createvaultmarkettodclaimobject) | **POST** /v1/vault-markets/tod/claims/{id}/object | Stop a transfer-on-death claim made on your own account. Returns &#x60;{ id, status, estateUnlocked }&#x60;.
[**createVaultMarketTodMyClaim**](VaultMarketsAPI.md#createvaultmarkettodmyclaim) | **POST** /v1/vault-markets/tod/my-claims | Start a claim as a named beneficiary (ID first), naming the account holder by @username or email. It stays a draft until you add documents and submit. Returns &#x60;{ id, status, existing }&#x60;.
[**createVaultMarketTodMyClaimDocument**](VaultMarketsAPI.md#createvaultmarkettodmyclaimdocument) | **POST** /v1/vault-markets/tod/my-claims/{id}/documents | Add one document to a draft claim (or one ops asked more of): kind, filename and the file as base64 (PDF, JPEG or PNG, up to 8 MB). Kept privately for ops review. Returns &#x60;{ id, kind, label, filename, bytes }&#x60;.
[**createVaultMarketTodMyClaimSubmit**](VaultMarketsAPI.md#createvaultmarkettodmyclaimsubmit) | **POST** /v1/vault-markets/tod/my-claims/{id}/submit | Send a claim for ops review (it needs a death certificate). The account holder is told and can stop it. Returns &#x60;{ id, status }&#x60;.
[**createVaultMarketTodMyClaimWithdraw**](VaultMarketsAPI.md#createvaultmarkettodmyclaimwithdraw) | **POST** /v1/vault-markets/tod/my-claims/{id}/withdraw | Withdraw a claim before it is released. Returns &#x60;{ id, status }&#x60;.
[**createVaultMarketTodTerm**](VaultMarketsAPI.md#createvaultmarkettodterm) | **POST** /v1/vault-markets/tod/terms | Accept the current transfer-on-death terms. Returns &#x60;{ termsVersion }&#x60;.
[**createVaultMarketUnitEvidenceScan**](VaultMarketsAPI.md#createvaultmarketunitevidencescan) | **POST** /v1/vault-markets/units/{id}/evidence/scans | Add a finished scan of your own (&#x60;captureId&#x60;, of the same catalogue item) to your vault unit. Shown as added by the owner, not as intake evidence.
[**createVaultMarketUnitSellNow**](VaultMarketsAPI.md#createvaultmarketunitsellnow) | **POST** /v1/vault-markets/units/{id}/sell-now | Sell one unit of this item now into the best bid (Instant Exit: an immediate-or-cancel pro order), never below &#x60;minCents&#x60;. Returns &#x60;{ status: filled | missed, filledCents, quote, order }&#x60;.
[**createVaultMarketValuationStatement**](VaultMarketsAPI.md#createvaultmarketvaluationstatement) | **POST** /v1/vault-markets/valuation-statements | Issue an insurance or appraisal statement for a day: frozen with the sha256 of its record, sealed in the Crossly audit chain, with a public verify link. preparedFor and policyRef are printed on it and never shown on verify. Moves no money.
[**createVaultMarketWatchlist**](VaultMarketsAPI.md#createvaultmarketwatchlist) | **POST** /v1/vault-markets/watchlist | Watch a book key. Returns &#x60;{ bookKey, watching }&#x60;.
[**createVaultMarketWidgetToken**](VaultMarketsAPI.md#createvaultmarketwidgettoken) | **POST** /v1/vault-markets/widget/tokens | Mint a widget token for one phone (&#x60;deviceName&#x60;, &#x60;installId&#x60;); minting again with the same pair replaces that phone token. The token reads the widget summary and nothing else, and is returned once. At most five phones.
[**createVaultReceiptTokenConfirm**](VaultMarketsAPI.md#createvaultreceipttokenconfirm) | **POST** /v1/vault/receipt-tokens/{id}/confirm | After your wallet sent the export: read the chain and mark the token live once its one token exists. Pass the &#x60;signature&#x60; your wallet returned to record it (kept only if it landed).
[**createVaultReceiptTokenExport**](VaultMarketsAPI.md#createvaultreceipttokenexport) | **POST** /v1/vault/receipt-tokens/export | Send one unit (&#x60;vaultItemId&#x60;) warehouse receipt to one of your verified Solana wallets (&#x60;wallet&#x60;) as a token, accepting the current terms (&#x60;acceptTerms&#x60;). Returns a base64 transaction already signed by the new mint and the receipts authority: your wallet pays the rent and must sign and send it within about two minutes, then call confirm. Nothing is minted until it does. Needs a verified ID; the unit must be stored, unpledged, not lent and not for sale.
[**createVaultReceiptTokenRedeem**](VaultMarketsAPI.md#createvaultreceipttokenredeem) | **POST** /v1/vault/receipt-tokens/{id}/redeem | Redeem a receipt token held in one of your verified Solana wallets (&#x60;wallet&#x60;): returns an unsigned base64 burn your wallet signs and sends (it also closes the token account and returns its rent to you). Once it lands, call redeem/confirm and the unit is yours in the vault. Refused while the token is frozen.
[**createVaultReceiptTokenRedeemConfirm**](VaultMarketsAPI.md#createvaultreceipttokenredeemconfirm) | **POST** /v1/vault/receipt-tokens/{id}/redeem/confirm | After your wallet sent the redeem: read the chain; once the token is burned the unit moves into your vault (if it was not yours already). Pass the &#x60;signature&#x60; to record it.
[**createVaultReceiptTokenWalletAllow**](VaultMarketsAPI.md#createvaultreceipttokenwalletallow) | **POST** /v1/vault/receipt-tokens/wallets/allow | Put one of your verified Solana wallets (&#x60;wallet&#x60;) on the receipt-token allow-list so it can hold and receive receipt tokens. Returns a base64 transaction already signed by the receipts authority: the wallet pays the small rent (about 0.001 SOL) and must sign and send it within about two minutes. Needs a verified ID and a wallet that passes the sanctions screen.
[**deleteVaultMarketAgentWatch**](VaultMarketsAPI.md#deletevaultmarketagentwatch) | **DELETE** /v1/vault-markets/agent/watches/{id} | Cancel a live price watch. Returns the watch.
[**deleteVaultMarketAlert**](VaultMarketsAPI.md#deletevaultmarketalert) | **DELETE** /v1/vault-markets/alerts/{id} | Delete a price alert. Returns &#x60;{ ok }&#x60;.
[**deleteVaultMarketBullionFamilyPeg**](VaultMarketsAPI.md#deletevaultmarketbullionfamilypeg) | **DELETE** /v1/vault-markets/bullion/family-pegs/{id} | Stop a family-wide quote: every leg order comes off the book; what filled stays filled.
[**deleteVaultMarketBullionPeg**](VaultMarketsAPI.md#deletevaultmarketbullionpeg) | **DELETE** /v1/vault-markets/bullion/pegs/{id} | Stop a spot-pegged quote: its resting order comes off the book; what filled stays filled.
[**deleteVaultMarketDealerBand**](VaultMarketsAPI.md#deletevaultmarketdealerband) | **DELETE** /v1/vault-markets/dealer/bands | Stop a band on a key; its standing bid comes off.
[**deleteVaultMarketEntityMember**](VaultMarketsAPI.md#deletevaultmarketentitymember) | **DELETE** /v1/vault-markets/entities/{id}/members/{memberId} | Admin: remove a member (or leave, yourself). An entity always keeps one admin.
[**deleteVaultMarketFollowCopyWatch**](VaultMarketsAPI.md#deletevaultmarketfollowcopywatch) | **DELETE** /v1/vault-markets/follows/copy-watch/{handle} | Stop copy-watching a collector.
[**deleteVaultMarketIndex**](VaultMarketsAPI.md#deletevaultmarketindex) | **DELETE** /v1/vault-markets/indexes/{slug} | Delete an index of your own. Returns &#x60;{ ok }&#x60;.
[**deleteVaultMarketLocate**](VaultMarketsAPI.md#deletevaultmarketlocate) | **DELETE** /v1/vault-markets/locates/{id} | Release a live locate before it lapses.
[**deleteVaultMarketOpeningWaitlist**](VaultMarketsAPI.md#deletevaultmarketopeningwaitlist) | **DELETE** /v1/vault-markets/opening/{slug}/waitlist | Leave a key&#39;s waitlist.
[**deleteVaultMarketPriceWidget**](VaultMarketsAPI.md#deletevaultmarketpricewidget) | **DELETE** /v1/vault-markets/price-widgets/{id} | Delete a widget. Pages that still paste it show that it is no longer available. Returns &#x60;{ id, archived }&#x60;.
[**deleteVaultMarketProQuote**](VaultMarketsAPI.md#deletevaultmarketproquote) | **DELETE** /v1/vault-markets/pro/quotes | Pull your quote on a book key, or every quote. Returns &#x60;{ pulled }&#x60;.
[**deleteVaultMarketProfileFollow**](VaultMarketsAPI.md#deletevaultmarketprofilefollow) | **DELETE** /v1/vault-markets/profiles/{handle}/follow | Stop following someone.
[**deleteVaultMarketRecurring**](VaultMarketsAPI.md#deletevaultmarketrecurring) | **DELETE** /v1/vault-markets/recurring/{id} | Stop a recurring buy for good; its history stays.
[**deleteVaultMarketSetGoal**](VaultMarketsAPI.md#deletevaultmarketsetgoal) | **DELETE** /v1/vault-markets/set-goals/{id} | Remove a set goal. A working basket bid is cancelled first; what filled stays in your vault.
[**deleteVaultMarketShareCard**](VaultMarketsAPI.md#deletevaultmarketsharecard) | **DELETE** /v1/vault-markets/share-cards/{id} | Take a share card down: its link and image stop working. Returns &#x60;{ ok }&#x60;.
[**deleteVaultMarketSupplyRoundUp**](VaultMarketsAPI.md#deletevaultmarketsupplyroundup) | **DELETE** /v1/vault-markets/supply/round-up | Stop the round-up (its history stays; an armed buy is cancelled).
[**deleteVaultMarketUnitEvidence**](VaultMarketsAPI.md#deletevaultmarketunitevidence) | **DELETE** /v1/vault-markets/units/{id}/evidence/{evidenceId} | Take back a scan you added to your vault unit (intake evidence stays).
[**deleteVaultMarketWatchlist**](VaultMarketsAPI.md#deletevaultmarketwatchlist) | **DELETE** /v1/vault-markets/watchlist | Stop watching a book key (&#x60;?bookKey&#x3D;&#x60;). Returns &#x60;{ bookKey, watching }&#x60;.
[**deleteVaultMarketWidgetToken**](VaultMarketsAPI.md#deletevaultmarketwidgettoken) | **DELETE** /v1/vault-markets/widget/tokens | Turn the widget off on every phone: revokes all your widget tokens. Returns &#x60;{ revoked }&#x60;, how many.
[**deleteVaultMarketWidgetTokenById**](VaultMarketsAPI.md#deletevaultmarketwidgettokenbyid) | **DELETE** /v1/vault-markets/widget/tokens/{id} | Turn the widget off on one phone: revokes that widget token at once. Only a widget token can be revoked here.
[**getVaultAttestation**](VaultMarketsAPI.md#getvaultattestation) | **GET** /v1/vault/attestations | Vault attestations: independent physical counts, the insurance certificate (with a warning when insured value in the vault exceeds its aggregate or per-occurrence limit), SOC 1 Type II and SOC 2 reports. Each carries its signed document.
[**getVaultMarketAccount**](VaultMarketsAPI.md#getvaultmarketaccount) | **GET** /v1/vault-markets/account | Which Vault Markets registrations are live (and the env each waits on), your custodian account, limits and balances.
[**getVaultMarketAdl**](VaultMarketsAPI.md#getvaultmarketadl) | **GET** /v1/vault-markets/adl | The insurance fund (booked and free to draw), the most one event may draw before auto-deleveraging (ADL) starts, the loss waterfall in order, and the latest ADL events (no user or position ids). Money in cents.
[**getVaultMarketAdlPosition**](VaultMarketsAPI.md#getvaultmarketadlposition) | **GET** /v1/vault-markets/adl/positions/{id} | One of your positions with its ADL lights (0 once it has ended).
[**getVaultMarketAdvanceQuote**](VaultMarketsAPI.md#getvaultmarketadvancequote) | **GET** /v1/vault-markets/advances/quote | What an advance on a vault unit for sale could be: up to half of the lower of its mark and asking price, free for 60 days.
[**getVaultMarketAgentDraft**](VaultMarketsAPI.md#getvaultmarketagentdraft) | **GET** /v1/vault-markets/agent/drafts/{id} | One drafted order: item, side, units, limit (cents), the book when drafted, status, and the orderBody that places it.
[**getVaultMarketAlertPref**](VaultMarketsAPI.md#getvaultmarketalertpref) | **GET** /v1/vault-markets/alert-prefs | Your vault alert settings: every kind (price, fill, margin_call, adl, p2p_loan, auction, market_open, receipt_token, set_goal, follow, account), every channel (push, telegram, terminal, email, webhook) with whether it is set up, the full on/off grid, the locked switches (a critical kind always pushes) and quiet hours.
[**getVaultMarketAuctionLot**](VaultMarketsAPI.md#getvaultmarketauctionlot) | **GET** /v1/vault-markets/auctions/lots/{id} | One lot: the price showing, the next minimum bid, whether a reserve exists and is met, the end (extended by late bids), the bid history and your standing.
[**getVaultMarketAuctionMine**](VaultMarketsAPI.md#getvaultmarketauctionmine) | **GET** /v1/vault-markets/auctions/mine | Lots you consigned (with your reserve) and lots you bid on (with your maximum and whether you lead).
[**getVaultMarketBlock**](VaultMarketsAPI.md#getvaultmarketblock) | **GET** /v1/vault-markets/blocks/{orderId} | One block order: its order, plan lines (planned and allocated units, average price, cash share, status).
[**getVaultMarketBullionFor**](VaultMarketsAPI.md#getvaultmarketbullionfor) | **GET** /v1/vault-markets/bullion/for | The bullion key families one book key belongs to, with spot for its metal as a labelled reference and its melt value at that spot. Empty families when the item is not keyed bullion.
[**getVaultMarketBullionKey**](VaultMarketsAPI.md#getvaultmarketbullionkey) | **GET** /v1/vault-markets/bullion/keys/{slug} | One bullion key family: its catalogue products, every live book key with best bid, best ask, vault units and its mark (from the book only), live pegged quote counts, and spot as a labelled reference.
[**getVaultMarketBullionPegPreview**](VaultMarketsAPI.md#getvaultmarketbullionpegpreview) | **GET** /v1/vault-markets/bullion/pegs/preview | The price a spot-pegged quote would rest at now (spot plus a premium in cents or basis points, clamped to floor and cap). No price when spot is stale or missing: such a quote waits off the book.
[**getVaultMarketCall**](VaultMarketsAPI.md#getvaultmarketcall) | **GET** /v1/vault-markets/calls/{bookKey} | Recent call-auction uncrosses on a book key: kind (open, reopen, periodic, daily, buy-in, sell-off), clearing price in cents and units.
[**getVaultMarketCapacity**](VaultMarketsAPI.md#getvaultmarketcapacity) | **GET** /v1/vault-markets/capacity | Capacity from the book: &#x60;bookKey&#x60; (+ &#x60;units&#x60;) gives ADV, depth within ±5% of the mark, vault stock, lendable units and days to liquidate at 20% of ADV; &#x60;index&#x60; + &#x60;notional&#x60; (cents) gives how much of the basket the asks fill now and the days the rest needs.
[**getVaultMarketChannel**](VaultMarketsAPI.md#getvaultmarketchannel) | **GET** /v1/vault-markets/channels | Your Vault Markets channel switches: Telegram alerts and digest, the daily cap on vault nudges by push (default 5), whether a Telegram chat is linked, and how many nudges went out today.
[**getVaultMarketCompare**](VaultMarketsAPI.md#getvaultmarketcompare) | **GET** /v1/vault-markets/compare | Up to 5 book keys and/or index slugs (&#x60;items&#x60;, comma-separated) as daily series on the same days, each rebased to 100.
[**getVaultMarketConfirmation**](VaultMarketsAPI.md#getvaultmarketconfirmation) | **GET** /v1/vault-markets/confirmations/{tradeId} | One trade confirmation.
[**getVaultMarketConfirmationPdf**](VaultMarketsAPI.md#getvaultmarketconfirmationpdf) | **GET** /v1/vault-markets/confirmations/{tradeId}/pdf | One trade confirmation as a PDF.
[**getVaultMarketCorrelation**](VaultMarketsAPI.md#getvaultmarketcorrelation) | **GET** /v1/vault-markets/correlations | The correlation matrix of the sector indexes&#39; weekly returns over &#x60;weeks&#x60; (default 52), pairwise-complete, with n per pair; a pair under 26 shared weeks has no number.
[**getVaultMarketCreatorAttribution**](VaultMarketsAPI.md#getvaultmarketcreatorattribution) | **GET** /v1/vault-markets/creators/attribution | The creator who brought you to Vault Markets, when one did: when it started and ends, whether it still earns, and the disclosure. Your prices and fees are the same either way.
[**getVaultMarketCreatorDashboard**](VaultMarketsAPI.md#getvaultmarketcreatordashboard) | **GET** /v1/vault-markets/creators/dashboard | For creators: whether you joined the programme, each of your codes with traders attributed and still earning (counts only), shares accrued, paid and voided (cents) and the latest shares.
[**getVaultMarketCreatorProgramme**](VaultMarketsAPI.md#getvaultmarketcreatorprogramme) | **GET** /v1/vault-markets/creators/programme | The Vault Markets creator programme: the share of the fee Crossly keeps that a creator earns, the per-fill and lifetime caps (cents), the attribution window in days, the 2% net floor it sits under, and the disclosure words.
[**getVaultMarketCreatorRoom**](VaultMarketsAPI.md#getvaultmarketcreatorroom) | **GET** /v1/vault-markets/creators/room | For creators: your vault shelf room (applied, verified, rejected or paused) and whether your public vault profile is on, which the room needs.
[**getVaultMarketCredit**](VaultMarketsAPI.md#getvaultmarketcredit) | **GET** /v1/vault-markets/credit/{id} | One loan or advance with its pledged units and its money log (draws, interest, repayments, sale proceeds).
[**getVaultMarketDcm**](VaultMarketsAPI.md#getvaultmarketdcm) | **GET** /v1/vault-markets/dcm | The partner exchange (DCM) that lists and clears futures and options on Crossly indexes (needs VAULT_INDEX_DCM + VAULT_INDEX_DCM_API_URL + VAULT_INDEX_DCM_API_KEY), and its contracts as last read: perps, futures and options with the index each settles on, multiplier, tick, expiry and strike. Read-only: Crossly is the licensor and data provider, never the venue.
[**getVaultMarketDcmContract**](VaultMarketsAPI.md#getvaultmarketdcmcontract) | **GET** /v1/vault-markets/dcm/contracts/{symbol} | One partner contract: its spec, its funding prints (newest first; the partner computes and settles funding), annualised funding over the last 21 prints, and the Crossly index level it settles on.
[**getVaultMarketDcmContractBook**](VaultMarketsAPI.md#getvaultmarketdcmcontractbook) | **GET** /v1/vault-markets/dcm/contracts/{symbol}/book | The partner exchange live order book for a contract (cached 5 seconds), with mark, index, last, open interest, 24 h volume, spread in bps and the basis of its mark over the Crossly index in bps. Prices are index points.
[**getVaultMarketDcmOptionsInput**](VaultMarketsAPI.md#getvaultmarketdcmoptionsinput) | **GET** /v1/vault-markets/dcm/options-inputs/{slug} | Options inputs for an index (indexes only, never a single item): Crossly realised volatility (raw and Geltner-desmoothed, from weekly returns), the forward (the partner future mark, else the Crossly close), Black-76 greeks on a strike x expiry grid and on every option the partner lists on the index. Model inputs, not quotes.
[**getVaultMarketDcmPosition**](VaultMarketsAPI.md#getvaultmarketdcmposition) | **GET** /v1/vault-markets/dcm/positions | The partner exchange account linked to your account (or to the firm sub-account &#x60;subaccountId&#x60;) and its positions, read-only (cached 15 seconds); index futures on category indexes count as portfolio-margin hedges for that account: contracts, side, entry and mark price, unrealised P&amp;L and margin in cents, liquidation price and notional in cents. Not linked: &#x60;linked: false&#x60;.
[**getVaultMarketDealer**](VaultMarketsAPI.md#getvaultmarketdealer) | **GET** /v1/vault-markets/dealer | Your dealer status (applied, approved, revoked) and your Instant Exit bands.
[**getVaultMarketDealerPool**](VaultMarketsAPI.md#getvaultmarketdealerpool) | **GET** /v1/vault-markets/dealer/pools/{id} | One of your curve pools, with its ladder and live legs.
[**getVaultMarketDigestPreview**](VaultMarketsAPI.md#getvaultmarketdigestpreview) | **GET** /v1/vault-markets/digest/preview | This week&#39;s vault digest as it would go out: units at the display marks (unmarked units counted, not valued), the like-for-like change from a week ago, offers on your units, watched keys that got a first mark, and one Learn card.
[**getVaultMarketEntity**](VaultMarketsAPI.md#getvaultmarketentity) | **GET** /v1/vault-markets/entities | The entities (funds, LLCs, trusts, SPVs) you belong to, and invitations waiting for you.
[**getVaultMarketEntityById**](VaultMarketsAPI.md#getvaultmarketentitybyid) | **GET** /v1/vault-markets/entities/{id} | One entity: members and roles, sub-accounts with their limits, firm halts, caps.
[**getVaultMarketEstimate**](VaultMarketsAPI.md#getvaultmarketestimate) | **GET** /v1/vault-markets/estimates/{bookKey} | The Crossly Estimate for a book key — a model, not a price. Method (own trades, index-adjusted last trade, grade ratio), cents with 68% and 95% bands, High/Medium/Low from the walk-forward backtest&#39;s FSD, and n. Hidden (&#x60;available: false&#x60;) under 50 backtested trades or when FSD &gt; 0.30. Never used for margin, loans or settlement.
[**getVaultMarketExecutionQuality**](VaultMarketsAPI.md#getvaultmarketexecutionquality) | **GET** /v1/vault-markets/execution-quality | The quarterly execution-quality report (Rule 605 style): fill rates, speed, effective vs quoted spread and shortfall by order type and size, and the busiest keys. &#x60;quarter&#x60; like 2026-Q4; the current quarter is provisional.
[**getVaultMarketFeeQuote**](VaultMarketsAPI.md#getvaultmarketfeequote) | **GET** /v1/vault-markets/fees/quote | Your fee for an order at a price: as maker (the order rests) and as taker (it fills at once), with the programme that sets your rate and any Crossly One trim. A buyer&#39;s fee is added to the price; a seller&#39;s comes out of the proceeds.
[**getVaultMarketFeeSchedule**](VaultMarketsAPI.md#getvaultmarketfeeschedule) | **GET** /v1/vault-markets/fees/schedule | The fee schedule by role: maker and taker rates for retail, 30-day volume, Registered LPs and DMMs, the CBX discount, the referral share and the 2% net floor Crossly always keeps.
[**getVaultMarketFollowSharing**](VaultMarketsAPI.md#getvaultmarketfollowsharing) | **GET** /v1/vault-markets/follows/sharing | Your sharing switches: the public vault profile, new buys, units sent in, sales, Hall loans, bids and asks for copy-watchers, and the leaderboards. All off until you turn them on.
[**getVaultMarketGemRate**](VaultMarketsAPI.md#getvaultmarketgemrate) | **GET** /v1/vault-markets/gem-rate/{bookKey} | The Crossly gem rate: of cards graded through Crossly, the share that came back at each grader&#39;s gem grade, for this item and its category, with a Wilson 95% band. 10 returns per grader or no number. Not a grader population report.
[**getVaultMarketGradeToVault**](VaultMarketsAPI.md#getvaultmarketgradetovault) | **GET** /v1/vault-markets/grade-to-vault/{id} | One Grade to Vault flow, brought up to date with its submission and unit.
[**getVaultMarketGradeToVaultCandidate**](VaultMarketsAPI.md#getvaultmarketgradetovaultcandidate) | **GET** /v1/vault-markets/grade-to-vault/candidates | What you can start Grade to Vault on: raw inventory matched to a catalogue item, and raw vault units on the grading hub shelf; plus whether Grading Runs are open.
[**getVaultMarketGradingSignal**](VaultMarketsAPI.md#getvaultmarketgradingsignal) | **GET** /v1/vault-markets/grading-signal | For a raw book key: the marks of the same item&#39;s graded keys, the spread over raw, grading cost per grader, the margin tier grading lifts it to, your raw vault units it pays to grade, and where to act.
[**getVaultMarketHallLoan**](VaultMarketsAPI.md#getvaultmarkethallloan) | **GET** /v1/vault-markets/hall/loans | Your Hall of Grails desk: this week&#39;s exhibition, the rules (maxLive loans, shownPerHolder per exhibition, repPoints per exhibition shown), reputation (exhibitions finished), your loans (status active, ending or ended; onShowNow, showingUntil, exhibitions, the next exhibition it fits, the Lent to the Hall badge) and the vault units you could lend (canLend, or the blocker in words, and the next exhibition each fits). Display only.
[**getVaultMarketHealth**](VaultMarketsAPI.md#getvaultmarkethealth) | **GET** /v1/vault-markets/health | Portfolio health of your vault holdings at Crossly marks: concentration by single item, category, grade and grader (shares, HHI on 0 to 10000, its band and effective number of holdings), value by liquidity tier, the stress grid (each category and everything down 10, 20 and 30 percent), value by mark quality, plain observations, and the held items a what-if can run on. Information only, not advice.
[**getVaultMarketHealthWhatIf**](VaultMarketsAPI.md#getvaultmarkethealthwhatif) | **GET** /v1/vault-markets/health/what-if | What if one held item moved by moveBps (-10000 to 10000 basis points of its mark): the item, your vault total, the item and its category share of the vault, and the single-item HHI, before and after. A scenario on the mark, not a price you could sell at.
[**getVaultMarketHomeUnit**](VaultMarketsAPI.md#getvaultmarkethomeunit) | **GET** /v1/vault-markets/home/units | \&quot;Show my vault\&quot;: the vault units you hold, the ones standing in your Crossly World home first. Each: vaultItemId, title, grade, imageUrl, bookKey (its market), inHome, visitors (visitors to your home see it). Also your home (slug, privacy, path), max units one home shows, shown, visitorsSee and a note on who sees what. Your home is made on first read. No prices.
[**getVaultMarketIndex**](VaultMarketsAPI.md#getvaultmarketindex) | **GET** /v1/vault-markets/indexes/{slug} | One index with its daily closes (oldest first) and its level now.
[**getVaultMarketIndexCalendar**](VaultMarketsAPI.md#getvaultmarketindexcalendar) | **GET** /v1/vault-markets/index-calendar | The next four quarterly reviews: reference day (2nd Friday of Mar/Jun/Sep/Dec), announcement day, last close under the old membership and the effective day; June and December also review the Blue-chip 50.
[**getVaultMarketIndexConsultation**](VaultMarketsAPI.md#getvaultmarketindexconsultation) | **GET** /v1/vault-markets/index-consultations/{id} | One consultation with its proposal, versions, dates, outcome and the public comments.
[**getVaultMarketIndexFeed**](VaultMarketsAPI.md#getvaultmarketindexfeed) | **GET** /v1/vault-markets/index-feed/{slug} | The licensed index feed for one built-in index (needs VAULT_INDEX_DCM + VAULT_INDEX_FEED_SECRET): the level now (intraday from A/B marks, or the last close below 50% constituent coverage), the last close, the frozen 7-day TWAP settlement value and every constituent with its mark source, quality and trade count. Signed: &#x60;x-crossly-signature: t&#x3D;&lt;ms&gt;,v1&#x3D;&lt;hex HMAC-SHA256(secret, t + \&quot;.\&quot; + body)&gt;&#x60;. Every read is logged for the licence. Crossly is the licensor and data feed only.
[**getVaultMarketIndexFeedFunding**](VaultMarketsAPI.md#getvaultmarketindexfeedfunding) | **GET** /v1/vault-markets/index-feed/{slug}/funding | Reference funding for a perpetual-style future on the index: your premium &#x60;premiumBps&#x60; (TWAP of (impact mid - index)/index) through F &#x3D; P + clamp(I - P, ±0.05%) per 8 h, |F| capped at 0.5%/day, with the index level it is relative to. The partner DCM computes and settles funding; this is the reference math.
[**getVaultMarketIndexFeedSettlement**](VaultMarketsAPI.md#getvaultmarketindexfeedsettlement) | **GET** /v1/vault-markets/index-feed/{slug}/settlement | The frozen 7-day TWAP settlement series for a licensed index (written once a day, never restated), with the closes behind each value. Signed like the feed.
[**getVaultMarketIndexLevel**](VaultMarketsAPI.md#getvaultmarketindexlevel) | **GET** /v1/vault-markets/indexes/{slug}/levels | An index&#39;s daily closes (up to 5 years), oldest first.
[**getVaultMarketIndexLicenceUsage**](VaultMarketsAPI.md#getvaultmarketindexlicenceusage) | **GET** /v1/vault-markets/index-licence/usage | Your licensed index feed reads over &#x60;days&#x60;, per index and endpoint (licence-usage report).
[**getVaultMarketIndexMethodology**](VaultMarketsAPI.md#getvaultmarketindexmethodology) | **GET** /v1/vault-markets/index-methodology | The index method in machine-readable form: version (semver), inputs, weightings and caps, the family and its screens, the engines and their publication gate, revisions and the settlement series, the calendar, governance and limitations.
[**getVaultMarketInstantExit**](VaultMarketsAPI.md#getvaultmarketinstantexit) | **GET** /v1/vault-markets/instant-exit | The Instant Exit quote for one vault unit you hold: the best resting bid on its book key (anyone&#39;s, dealers&#39; included), its share of the mark, the bid depth, and whether it can be taken now.
[**getVaultMarketJoint**](VaultMarketsAPI.md#getvaultmarketjoint) | **GET** /v1/vault-markets/joint | Your joint vaults and the invitations waiting for you, with the gate (open, missing env), the joint terms in words and what each right allows. A JointVaultsHome object, not a collection.
[**getVaultMarketJointById**](VaultMarketsAPI.md#getvaultmarketjointbyid) | **GET** /v1/vault-markets/joint/{id} | One joint vault (active members only): members and rights, the units in it at the mark with each owner of record, totals, recent joint trades, and the activity from the audit trail.
[**getVaultMarketKeyStat**](VaultMarketsAPI.md#getvaultmarketkeystat) | **GET** /v1/vault-markets/key-stats/{bookKey} | Everything derived about one book key in one read: the Crossly Estimate, the liquidity score, risk statistics and the gem rate. A part that cannot be read is &#x60;{ error }&#x60;.
[**getVaultMarketLearn**](VaultMarketsAPI.md#getvaultmarketlearn) | **GET** /v1/vault-markets/learn | The Learn hub: each concept with whether you passed its quiz. Passing earns cosmetic pins only.
[**getVaultMarketLearnByConcept**](VaultMarketsAPI.md#getvaultmarketlearnbyconcept) | **GET** /v1/vault-markets/learn/{concept} | One Learn concept: its sections and quiz questions (no answers).
[**getVaultMarketLendingElection**](VaultMarketsAPI.md#getvaultmarketlendingelection) | **GET** /v1/vault-markets/lending/election | Your lender election: &#x60;returnInKind&#x60; (shorts post 175% collateral, a 14-day buy-in, never cash-settled) and &#x60;allowTerm&#x60; (your units may go out on 30/90-day fixed-rate term loans, not recallable before term).
[**getVaultMarketLendingProgramme**](VaultMarketsAPI.md#getvaultmarketlendingprogramme) | **GET** /v1/vault-markets/lending/programme | Your lender programme report: lendable units, units out, utilisation, fee revenue (accrued / paid), term loans and return-in-kind loans in force, and each loan&#39;s rate against the key&#39;s rate today.
[**getVaultMarketLendingStatement**](VaultMarketsAPI.md#getvaultmarketlendingstatement) | **GET** /v1/vault-markets/lending/statement | Your daily collateral statement as a lender (today live, or &#x60;day&#x60;): per open loan the mark and its quality, fees owed to you, the short&#39;s collateral share at the custodian and its coverage against 105% of mark + fees. A unit without a mark usable for risk shows no coverage number.
[**getVaultMarketLiquidity**](VaultMarketsAPI.md#getvaultmarketliquidity) | **GET** /v1/vault-markets/liquidity/{bookKey} | The liquidity score (0-100) of a book key and every component behind it: trades in 30/90 days, distinct counterparties, median days between trades, time-weighted quoted spread, two-sided share and depth within 5% (hourly book snapshots), Amihud and Roll. Each component is a percentile within the category. No score under the data threshold.
[**getVaultMarketLoanQuote**](VaultMarketsAPI.md#getvaultmarketloanquote) | **GET** /v1/vault-markets/loans/quote | How much you can borrow against vault units (&#x60;vaultItemIds&#x60;, comma-separated; none &#x3D; every stored unit you hold): each unit&#39;s tier, mark and limit, the pool&#39;s rate and yours.
[**getVaultMarketLoanUnitSaleFloor**](VaultMarketsAPI.md#getvaultmarketloanunitsalefloor) | **GET** /v1/vault-markets/loans/{id}/units/{vaultItemId}/sale-floor | The lowest price a pledged unit can be sold at to repay its loan: after the sale (less the vault fee and storage) what is still owed must fit inside the other units&#39; limit.
[**getVaultMarketLocate**](VaultMarketsAPI.md#getvaultmarketlocate) | **GET** /v1/vault-markets/locates | A locate quote: how many units of &#x60;key&#x60; (a book key) you could borrow now (up to &#x60;qty&#x60;), the indicative rate (APR bps; &#x60;termDays&#x60; 30 or 90 for a fixed-rate term loan), and the collateral they need (150%, or 175% for units whose lenders elected return in kind only). Holds nothing; POST to hold.
[**getVaultMarketMark**](VaultMarketsAPI.md#getvaultmarketmark) | **GET** /v1/vault-markets/marks/{bookKey} | One book key mark with everything behind it: the price in cents, its quality (A trade-anchored, B firm two-sided, C indicative, none), its confidence in bps and the band in cents, when it was computed, whether risk may act on it (judged for margin), the related key it was implied from (impliedFrom: a grade, the model median of the other sizes, or an index; null when none), every stored input, and the learned relations it may be implied from.
[**getVaultMarketMarket**](VaultMarketsAPI.md#getvaultmarketmarket) | **GET** /v1/vault-markets/market | One book key (variantId:condition:gradeKey): its mark and history, lending depth and borrow rate, open interest and live auctions.
[**getVaultMarketMarketModel**](VaultMarketsAPI.md#getvaultmarketmarketmodel) | **GET** /v1/vault-markets/market-model/{bookKey} | How a book key trades: its liquidity tier (A continuous, B call auction every 15 minutes, C daily call, D listings only), the call collecting now with its indicative price and volume and nominal close, the next call, the LULD band and any limit state, pause or halt.
[**getVaultMarketMm**](VaultMarketsAPI.md#getvaultmarketmm) | **GET** /v1/vault-markets/mm | Your market-maker programmes, the last 30 days of obligations, rebates earned (paid only from fees already taken), and the rules.
[**getVaultMarketMmKey**](VaultMarketsAPI.md#getvaultmarketmmkey) | **GET** /v1/vault-markets/mm/key | A key&#39;s designated market maker (by the name it chose) and how many LPs quote it.
[**getVaultMarketMmMmp**](VaultMarketsAPI.md#getvaultmarketmmmmp) | **GET** /v1/vault-markets/mm/mmp | Your market-maker protection: the fill trigger, the freeze, and whether you are frozen now.
[**getVaultMarketMode**](VaultMarketsAPI.md#getvaultmarketmode) | **GET** /v1/vault-markets/mode | Your Vault Markets mode: simple (buy, sell and what it is worth) or pro (the full terminal), whether you chose it or it was set for you (new people start in simple; people already trading start in pro), and when.
[**getVaultMarketNav**](VaultMarketsAPI.md#getvaultmarketnav) | **GET** /v1/vault-markets/nav | Mark NAV, bid NAV (the resting bids) and liquidation NAV (the bids at 20% of ADV for 10 days), holding by holding, each with its ASC 820 level, mark quality and source, and your administrator&#39;s price when uploaded.
[**getVaultMarketNavFile**](VaultMarketsAPI.md#getvaultmarketnavfile) | **GET** /v1/vault-markets/nav/file/{format} | The NAV as a csv, pdf or json file.
[**getVaultMarketOpening**](VaultMarketsAPI.md#getvaultmarketopening) | **GET** /v1/vault-markets/opening/{slug} | One opening key.
[**getVaultMarketOracle**](VaultMarketsAPI.md#getvaultmarketoracle) | **GET** /v1/vault-markets/oracle | Crossly as an oracle publisher (needs CROSSLY_ORACLE_PUBLISHER_KEY + CROSSLY_ORACLE_NETWORK): the network (pyth or switchboard), the ed25519 key every value is signed with, each published index feed with its latest attempt, and 24 h counts of published, skipped and failed. Only built-in indexes priced from A/B marks are published; Crossly never reads its own feed back.
[**getVaultMarketOracleBySlug**](VaultMarketsAPI.md#getvaultmarketoraclebyslug) | **GET** /v1/vault-markets/oracle/{slug} | The latest published oracle value for an index: level, fixed-point price and confidence at the feed exponent, confidence in bps, staleness in seconds, coverage, the exact signed message and its ed25519 signature with the signer key, and whether it is fresh.
[**getVaultMarketOrderHandling**](VaultMarketsAPI.md#getvaultmarketorderhandling) | **GET** /v1/vault-markets/order-handling | How orders are handled (the 606/607-style disclosure): one book, self-trade prevention, protected market orders, liquidations by auction, halts, dealers and fees.
[**getVaultMarketP2pDashboard**](VaultMarketsAPI.md#getvaultmarketp2pdashboard) | **GET** /v1/vault-markets/p2p/dashboard | Peer-to-peer vault loans at a glance: what you owe as a borrower and are owed as a lender (principal + interest to the second), daily interest, called loans, your open offers, the gates and the rules (auction hours, rate ceiling, size bounds, call grace).
[**getVaultMarketP2pLoan**](VaultMarketsAPI.md#getvaultmarketp2ploan) | **GET** /v1/vault-markets/p2p/loans/{id} | One P2P loan with its money log (fund, repay, refinance). A loan in a running refinancing auction can be read by any lender, without the log.
[**getVaultMarketPaper**](VaultMarketsAPI.md#getvaultmarketpaper) | **GET** /v1/vault-markets/paper | Your paper trading account (play money only, never real or convertible; opened at $10,000 the first time): play cash, buying power, paper positions at the real marks, P&amp;L, working paper orders, recent paper fills and this week on the leaderboard.
[**getVaultMarketPaperQuote**](VaultMarketsAPI.md#getvaultmarketpaperquote) | **GET** /v1/vault-markets/paper/quote | What a paper order would fill against the real book now, without placing it: units fillable inside the limit (a market order uses the 5% protection band around the mark), average price, simulated fee, and the queue ahead of any rest.
[**getVaultMarketPartnerMe**](VaultMarketsAPI.md#getvaultmarketpartnerme) | **GET** /v1/vault-markets/partners/me | Your Vault Drop-off Partnership (null when you never applied): status, partner code, fee share and cap, totals and batches.
[**getVaultMarketPool**](VaultMarketsAPI.md#getvaultmarketpool) | **GET** /v1/vault-markets/pool | The CBX market staking pool: size, value, what it lends, utilisation, rate, insurance fund.
[**getVaultMarketPopReport**](VaultMarketsAPI.md#getvaultmarketpopreport) | **GET** /v1/vault-markets/pop-reports | Grading population report for one market (&#x60;bookKey&#x60;): focus (on a graded market: its grade, pop &#x3D; copies graded at exactly that grade, higher &#x3D; copies graded better by the same grader, total, asOf and source), graders (each grader ladder for the card, best grade first, from one report: the newest, the population feed over a hand entry on the same date), provider.connected, and status (ok, not_synced, no_report or no_source) with explain, which says in plain words what is missing. source is provider (the population feed) or ops (entered by Crossly from the grader published report). Counts only, never a price.
[**getVaultMarketPortfolio**](VaultMarketsAPI.md#getvaultmarketportfolio) | **GET** /v1/vault-markets/portfolio | Your vault holdings at the market price, with cost and P&amp;L, and units you have out on loan.
[**getVaultMarketPortfolioHistory**](VaultMarketsAPI.md#getvaultmarketportfoliohistory) | **GET** /v1/vault-markets/portfolio/history | Your Vault Markets value by day at the marks (vault units, units on loan, positions) and today&#39;s return against yesterday&#39;s close.
[**getVaultMarketPortfolioMargin**](VaultMarketsAPI.md#getvaultmarketportfoliomargin) | **GET** /v1/vault-markets/portfolio-margin | Portfolio margin for a firm sub-account (&#x60;subaccountId&#x60;): eligibility with every reason (ECP, KYB, minimum equity $500k or $100k with evidenced intraday monitoring), whether it is enrolled, the latest requirement, equity, excess and state (healthy, call or buy_in), the breakdown by category and item, the partner index futures counted, and the policy. Before enrolling, a live preview.
[**getVaultMarketPosition**](VaultMarketsAPI.md#getvaultmarketposition) | **GET** /v1/vault-markets/positions/{id} | One position with its loans, auctions and custodian instruction log.
[**getVaultMarketPositionExit**](VaultMarketsAPI.md#getvaultmarketpositionexit) | **GET** /v1/vault-markets/positions/{id}/exits | A position&#39;s take-profit / stop-loss, if set.
[**getVaultMarketPositionRisk**](VaultMarketsAPI.md#getvaultmarketpositionrisk) | **GET** /v1/vault-markets/positions/{id}/risk | One position&#39;s call and liquidation marks.
[**getVaultMarketPress**](VaultMarketsAPI.md#getvaultmarketpress) | **GET** /v1/vault-markets/press | The press kit: each built-in index with level, quality, n, CSV link and a \&quot;cite as\&quot; line, plus the methodology links.
[**getVaultMarketPriceWidget**](VaultMarketsAPI.md#getvaultmarketpricewidget) | **GET** /v1/vault-markets/price-widgets/{id} | One of your price widgets, with its iframe and script-tag snippets and URLs.
[**getVaultMarketProDepth**](VaultMarketsAPI.md#getvaultmarketprodepth) | **GET** /v1/vault-markets/pro/depth | The L2 depth ladder: price levels and units per side, best first; asks show how many units are authenticated vault stock.
[**getVaultMarketProOrder**](VaultMarketsAPI.md#getvaultmarketproorder) | **GET** /v1/vault-markets/pro/orders/{id} | One order with its full event log.
[**getVaultMarketProSnapshot**](VaultMarketsAPI.md#getvaultmarketprosnapshot) | **GET** /v1/vault-markets/pro/snapshot | A book key&#39;s depth (20 levels a side), last 50 trades, 24 h stats, mark and any halt, in one call.
[**getVaultMarketProStat**](VaultMarketsAPI.md#getvaultmarketprostat) | **GET** /v1/vault-markets/pro/stats | 24 h open, high, low, last, volume and change on a book key.
[**getVaultMarketProStream**](VaultMarketsAPI.md#getvaultmarketprostream) | **GET** /v1/vault-markets/pro/stream | A long-lived text/event-stream for a book key: &#x60;snapshot&#x60; first, then &#x60;depth&#x60;, &#x60;trades&#x60;, &#x60;mark&#x60; and &#x60;halt&#x60; events as they change.
[**getVaultMarketProfile**](VaultMarketsAPI.md#getvaultmarketprofile) | **GET** /v1/vault-markets/profile | Your public vault profile switch: on or off, whether followers see new buys, your profile URL and follower count.
[**getVaultMarketProfileByHandle**](VaultMarketsAPI.md#getvaultmarketprofilebyhandle) | **GET** /v1/vault-markets/profiles/{handle} | Someone&#39;s public vault: each market&#39;s weight (bps of the marked value), followers, whether you follow, their recent buys (no prices).
[**getVaultMarketProofOfReserve**](VaultMarketsAPI.md#getvaultmarketproofofreserve) | **GET** /v1/vault-markets/proof-of-reserves | Proof of reserves: the latest daily Merkle root over every unit in custody (leaf count, stored / listed / grading / withdrawing, pledged, on loan, open loans, receipts, insured value), its Solana memo anchor when VAULT_POR_ANCHOR_KEY is set, the last &#x60;days&#x60; roots, and the exact hashing method.
[**getVaultMarketProofOfReserveByDay**](VaultMarketsAPI.md#getvaultmarketproofofreservebyday) | **GET** /v1/vault-markets/proof-of-reserves/{day} | One day&#39;s proof-of-reserves snapshot (root, counts, anchor).
[**getVaultMarketProofOfReserveMe**](VaultMarketsAPI.md#getvaultmarketproofofreserveme) | **GET** /v1/vault-markets/proof-of-reserves/me | Your inclusion proofs for a day (latest by default): each of your units&#39; leaf fields, salt, owner commitment, leaf hash and sibling path. Verify with your OWN user id: commitment &#x3D; SHA-256(JSON[\&quot;crossly-por-owner-v1\&quot;, userId, salt]); then the leaf; then climb the path to the published root.
[**getVaultMarketRate**](VaultMarketsAPI.md#getvaultmarketrate) | **GET** /v1/vault-markets/rates | Daily borrow APR (lent units) and pool APR on a book key, with the pool as a whole, oldest first.
[**getVaultMarketReport**](VaultMarketsAPI.md#getvaultmarketreport) | **GET** /v1/vault-markets/report | The quarterly Crossly Vault Report (&#x60;quarter&#x60; like 2026-q3; default the latest): index levels, top movers, most-lent markets, grade premiums. Book data only.
[**getVaultMarketRfq**](VaultMarketsAPI.md#getvaultmarketrfq) | **GET** /v1/vault-markets/rfq/{id} | One quote request: the requester sees every answer (anonymous); a responder sees the request and their own answer.
[**getVaultMarketRiskReport**](VaultMarketsAPI.md#getvaultmarketriskreport) | **GET** /v1/vault-markets/risk-report | Historical VaR 95/99 1d/10d and Bangia LVaR (model figures: labelled, with n and a band, null below the data threshold), stress scenarios (category −30%, CBX −50%, books thin to 25%, index drawdowns), concentration and counterparty exposure.
[**getVaultMarketRiskStat**](VaultMarketsAPI.md#getvaultmarketriskstat) | **GET** /v1/vault-markets/risk-stats/{bookKey} | Risk statistics for a book key (weekly returns from A-quality marks only) or an index slug (its closes): annualised volatility raw and Geltner-desmoothed (labelled), max drawdown and beta to the Composite. Needs 26 weekly returns, else no numbers.
[**getVaultMarketSetGoal**](VaultMarketsAPI.md#getvaultmarketsetgoal) | **GET** /v1/vault-markets/set-goals/{id} | One set goal: every piece in the set order, held (with the vault unit) or missing (with the cheapest marked book key that meets the target and its mark), the conditions and grades seen, and the working basket bid with its legs.
[**getVaultMarketSetGoalBasketPlan**](VaultMarketsAPI.md#getvaultmarketsetgoalbasketplan) | **GET** /v1/vault-markets/set-goals/{id}/basket-plan | What a basket bid would place now, without placing it: one leg per missing piece (cheapest first, the mark plus maxBpsOverMark as the limit), the pieces skipped and why, and the most it can cost (limits plus the worst-case buyer fee), never more than budgetCents.
[**getVaultMarketShareCard**](VaultMarketsAPI.md#getvaultmarketsharecard) | **GET** /v1/vault-markets/share-cards/{id} | One share card as the public sees it, with its image and link paths.
[**getVaultMarketStatement**](VaultMarketsAPI.md#getvaultmarketstatement) | **GET** /v1/vault-markets/statements | The last 24 months with whether each statement is issued (frozen, with its sha256).
[**getVaultMarketStatementByMonth**](VaultMarketsAPI.md#getvaultmarketstatementbymonth) | **GET** /v1/vault-markets/statements/{month} | A monthly statement (&#x60;month&#x60; like 2026-10): units held at month end, loans, pledges, positions, fills, fees, storage, and cash quoted from the custodian and labelled as its record. Issued (frozen) once the month ends.
[**getVaultMarketStatementFile**](VaultMarketsAPI.md#getvaultmarketstatementfile) | **GET** /v1/vault-markets/statements/{month}/file/{format} | A monthly statement as a csv, pdf or json file.
[**getVaultMarketSupply**](VaultMarketsAPI.md#getvaultmarketsupply) | **GET** /v1/vault-markets/supply | A book key&#39;s units in the vault and authentications passed, by day (oldest first, today live).
[**getVaultMarketSupplyBatch**](VaultMarketsAPI.md#getvaultmarketsupplybatch) | **GET** /v1/vault-markets/supply/batches/{id} | A box sent to the vault: its prepaid label and tracking, or why it has no label.
[**getVaultMarketSupplyRoundUp**](VaultMarketsAPI.md#getvaultmarketsupplyroundup) | **GET** /v1/vault-markets/supply/round-up | Your seller round-up: the share of each payout that sets a vault buy&#39;s budget, the budget so far and what it is doing. &#x60;roundUp&#x60; is null when none is set.
[**getVaultMarketTax**](VaultMarketsAPI.md#getvaultmarkettax) | **GET** /v1/vault-markets/tax | Your tax year on the vault markets: units bought and sold with cost, proceeds, gain and term; lending fees, staking interest (estimate), market-maker rewards; closed positions. Links to the CSV and PDF.
[**getVaultMarketTaxCsv**](VaultMarketsAPI.md#getvaultmarkettaxcsv) | **GET** /v1/vault-markets/tax.csv | The tax year as a CSV: one row per sale, purchase, gift, income line and closed position.
[**getVaultMarketTaxLossSuggestion**](VaultMarketsAPI.md#getvaultmarkettaxlosssuggestion) | **GET** /v1/vault-markets/tax/loss-suggestions | Tax-loss suggestions: the units you hold whose mark is below your cost, each with its lot (acquired when and how, cost in cents), short or long term if sold today and the day a short lot turns long, the estimated loss at the mark before selling fees, mark quality, what stops a sale, and a link to the ordinary sell ticket. With totals by term, the gains realised so far this year, and a not-tax-advice disclosure. Never sells.
[**getVaultMarketTaxPdf**](VaultMarketsAPI.md#getvaultmarkettaxpdf) | **GET** /v1/vault-markets/tax.pdf | The tax year as a PDF summary.
[**getVaultMarketTca**](VaultMarketsAPI.md#getvaultmarkettca) | **GET** /v1/vault-markets/tca | Your pro orders in a window (&#x60;from&#x60;, &#x60;to&#x60;; default 90 days) with arrival mark and mid, average fill, implementation shortfall, slippage, fill rate and time to fill.
[**getVaultMarketTcaByOrderId**](VaultMarketsAPI.md#getvaultmarkettcabyorderid) | **GET** /v1/vault-markets/tca/{orderId} | One order&#39;s TCA, including slippage against the VWAP of eligible trades while it worked.
[**getVaultMarketTod**](VaultMarketsAPI.md#getvaultmarkettod) | **GET** /v1/vault-markets/tod | Your transfer-on-death setup: the gate and terms, whether you accepted them, your beneficiaries and shares, units with their designations and who the plan gives them to today, and open claims on your account (which you can stop). A TodOverview object, not a collection.
[**getVaultMarketTodMyClaim**](VaultMarketsAPI.md#getvaultmarkettodmyclaim) | **GET** /v1/vault-markets/tod/my-claims | Claims you filed as a beneficiary: status in words, documents sent (names only), the waiting period, and units moved or held. A TodMyClaims object, not a collection.
[**getVaultMarketUnitAr**](VaultMarketsAPI.md#getvaultmarketunitar) | **GET** /v1/vault-markets/units/{id}/ar | A vault unit as an AR model, for \&quot;See it in your room\&quot; (the web&#39;s /ar/vault-&lt;id&gt; page hands it to Scene Viewer, WebXR or Quick Look): title, model (a path under /models, without .glb, at real size), scanUrl (the unit&#39;s own captured mesh, when it has one), imageUrl, art, tint, scale, bookKey, backPath and mine. Your own units always; somebody else&#39;s only while they show it to visitors in a home you may enter (else 404).
[**getVaultMarketUnitEvidence**](VaultMarketsAPI.md#getvaultmarketunitevidence) | **GET** /v1/vault-markets/units/{id}/evidence | Evidence on a vault unit:its 3D scans (model, texture, listing photos) and its grade report (grader, grade, cert, verified against the grader record, hub intake photos). No owner identity.
[**getVaultMarketUnitQuote**](VaultMarketsAPI.md#getvaultmarketunitquote) | **GET** /v1/vault-markets/units/{id}/quote | The market around a vault unit: its mark and source, the best bid that could take it, the Instant Exit price (the best bid) and a pack pull&#39;s own sell-back credit.
[**getVaultMarketUnitStory**](VaultMarketsAPI.md#getvaultmarketunitstory) | **GET** /v1/vault-markets/units/{id}/story | One vault unit&#39;s story, oldest first: intake (with scan and grade evidence when it has some), grades, owners, sales at their prices, loans, pledges, Hall of Grails exhibitions, receipt-token exports and redemptions, and each warehouse-receipt hash-chain step (re-verified on read: chain.ok). People are named only while their public vault profile is on; others are &#39;A collector&#39;.
[**getVaultMarketValuationStatement**](VaultMarketsAPI.md#getvaultmarketvaluationstatement) | **GET** /v1/vault-markets/valuation-statements/{id} | One statement you issued: every unit, the totals by mark quality, the methodology, its sha256, its audit-chain seal and the verify link.
[**getVaultMarketValuationStatementPdf**](VaultMarketsAPI.md#getvaultmarketvaluationstatementpdf) | **GET** /v1/vault-markets/valuation-statements/{id}/pdf | One statement you issued as a PDF.
[**getVaultMarketValuationStatementPreview**](VaultMarketsAPI.md#getvaultmarketvaluationstatementpreview) | **GET** /v1/vault-markets/valuation-statements/preview | An insurance or appraisal statement for a day (purpose, asOf YYYY-MM-DD, default today), built but not issued: every unit you held that day at its mark, with quality, last trade, grade and cert, and the total. No id, no hash.
[**getVaultMarketValuationStatementVerify**](VaultMarketsAPI.md#getvaultmarketvaluationstatementverify) | **GET** /v1/vault-markets/valuation-statements/{id}/verify | Check any issued statement by its id, as an insurer would: purpose, date, totals by mark quality and the sha256; intact (the stored record still hashes to it), seal.ok (its audit-chain entry still carries it) and, with ?hash&#x3D;, whether yours matches. Never the holder or the units.
[**getVaultMarketValue**](VaultMarketsAPI.md#getvaultmarketvalue) | **GET** /v1/vault-markets/value | A catalogue item&#39;s vault book keys (&#x60;?skuId&#x3D;&#x60;, optional &#x60;variantId&#x60;): each key&#39;s display mark with quality and n, units in the vault, the Instant Exit price a holder would get now, and whether it can be shipped in (ungraded keys).
[**getVaultMarketVaultSuggestionItem**](VaultMarketsAPI.md#getvaultmarketvaultsuggestionitem) | **GET** /v1/vault-markets/vault-suggestions/items/{id} | One inventory item: its vault suggestion, or in plain words why there is none (&#x60;status&#x60;: suggested, not_found, no_stock, not_matched, in_vault or no_market).
[**getVaultMarketWidgetIndex**](VaultMarketsAPI.md#getvaultmarketwidgetindex) | **GET** /v1/vault-markets/widgets/index/{slug} | What the &lt;crossly-index&gt; widget shows: level, closes, quality, n, as-of, or &#x60;insufficient&#x60;.
[**getVaultMarketWidgetMark**](VaultMarketsAPI.md#getvaultmarketwidgetmark) | **GET** /v1/vault-markets/widgets/mark | What the &lt;crossly-mark&gt; widget shows for &#x60;bookKey&#x60;: mark, quality, trades over 30 days, as-of, sparkline, or &#x60;insufficient&#x60;.
[**getVaultMarketWidgetSummary**](VaultMarketsAPI.md#getvaultmarketwidgetsummary) | **GET** /v1/vault-markets/widget/summary | The home-screen widget summary: portfolio value at the mark with its move since the previous marks (cents and bps) and the share resting on reliable A/B marks, the three biggest movers among what you hold (the market movers when you hold nothing; &#x60;movers.source&#x60; says which), and one watchlist key (&#x60;?key&#x3D;&#x60; a book key on your watchlist; else your newest watch) with a 14-day sparkline. Every price is from the Crossly order book and carries its mark quality (A, B, C or none). Cached for five minutes.
[**getVaultMarketWorldFloor**](VaultMarketsAPI.md#getvaultmarketworldfloor) | **GET** /v1/vault-markets/world/floor | The Trading Floor in Crossly World: trades (the newest trades on every vault book in the last day, at most 40, newest first: bookKey, name, priceCents, priceText, side -- buy when a buyer took an ask, sell when a seller hit a bid, cross for an auction -- and ageS), tickers (the big board: the most-traded markets, each with its last trade price, the change from the last trade before today in basis points, trades today and the display mark with its quality), bell (Market Open: ringing for ten minutes after a new key opens, with the key and its market link, and what opens next) and trades24h. Every price is a trade on the Crossly order book; it never shows who traded. Nothing can be traded in the room.
[**getVaultMarketWorldLounge**](VaultMarketsAPI.md#getvaultmarketworldlounge) | **GET** /v1/vault-markets/world/lounge | The Vault Holders Lounge: the rule to join (held value at reliable marks, or a unit count), whether you may join now and what you hold toward it. Anyone may look in; only holders are seen there. No perks, nothing to trade.
[**getVaultMarketWorldPlaceVaultGate**](VaultMarketsAPI.md#getvaultmarketworldplacevaultgate) | **GET** /v1/vault-markets/world/places/{place}/vault-gate | The vault-holder door on a Crossly World room or Space, by its presence slug (a room share slug, or space-&lt;slug&gt;): the rule (minValueCents held at reliable A/B marks and/or minUnits units, mode any or all, optionally one product, bullion family or category), the rule in words, and whether you may join now with what you hold toward it. gate is null when the place has no vault door. Anyone may look in; only holders join.
[**getVaultMarketWorth**](VaultMarketsAPI.md#getvaultmarketworth) | **GET** /v1/vault-markets/worth | What one book key (variantId:condition:gradeKey, &#x60;bookKey&#x60;) is worth: the mark in cents with its quality (A from trades, B from firm quotes, C indicative, none) and band, what Instant Exit would pay for one unit now from the best resting bid (yours left out), and your units: how many you hold, how many are free to sell, their value at the mark and what selling every free one now would fetch from today’s bids. Plain-words &#x60;headline&#x60; and &#x60;lines&#x60;. Read only.
[**getVaultMarketWorthVault**](VaultMarketsAPI.md#getvaultmarketworthvault) | **GET** /v1/vault-markets/worth/vault | What your whole vault is worth now: value at the marks split into reliable and indicative marks, cost and P&amp;L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
[**getVaultReceipt**](VaultMarketsAPI.md#getvaultreceipt) | **GET** /v1/vault/receipts/{receiptNo} | One of your receipts with its full hash chain (issued, transferred, pledged, released, surrendered), re-verified on read: &#x60;chain.ok&#x60; is false if any event was altered.
[**getVaultReceiptToken**](VaultMarketsAPI.md#getvaultreceipttoken) | **GET** /v1/vault/receipt-tokens/{id} | One receipt token (yours, or on a unit you own now) with its chain log: built, minted, frozen, thawed, new holder seen, redeem built, burned, with explorer links.
[**getVaultReceiptTokenByMint**](VaultMarketsAPI.md#getvaultreceipttokenbymint) | **GET** /v1/vault/receipt-tokens/by-mint/{mint} | What a Solana mint is: the warehouse receipt number and item it stands for, and whether the token is live, frozen (unit pledged or lent) or burned, and whether the unit is still on a vault shelf. Names no person and no wallet.
[**listVaultMarketAccounts**](VaultMarketsAPI.md#listvaultmarketaccounts) | **GET** /v1/vault-markets/accounts | Every account you can act on: your own, and each sub-account your entity memberships reach, with your role.
[**listVaultMarketAdlEvents**](VaultMarketsAPI.md#listvaultmarketadlevents) | **GET** /v1/vault-markets/adl/events | The ADL events your positions were part of, newest first: role bankrupt (yours went under water) or counterparty (yours was first in line), the price both closed at and the transfer status.
[**listVaultMarketAdlPositions**](VaultMarketsAPI.md#listvaultmarketadlpositions) | **GET** /v1/vault-markets/adl/positions | Your live positions, each with its place in its item ADL queue: lights 5 (first in line) to 1 (last), 0 when not in the queue (only profitable positions are), ranked by P&amp;L% x effective leverage.
[**listVaultMarketAgentDrafts**](VaultMarketsAPI.md#listvaultmarketagentdrafts) | **GET** /v1/vault-markets/agent/drafts | Limit orders the shopping agent drafted for you, newest first. A draft places nothing: send its orderBody to POST /api/v1/vault-markets/pro/orders to place it.
[**listVaultMarketAgentWatches**](VaultMarketsAPI.md#listvaultmarketagentwatches) | **GET** /v1/vault-markets/agent/watches | Your price watches on book keys (best bid, lowest ask, last trade or market price, in cents), live ones first. &#x60;?live&#x3D;true&#x60; for live only.
[**listVaultMarketAlertLog**](VaultMarketsAPI.md#listvaultmarketalertlog) | **GET** /v1/vault-markets/alert-log | What the alerts hub did with your recent vault alerts (&#x60;?limit&#x3D;&#x60; 1 to 200, default 50): kind, title, the channels it went to, what was held (channel:reason) and the email digest state.
[**listVaultMarketAlerts**](VaultMarketsAPI.md#listvaultmarketalerts) | **GET** /v1/vault-markets/alerts | Your price alerts on book keys.
[**listVaultMarketAuctions**](VaultMarketsAPI.md#listvaultmarketauctions) | **GET** /v1/vault-markets/auctions | Open vault auction events (weekly, ending Sunday; premier, units marked $10,000+) and their lots, soonest ending first.
[**listVaultMarketBlocks**](VaultMarketsAPI.md#listvaultmarketblocks) | **GET** /v1/vault-markets/blocks | An entity&#39;s block orders, newest first, each with its plan and how it was allocated.
[**listVaultMarketBullionFamilyPegs**](VaultMarketsAPI.md#listvaultmarketbullionfamilypegs) | **GET** /v1/vault-markets/bullion/family-pegs | Your family-wide spot-pegged quotes (live, or all with status&#x3D;all): one quote resting across a bullion family books at one condition, with units left, the peg, its status and every leg (the pegged quote on each book).
[**listVaultMarketBullionKeys**](VaultMarketsAPI.md#listvaultmarketbullionkeys) | **GET** /v1/vault-markets/bullion/keys | Bullion key families (metal, form, size, mint or any mint): members, vault units, best resting bid and ask across their books, and spot as a labelled reference with what one unit of metal is worth at it. Spot is never a Crossly price.
[**listVaultMarketBullionPegs**](VaultMarketsAPI.md#listvaultmarketbullionpegs) | **GET** /v1/vault-markets/bullion/pegs | Your spot-pegged quotes (live, or all with status&#x3D;all): side, units, the peg, the order it rests as, the last price and spot it was priced from, and why it is pulled when it is.
[**listVaultMarketCollectionWorth**](VaultMarketsAPI.md#listvaultmarketcollectionworth) | **GET** /v1/vault-markets/collection-worth | Your collection valued at the display marks: rows on a vault book key with a mark are summed; rows with no mark or no key are counted, never valued.
[**listVaultMarketConfirmations**](VaultMarketsAPI.md#listvaultmarketconfirmations) | **GET** /v1/vault-markets/confirmations | Trade confirmations for your fills in a window (default 31 days): price, sale fee, maker or taker, order, vault unit and warehouse receipt.
[**listVaultMarketCreatorCohostInvites**](VaultMarketsAPI.md#listvaultmarketcreatorcohostinvites) | **GET** /v1/vault-markets/creators/cohost-invites | For creators: your invites from Crossly to co-host a Market Open launch show (invited, accepted, declined or withdrawn), each with the key, its show and the guidance for co-hosts.
[**listVaultMarketCredit**](VaultMarketsAPI.md#listvaultmarketcredit) | **GET** /v1/vault-markets/credit | Your vault loans and advances (live by default): what is owed, interest accrued, loan-to-value, the liquidation line and the collateral value it is called at.
[**listVaultMarketDealerBands**](VaultMarketsAPI.md#listvaultmarketdealerbands) | **GET** /v1/vault-markets/dealer/bands | Your Instant Exit bands and whether each is being kept now.
[**listVaultMarketDealerBids**](VaultMarketsAPI.md#listvaultmarketdealerbids) | **GET** /v1/vault-markets/dealer/bids | Your standing dealer bids: open (default) or all.
[**listVaultMarketDealerPoolFills**](VaultMarketsAPI.md#listvaultmarketdealerpoolfills) | **GET** /v1/vault-markets/dealer/pools/{id}/fills | A curve pool&#39;s fills, newest first: side, price and spot after.
[**listVaultMarketDealerPools**](VaultMarketsAPI.md#listvaultmarketdealerpools) | **GET** /v1/vault-markets/dealer/pools | Your curve pools: open (default) or all, each with its curve, spot, units, buy budget, running totals, the ladder it shows and its live legs.
[**listVaultMarketDigestHistory**](VaultMarketsAPI.md#listvaultmarketdigesthistory) | **GET** /v1/vault-markets/digest/history | Past weekly digests: week, status (sent / skipped / failed), the channels used and a summary.
[**listVaultMarketEntityAudit**](VaultMarketsAPI.md#listvaultmarketentityaudit) | **GET** /v1/vault-markets/entities/{id}/audit | The entity&#39;s audit trail, newest first: hash-chained rows with actor, account, API key, IP, session and source.
[**listVaultMarketEntityConversions**](VaultMarketsAPI.md#listvaultmarketentityconversions) | **GET** /v1/vault-markets/entities/{id}/conversions | The custodian&#39;s CBX-to-USD reward conversions for an entity that elected USD, newest first, with their status.
[**listVaultMarketEstimatesAccuracy**](VaultMarketsAPI.md#listvaultmarketestimatesaccuracy) | **GET** /v1/vault-markets/estimates-accuracy | The Crossly Estimate&#39;s track record: walk-forward backtest n, FSD and bias per method, category and liquidity bucket, and whether estimates in that cell are shown.
[**listVaultMarketFeed**](VaultMarketsAPI.md#listvaultmarketfeed) | **GET** /v1/vault-markets/feed | New vault buys by the people you follow who share them, newest first (no prices). Page with &#x60;before&#x60; (the last item&#39;s &#x60;at&#x60;).
[**listVaultMarketFollowCopyWatch**](VaultMarketsAPI.md#listvaultmarketfollowcopywatch) | **GET** /v1/vault-markets/follows/copy-watch | The collectors you copy-watch and whether each still shares bids and asks.
[**listVaultMarketFollowCopyWatchAlerts**](VaultMarketsAPI.md#listvaultmarketfollowcopywatchalerts) | **GET** /v1/vault-markets/follows/copy-watch/alerts | Your copy-watch alerts, newest first: who, bid or ask, quantity, limit price, market, and whether it still rests. Page with &#x60;before&#x60;.
[**listVaultMarketFollowFeed**](VaultMarketsAPI.md#listvaultmarketfollowfeed) | **GET** /v1/vault-markets/follows/feed | Public vault activity of the collectors you follow (buys, units sent in, sales, Hall loans), newest first, never a price. Filter with &#x60;kinds&#x60;; page with &#x60;before&#x60;.
[**listVaultMarketFollowFollowing**](VaultMarketsAPI.md#listvaultmarketfollowfollowing) | **GET** /v1/vault-markets/follows/following | The collectors you follow who have a public vault: what each shares and whether you copy-watch them.
[**listVaultMarketFollowLeaderboards**](VaultMarketsAPI.md#listvaultmarketfollowleaderboards) | **GET** /v1/vault-markets/follows/leaderboards | An opt-in return leaderboard (&#x60;period&#x60; 30d, 90d or 365d; &#x60;category&#x60; all or a category slug), ranked by risk-adjusted return from the book A/B marks. Percent and risk only: no dollars, no volume.
[**listVaultMarketFollowProfileActivity**](VaultMarketsAPI.md#listvaultmarketfollowprofileactivity) | **GET** /v1/vault-markets/follows/profiles/{handle}/activity | One collector public vault activity, newest first, never a price. 404 when their vault is not public.
[**listVaultMarketGifts**](VaultMarketsAPI.md#listvaultmarketgifts) | **GET** /v1/vault-markets/gifts | Gifts you sent and received, newest first, with their status.
[**listVaultMarketGradeToVault**](VaultMarketsAPI.md#listvaultmarketgradetovault) | **GET** /v1/vault-markets/grade-to-vault | Your Grade to Vault flows, newest first, each brought up to date: its step, the grading submission, the unit, the grade, the market for it, and the ask once listed. &#x60;live&#x3D;1&#x60; for those still going.
[**listVaultMarketGrading**](VaultMarketsAPI.md#listvaultmarketgrading) | **GET** /v1/vault-markets/grading | Your vault units sent to grading: where each card is in its run, and the grade once it is back.
[**listVaultMarketHallLenders**](VaultMarketsAPI.md#listvaultmarkethalllenders) | **GET** /v1/vault-markets/hall/lenders | The vault units lent to this week&#39;s Hall of Grails exhibition and on show now, in plinth order: the item (skuId, name, imageUrl, grade), the lender as the plate names them (a display name, or \&quot;a collector\&quot;), the plate lines and how many exhibitions the unit has stood in. meta.exhibition is the week (key, title, endsAt). Names no ids and no amounts.
[**listVaultMarketIndexCommitteeMinutes**](VaultMarketsAPI.md#listvaultmarketindexcommitteeminutes) | **GET** /v1/vault-markets/index-committee/minutes | Published Index Committee minutes, newest first: attendees (names and roles), quorum, agenda, minutes and decisions.
[**listVaultMarketIndexComplaints**](VaultMarketsAPI.md#listvaultmarketindexcomplaints) | **GET** /v1/vault-markets/index-complaints | Your complaints and their answers, newest first.
[**listVaultMarketIndexConstituents**](VaultMarketsAPI.md#listvaultmarketindexconstituents) | **GET** /v1/vault-markets/indexes/{slug}/constituents | The book keys in an index with their weight, move since the last close and contribution to the index&#39;s move (basis points).
[**listVaultMarketIndexConsultations**](VaultMarketsAPI.md#listvaultmarketindexconsultations) | **GET** /v1/vault-markets/index-consultations | Consultations on index method changes (open for at least 30 days), newest first. Filter by &#x60;status&#x60;.
[**listVaultMarketIndexEvents**](VaultMarketsAPI.md#listvaultmarketindexevents) | **GET** /v1/vault-markets/index-events | Every index event, newest first: add, delete, rebalance, method, correction, halt; each with when it was announced, when it takes effect, the detail and the reason. Filter by &#x60;kind&#x60;.
[**listVaultMarketIndexEventsBySlug**](VaultMarketsAPI.md#listvaultmarketindexeventsbyslug) | **GET** /v1/vault-markets/indexes/{slug}/events | One index&#39;s events, newest first.
[**listVaultMarketIndexJudgments**](VaultMarketsAPI.md#listvaultmarketindexjudgments) | **GET** /v1/vault-markets/index-judgments | The expert-judgment log: every Index Committee action (halt, resume, exclude a key, void a trade, restate, retire) with its written reason.
[**listVaultMarketIndexLevelSeries**](VaultMarketsAPI.md#listvaultmarketindexlevelseries) | **GET** /v1/vault-markets/indexes/{slug}/level-series | An index&#39;s published levels. &#x60;engine&#x3D;chain&#x60; (default): daily closes. &#x60;engine&#x3D;tpd|repeat_sales&#x60;: weekly (else monthly) model estimates with a 95% band and n; labelled, never a price. &#x60;series&#x3D;settlement&#x60; returns each value as first published (never restated). Below the data gate &#x60;data&#x60; is empty and &#x60;notice&#x60; explains.
[**listVaultMarketIndexLicenceMine**](VaultMarketsAPI.md#listvaultmarketindexlicencemine) | **GET** /v1/vault-markets/index-licence/mine | Your index feed licences (the indexes each covers, or all), as ops recorded them. No licence: the feed answers 403 not_a_licensee.
[**listVaultMarketIndexMembers**](VaultMarketsAPI.md#listvaultmarketindexmembers) | **GET** /v1/vault-markets/indexes/{slug}/members | The members of an index on a day (&#x60;asOf&#x60;, default today) with their weights, shares, moves and contributions; for a past day, the inputs stored with that day&#39;s close and each member&#39;s effective dates.
[**listVaultMarketIndexMovers**](VaultMarketsAPI.md#listvaultmarketindexmovers) | **GET** /v1/vault-markets/indexes/movers | The built-in indexes that moved most since their last daily close.
[**listVaultMarketIndexes**](VaultMarketsAPI.md#listvaultmarketindexes) | **GET** /v1/vault-markets/indexes | Indexes over book keys: per category, per top brand, the Crossly 50 and your own. Each with its level now (base 1000 at inception) and change since the last daily close.
[**listVaultMarketInstantExitHistory**](VaultMarketsAPI.md#listvaultmarketinstantexithistory) | **GET** /v1/vault-markets/instant-exit/history | Your Instant Exits, newest first: quoted price, mark, and whether it filled.
[**listVaultMarketInstantExitHoldings**](VaultMarketsAPI.md#listvaultmarketinstantexitholdings) | **GET** /v1/vault-markets/instant-exit/holdings | Instant Exit quotes for everything you hold in the vault, one per book key, with units held and which are free to sell.
[**listVaultMarketJointTrades**](VaultMarketsAPI.md#listvaultmarketjointtrades) | **GET** /v1/vault-markets/joint/{id}/trades | The joint vault trades, newest first: side, book key, limit, who started it, whose account the order sits on, and the order standing on the book.
[**listVaultMarketLargeTraderReports**](VaultMarketsAPI.md#listvaultmarketlargetraderreports) | **GET** /v1/vault-markets/large-trader-reports | Your large-trader reports (with any linked accounts, as one party): due first, then filed, then cleared in the last 90 days. Each has &#x60;action&#x60;: file | amend | refile | none.
[**listVaultMarketLendingStatements**](VaultMarketsAPI.md#listvaultmarketlendingstatements) | **GET** /v1/vault-markets/lending/statements | The days you have stored collateral statements for, newest first, with their summary.
[**listVaultMarketLoans**](VaultMarketsAPI.md#listvaultmarketloans) | **GET** /v1/vault-markets/loans | Units you lent: rate, fees earned, recall due.
[**listVaultMarketLocateMine**](VaultMarketsAPI.md#listvaultmarketlocatemine) | **GET** /v1/vault-markets/locates/mine | Your locates, newest first (held / used / released / expired).
[**listVaultMarketMidpoint**](VaultMarketsAPI.md#listvaultmarketmidpoint) | **GET** /v1/vault-markets/midpoint | Your midpoint block orders.
[**listVaultMarketMovers**](VaultMarketsAPI.md#listvaultmarketmovers) | **GET** /v1/vault-markets/movers | Vault items with the biggest 24 h moves in their market price (from the order book), with units in the vault.
[**listVaultMarketNavHistory**](VaultMarketsAPI.md#listvaultmarketnavhistory) | **GET** /v1/vault-markets/nav/history | Daily NAV snapshots (mark, bid, liquidation, Level 2 / Level 3).
[**listVaultMarketOffers**](VaultMarketsAPI.md#listvaultmarketoffers) | **GET** /v1/vault-markets/offers | The offers inbox: for each book key you hold, the best bid from someone else, units at it, the top bid levels, the mark, and your alert.
[**listVaultMarketOpening**](VaultMarketsAPI.md#listvaultmarketopening) | **GET** /v1/vault-markets/opening | Keys opening soon on the vault book (and just opened): units on the shelf, dealers quoting, the waitlist, the mark when the book has one, and your place.
[**listVaultMarketOracleHistory**](VaultMarketsAPI.md#listvaultmarketoraclehistory) | **GET** /v1/vault-markets/oracle/{slug}/history | Recent publish attempts for an index over 30 days, newest first: published, skipped (with the reason: too few items priced, stale marks, confidence too wide...) or failed (with the error). Filter with &#x60;status&#x60;, cap with &#x60;limit&#x60; (default 100).
[**listVaultMarketP2pAuctions**](VaultMarketsAPI.md#listvaultmarketp2pauctions) | **GET** /v1/vault-markets/p2p/auctions | Running refinancing auctions, soonest to end first: lenders calls (&#x60;auction&#x60;) and borrowers looking for a cheaper lender (&#x60;refiAuction&#x60;). The payoff now, the rate a new lender gets now, when it ends, and the item.
[**listVaultMarketP2pLoans**](VaultMarketsAPI.md#listvaultmarketp2ploans) | **GET** /v1/vault-markets/p2p/loans | Your P2P loans as borrower and/or lender (&#x60;role&#x60;), live by default (&#x60;status&#x60;): what is owed now, daily interest, the refinancing auction when called, and the item mark for information only (it never triggers anything).
[**listVaultMarketP2pOfferMine**](VaultMarketsAPI.md#listvaultmarketp2poffermine) | **GET** /v1/vault-markets/p2p/offers/mine | Your P2P loan offers, newest first, with how many loans each has funded.
[**listVaultMarketP2pOffers**](VaultMarketsAPI.md#listvaultmarketp2poffers) | **GET** /v1/vault-markets/p2p/offers | The open P2P loan offers book, lowest rate first: cents offered per loan, APR (bps), loans left, and the item (book key) or unit each lends against. &#x60;bookKey&#x60; narrows to one item. Lender identities are never shown.
[**listVaultMarketP2pUnits**](VaultMarketsAPI.md#listvaultmarketp2punits) | **GET** /v1/vault-markets/p2p/units | Your vault units for P2P borrowing: whether each can be pledged now (and why not), the best offers covering it, and its loan when it has one.
[**listVaultMarketPaperFills**](VaultMarketsAPI.md#listvaultmarketpaperfills) | **GET** /v1/vault-markets/paper/fills | Your paper fills since your last reset, newest first: price, simulated fee, taker or maker, and whether a visible real order (book) or a real trade (tape) filled it. Play money only.
[**listVaultMarketPaperLeaderboard**](VaultMarketsAPI.md#listvaultmarketpaperleaderboard) | **GET** /v1/vault-markets/paper/leaderboard | The weekly paper trading leaderboard (opt-in, display names only): best return on play equity this week (or a past &#x60;week&#x60;, its Monday as YYYY-MM-DD), with your own line. Nothing is won or paid.
[**listVaultMarketPaperMissions**](VaultMarketsAPI.md#listvaultmarketpapermissions) | **GET** /v1/vault-markets/paper/missions | Your paper-trading missions (play money only): each mission with what to do, your count toward its target, whether it is done and when, plus a suggested market for the \&quot;Read the mark\&quot; mission. Progress is observed by the server from your paper orders and fills, price watches, set goals and graded mark checks. Missions earn world quest progress and cosmetic pins, never money.
[**listVaultMarketPaperOrders**](VaultMarketsAPI.md#listvaultmarketpaperorders) | **GET** /v1/vault-markets/paper/orders | Your paper orders since your last reset, newest first: working, done (filled, cancelled, expired) or all. Play money only.
[**listVaultMarketPartnerAccruals**](VaultMarketsAPI.md#listvaultmarketpartneraccruals) | **GET** /v1/vault-markets/partners/accruals | Your partner fee shares, newest first: accrued on a unit&#39;s first sale, paid in Bucks once the sale is final, void if it was refunded.
[**listVaultMarketPoolStakes**](VaultMarketsAPI.md#listvaultmarketpoolstakes) | **GET** /v1/vault-markets/pool/stakes | Your stakes in the market pool and what each redeems for now.
[**listVaultMarketPortfolioMarginHistory**](VaultMarketsAPI.md#listvaultmarketportfoliomarginhistory) | **GET** /v1/vault-markets/portfolio-margin/history | The 5-minute portfolio margin recalculations for a firm sub-account over the last &#x60;hours&#x60; (default 24, at most 720), newest first: equity, requirement, excess, scenario and floor figures, gross and state.
[**listVaultMarketPositionUnits**](VaultMarketsAPI.md#listvaultmarketpositionunits) | **GET** /v1/vault-markets/positions/{id}/units | The vault units of one of your positions that you hold (a leveraged long&#39;s collateral), each with its story link.
[**listVaultMarketPositions**](VaultMarketsAPI.md#listvaultmarketpositions) | **GET** /v1/vault-markets/positions | Your positions, live (default) or closed.
[**listVaultMarketPositionsRisk**](VaultMarketsAPI.md#listvaultmarketpositionsrisk) | **GET** /v1/vault-markets/positions-risk | For each live position: its tier, health, margin state, the mark at which it is called and the mark at which it is liquidated, and the distance to it.
[**listVaultMarketPriceWidgets**](VaultMarketsAPI.md#listvaultmarketpricewidgets) | **GET** /v1/vault-markets/price-widgets | Your price widgets, newest first, each with its iframe and script-tag snippets. &#x60;meta.codes&#x60; lists your affiliate codes a widget can link through; &#x60;meta.max&#x60; is the cap on live widgets.
[**listVaultMarketProCandles**](VaultMarketsAPI.md#listvaultmarketprocandles) | **GET** /v1/vault-markets/pro/candles | OHLCV candles (1m, 5m, 15m, 1h, 4h, 1d) from the trades on a book key.
[**listVaultMarketProEvents**](VaultMarketsAPI.md#listvaultmarketproevents) | **GET** /v1/vault-markets/pro/events | Your order event log after a sequence number (new, leg, fill, replaced, cancelled, expired, done): a replayable drop copy.
[**listVaultMarketProLinks**](VaultMarketsAPI.md#listvaultmarketprolinks) | **GET** /v1/vault-markets/pro/links | Your linked orders (brackets, OCO pairs, trailing stops, position exits): live (default) or done.
[**listVaultMarketProOrders**](VaultMarketsAPI.md#listvaultmarketproorders) | **GET** /v1/vault-markets/pro/orders | Your orders: open (default) or done, optionally on one book key, or only those booked to one sub-account (&#x60;subaccountId&#x60;).
[**listVaultMarketProQuotes**](VaultMarketsAPI.md#listvaultmarketproquotes) | **GET** /v1/vault-markets/pro/quotes | Your live quotes.
[**listVaultMarketProRewards**](VaultMarketsAPI.md#listvaultmarketprorewards) | **GET** /v1/vault-markets/pro/rewards | Your daily market-maker liquidity rewards (paid in CBX).
[**listVaultMarketProTape**](VaultMarketsAPI.md#listvaultmarketprotape) | **GET** /v1/vault-markets/pro/tape | The latest trades on a book key, newest first, with which side made and which took.
[**listVaultMarketProofOfReserveLeaves**](VaultMarketsAPI.md#listvaultmarketproofofreserveleaves) | **GET** /v1/vault-markets/proof-of-reserves/{day}/leaves | One day&#39;s leaf hashes in tree order, a page at a time: enough to recount the units and rebuild the root yourself. Leaves are salted, so they name no owner.
[**listVaultMarketRecurring**](VaultMarketsAPI.md#listvaultmarketrecurring) | **GET** /v1/vault-markets/recurring | Your recurring buys: key, schedule, price cap, payment, auto-lend, next run.
[**listVaultMarketRecurringRuns**](VaultMarketsAPI.md#listvaultmarketrecurringruns) | **GET** /v1/vault-markets/recurring/{id}/runs | One recurring buy&#39;s runs: filled, skipped (with the reason, e.g. the price was over the cap) or failed.
[**listVaultMarketRecurringRuns2**](VaultMarketsAPI.md#listvaultmarketrecurringruns2) | **GET** /v1/vault-markets/recurring-runs | Every run of all your recurring buys, newest first.
[**listVaultMarketRfq**](VaultMarketsAPI.md#listvaultmarketrfq) | **GET** /v1/vault-markets/rfq | Your quote requests, newest first.
[**listVaultMarketRfqInbox**](VaultMarketsAPI.md#listvaultmarketrfqinbox) | **GET** /v1/vault-markets/rfq/inbox | Open quote requests you were sent (as a dealer, DMM, LP or holder), with your live answer.
[**listVaultMarketRfqOpen**](VaultMarketsAPI.md#listvaultmarketrfqopen) | **GET** /v1/vault-markets/rfq/open | Open quote requests on one key (all-to-all: anyone with ID may answer). Anonymous.
[**listVaultMarketSetGoalBaskets**](VaultMarketsAPI.md#listvaultmarketsetgoalbaskets) | **GET** /v1/vault-markets/set-goals/{id}/baskets | A set goal basket bids, newest first, each with its budget, what it committed and spent, and every leg (piece, book key, limit, pro order id, status).
[**listVaultMarketSetGoalSets**](VaultMarketsAPI.md#listvaultmarketsetgoalsets) | **GET** /v1/vault-markets/set-goals/sets | Sets to start a goal on. With q (2+ characters): a word-start search of every catalogue set. Without: the sets you hold pieces of in the vault, then the collections you are building. Each with your live goal on it, if any.
[**listVaultMarketSetGoals**](VaultMarketsAPI.md#listvaultmarketsetgoals) | **GET** /v1/vault-markets/set-goals | Your set goals: the set, the target a piece must meet, pieces held of the total (from your vault), and the working basket bid.
[**listVaultMarketShareCards**](VaultMarketsAPI.md#listvaultmarketsharecards) | **GET** /v1/vault-markets/share-cards | Your share cards (not taken down), each as the public sees it.
[**listVaultMarketSupplyDeposits**](VaultMarketsAPI.md#listvaultmarketsupplydeposits) | **GET** /v1/vault-markets/supply/deposits | Your units sent to the vault, newest first, each with its state and its key&#39;s Instant Exit line (\&quot;Instant Exit now: $X (N% of mark)\&quot; or \&quot;No market yet\&quot;). Filter with &#x60;inventoryItemIds&#x60; (comma-separated).
[**listVaultMarketSupplyInvites**](VaultMarketsAPI.md#listvaultmarketsupplyinvites) | **GET** /v1/vault-markets/supply/invites | Market Open invites to you as a dealer: keys Crossly is opening and asks you to quote.
[**listVaultMarketValuationStatements**](VaultMarketsAPI.md#listvaultmarketvaluationstatements) | **GET** /v1/vault-markets/valuation-statements | The insurance and appraisal statements you issued, newest first: purpose, date, units, total at the marks, hash and verify link.
[**listVaultMarketVaultSuggestions**](VaultMarketsAPI.md#listvaultmarketvaultsuggestions) | **GET** /v1/vault-markets/vault-suggestions | What to send to the vault: your inventory items whose book key has a liquid vault market (tier A, B or C), best first. Each has a score (0 to 100) and its reasons, the market (tier, mark and its quality, best bid, best vault ask, spread), Instant Exit now, your list price, days listed without selling, and the vault fee. &#x60;meta.summary&#x60; counts what was left out and why. Inform only; send with POST /api/v1/vault-markets/supply/send.
[**listVaultMarketWatchlist**](VaultMarketsAPI.md#listvaultmarketwatchlist) | **GET** /v1/vault-markets/watchlist | Your watched book keys with mark, 24 h and 7 d change, and the last 30 daily marks (sparkline).
[**listVaultMarketWidgetTokens**](VaultMarketsAPI.md#listvaultmarketwidgettokens) | **GET** /v1/vault-markets/widget/tokens | Your live home-screen widget tokens, one per phone: id, name (the phone), public prefix, created and last used. The secret is never returned again.
[**listVaultMarketWorldCohosts**](VaultMarketsAPI.md#listvaultmarketworldcohosts) | **GET** /v1/vault-markets/world/cohosts | Market Open launch shows a verified creator co-hosts that are on now or opening soon: the key, its phase, the show, the creator (named only while their vault profile is public), their room link and, when the creator is in the creator programme, the disclosure that they may earn a share of the fee Crossly keeps. Never a prompt to trade.
[**listVaultMarketWorldCreatorRooms**](VaultMarketsAPI.md#listvaultmarketworldcreatorrooms) | **GET** /v1/vault-markets/world/creator-rooms | Verified creators whose public vault shelf is a world room: title, the creator, the room link and the disclosure. Rooms show each market share of the shelf, never amounts.
[**listVaultMarketWorldMarketOpen**](VaultMarketsAPI.md#listvaultmarketworldmarketopen) | **GET** /v1/vault-markets/world/market-open | Market Open events in the Crossly World Commons: keys opening soon and those that opened in the last few hours, live first then soonest, each with its board line, units on the shelf, dealers quoting and the launch show when there is one. Never a prompt to trade.
[**listVaultReceiptTokenWallets**](VaultMarketsAPI.md#listvaultreceipttokenwallets) | **GET** /v1/vault/receipt-tokens/wallets | Your verified Solana wallets and whether each is on the receipt-token allow-list (receipt tokens move only between allow-listed wallets). meta.state is the gate.
[**listVaultReceiptTokens**](VaultMarketsAPI.md#listvaultreceipttokens) | **GET** /v1/vault/receipt-tokens | Your vault units with their warehouse receipt and receipt-token state (not exported, waiting for a signature, in a wallet, frozen, redeemed), whether each can be exported now and why not. meta.state is the gate (open, missing envs, program id, authority, terms version, cluster); meta.history is your last 50 exports.
[**listVaultReceipts**](VaultMarketsAPI.md#listvaultreceipts) | **GET** /v1/vault/receipts | Your warehouse receipts (documents of title for your vault units), live first. meta.receipts says whether receipts are registered (VAULT_WAREHOUSE_ISSUER) and their terms version.
[**listVaultUnitList**](VaultMarketsAPI.md#listvaultunitlist) | **GET** /v1/vault/unit-list | The published unit list (bar-list equivalent): every unit on a vault shelf with its warehouse receipt number (when receipts are registered), book key, shelf location code, insured value, status, pledged / on-loan flags and a per-receipt hashed holder (never a name or id). Filter with &#x60;bookKey&#x60;; pages with &#x60;page&#x60; / &#x60;limit&#x60;.
[**updateVaultMarketAlertPref**](VaultMarketsAPI.md#updatevaultmarketalertpref) | **PUT** /v1/vault-markets/alert-prefs | Change vault alert settings: &#x60;matrix&#x60; ({ kind: { channel: true|false } }, merged onto what is set), &#x60;quietHours&#x60; ({ start: \&quot;HH:MM\&quot;, end: \&quot;HH:MM\&quot;, tz } or null to clear) and &#x60;telegram&#x60; (the Telegram master switch). Locked switches are ignored. Returns the new settings.
[**updateVaultMarketBlockAllocation**](VaultMarketsAPI.md#updatevaultmarketblockallocation) | **PUT** /v1/vault-markets/blocks/{orderId}/allocation | Post-trade allocation: set or replace the plan for a buy you placed for one of the entity&#39;s sub-accounts (that sub-account leads). Refused once any share has moved.
[**updateVaultMarketChannel**](VaultMarketsAPI.md#updatevaultmarketchannel) | **PUT** /v1/vault-markets/channels | Change the switches: &#x60;telegramAlerts&#x60;, &#x60;telegramDigest&#x60;, &#x60;pushCapPerDay&#x60; (0 to 20). Margin calls and recalls are never capped. Returns the new view.
[**updateVaultMarketDealerBand**](VaultMarketsAPI.md#updatevaultmarketdealerband) | **PUT** /v1/vault-markets/dealer/bands | Commit to an Instant Exit band on a key: a standing bid for &#x60;units&#x60; kept at &#x60;bandBps&#x60; of the mark, never above &#x60;maxPriceCents&#x60;, re-quoted as the mark moves.
[**updateVaultMarketDealerPool**](VaultMarketsAPI.md#updatevaultmarketdealerpool) | **PATCH** /v1/vault-markets/dealer/pools/{id} | Change a curve pool: spot, step, fee, levels, units, buy budget, floor, ceiling, or pause / resume. Re-quoted at once.
[**updateVaultMarketEntityMember**](VaultMarketsAPI.md#updatevaultmarketentitymember) | **PATCH** /v1/vault-markets/entities/{id}/members/{memberId} | Admin: change a member&#39;s role, limits or sub-accounts. The last admin cannot be demoted.
[**updateVaultMarketEntitySubaccountLimit**](VaultMarketsAPI.md#updatevaultmarketentitysubaccountlimit) | **PUT** /v1/vault-markets/entities/{id}/subaccounts/{subId}/limits | Admin: set a sub-account&#39;s limits (per-order notional, units per key, gross, net, leverage), held to the entity&#39;s caps. &#x60;limits: null&#x60; clears them.
[**updateVaultMarketEntityUsdElection**](VaultMarketsAPI.md#updatevaultmarketentityusdelection) | **PUT** /v1/vault-markets/entities/{id}/usd-election | Admin: elect USD for the entity (&#x60;usdOnly&#x60;). Its sub-accounts then post collateral in USD only and pay every fee in USD, and any CBX reward paid to one of them is converted to USD by the custodian in that account. Audited; it can be turned off again.
[**updateVaultMarketFollowCopyWatch**](VaultMarketsAPI.md#updatevaultmarketfollowcopywatch) | **PUT** /v1/vault-markets/follows/copy-watch/{handle} | Copy-watch a collector who shares bids and asks: you get an alert when they rest a new one. It never places an order for you.
[**updateVaultMarketFollowSharing**](VaultMarketsAPI.md#updatevaultmarketfollowsharing) | **PUT** /v1/vault-markets/follows/sharing | Turn sharing switches on or off (&#x60;isPublic&#x60;, &#x60;showBuys&#x60;, &#x60;deposits&#x60;, &#x60;sales&#x60;, &#x60;hallLoans&#x60;, &#x60;orders&#x60;, &#x60;leaderboard&#x60;). A switch shows only what happens after it goes on; all but the profile itself need the profile public.
[**updateVaultMarketHomeUnit**](VaultMarketsAPI.md#updatevaultmarkethomeunit) | **PUT** /v1/vault-markets/home/units | Show exactly these vault units in your Crossly World home: { units: [{ vaultItemId, visitors }] }. Units left out come out of their cases; units already standing stay where they are; new ones go into a free display-case or shelf slot, else a glass case of their own along a wall. visitors: true lets people who may enter your home see that unit (default false: only you). Returns placed, unplaced (no free case: the home is full), refused (with why) and the desk. Display only: nothing moves.
[**updateVaultMarketIndex**](VaultMarketsAPI.md#updatevaultmarketindex) | **PATCH** /v1/vault-markets/indexes/{slug} | Rename, re-weight, share or change the keys of an index of your own; its level carries on.
[**updateVaultMarketLendingElection**](VaultMarketsAPI.md#updatevaultmarketlendingelection) | **PUT** /v1/vault-markets/lending/election | Change your lender election (applies to loans opened after the change). Needs lending.
[**updateVaultMarketMmMmp**](VaultMarketsAPI.md#updatevaultmarketmmmmp) | **PUT** /v1/vault-markets/mm/mmp | Set market-maker protection: N units or $X filled on your quotes within T seconds pulls every quote and freezes quoting for a set time.
[**updateVaultMarketMode**](VaultMarketsAPI.md#updatevaultmarketmode) | **PUT** /v1/vault-markets/mode | Choose your Vault Markets mode: &#x60;mode&#x60; simple or pro. Remembered for you on the web and in the app. A display preference only: it places nothing and moves no money.
[**updateVaultMarketOfferAlert**](VaultMarketsAPI.md#updatevaultmarketofferalert) | **PUT** /v1/vault-markets/offers/alert | Set (or clear with null) the bid price that should always notify you on a key you hold, and mute or unmute offer notices on it.
[**updateVaultMarketPaperLeaderboard**](VaultMarketsAPI.md#updatevaultmarketpaperleaderboard) | **PUT** /v1/vault-markets/paper/leaderboard | Join or leave the weekly paper leaderboard. Joining needs a display name (2 to 24 letters, numbers, spaces, dots, dashes or underscores), never your real name. Returns &#x60;{ optIn, displayName }&#x60;.
[**updateVaultMarketPositionExit**](VaultMarketsAPI.md#updatevaultmarketpositionexit) | **PUT** /v1/vault-markets/positions/{id}/exits | Set a position&#39;s take-profit / stop-loss: a long is closed, a short covered, when the last trade reaches one. Both null clears them.
[**updateVaultMarketPriceWidget**](VaultMarketsAPI.md#updatevaultmarketpricewidget) | **PATCH** /v1/vault-markets/price-widgets/{id} | Change a widget: name, range, layout, theme, affiliate code (null for none) or allowed sites. The market or index it shows never changes: make a new widget for another.
[**updateVaultMarketProfile**](VaultMarketsAPI.md#updatevaultmarketprofile) | **PUT** /v1/vault-markets/profile | Turn your public vault profile on or off (&#x60;isPublic&#x60;) and whether followers see your new buys (&#x60;showBuys&#x60;). It shows weights by market, never dollars.
[**updateVaultMarketRecurring**](VaultMarketsAPI.md#updatevaultmarketrecurring) | **PATCH** /v1/vault-markets/recurring/{id} | Change a recurring buy&#39;s schedule, caps, cards or auto-lend, or pause / resume it.
[**updateVaultMarketSetGoal**](VaultMarketsAPI.md#updatevaultmarketsetgoal) | **PATCH** /v1/vault-markets/set-goals/{id} | Change what a piece must be to count (condition, grade mode, grade). Refused while a basket bid works: cancel it first.
[**updateVaultMarketShareCard**](VaultMarketsAPI.md#updatevaultmarketsharecard) | **PATCH** /v1/vault-markets/share-cards/{id} | Show or hide the dollar amounts on one of your share cards (&#x60;showAmounts&#x60;).
[**updateVaultMarketSupplyDeposit**](VaultMarketsAPI.md#updatevaultmarketsupplydeposit) | **PATCH** /v1/vault-markets/supply/deposits/{id} | Change a deposit&#39;s toggles: &#x60;autoListBps&#x60; (list at that share of the mark once stored; null &#x3D; do not) and &#x60;lendWhenIdle&#x60;.
[**updateVaultMarketSupplyRoundUp**](VaultMarketsAPI.md#updatevaultmarketsupplyroundup) | **PUT** /v1/vault-markets/supply/round-up | Set the round-up: &#x60;shareBps&#x60; (1%-50%) of each payout released to you adds to a budget; when it covers the cheapest vault unit on &#x60;bookKey&#x60;, one unit is bought with your saved card, never above the budget.
[**updateVaultMarketTodBeneficiary**](VaultMarketsAPI.md#updatevaultmarkettodbeneficiary) | **PUT** /v1/vault-markets/tod/beneficiaries | Replace your beneficiary list (keep an id to edit one): full name, contact (email or @username), relationship, and share in basis points; shares add up to 10000. Returns &#x60;{ beneficiaries, removed }&#x60;.
[**updateVaultMarketTodDesignation**](VaultMarketsAPI.md#updatevaultmarkettoddesignation) | **PUT** /v1/vault-markets/tod/designations | Leave one of your units to one beneficiary (beneficiaryId null clears it; the unit then follows the shares). Returns &#x60;{ vaultItemId, beneficiaryId }&#x60;.
[**updateVaultMarketWorldRoomVaultGate**](VaultMarketsAPI.md#updatevaultmarketworldroomvaultgate) | **PUT** /v1/vault-markets/world/rooms/{id}/vault-gate | Set the vault-holder door on your own room (its collection rooms follow): visitors must hold minValueCents (cents, at reliable A/B marks) and/or minUnits units in the Crossly vault, mode any (either) or all (both), optionally only one product (scope kind product, ref the catalogue product id), bullion family (bullion, the family slug) or category (category, the slug). Send null to open it again. Returns &#x60;{ gate }&#x60;. Moves no money.
[**updateVaultMarketWorldSpaceVaultGate**](VaultMarketsAPI.md#updatevaultmarketworldspacevaultgate) | **PUT** /v1/vault-markets/world/spaces/{slug}/vault-gate | Set the vault-holder door on a Space you host: the same rule as a room (minValueCents at reliable marks and/or minUnits, mode, optional scope). Send null to open it again. Returns &#x60;{ gate }&#x60;. Moves no money.


# **createVaultLend**
```swift
    open class func createVaultLend(id: String, completion: @escaping (_ data: CreateVaultLendResponse?, _ error: Error?) -> Void)
```

Turn lending on or off for a unit you own in the vault, optionally with your minimum borrow rate (APR in basis points). Returns `{ lendEnabled, minAprBps }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Turn lending on or off for a unit you own in the vault, optionally with your minimum borrow rate (APR in basis points). Returns `{ lendEnabled, minAprBps }`.
VaultMarketsAPI.createVaultLend(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultLendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAccount**
```swift
    open class func createVaultMarketAccount(completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Open your account at the custodian partner (once). Returns `{ status }`; the custodian verifies it before it is active.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open your account at the custodian partner (once). Returns `{ status }`; the custodian verifies it before it is active.
VaultMarketsAPI.createVaultMarketAccount() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAdminMark**
```swift
    open class func createVaultMarketAdminMark(completion: @escaping (_ data: CreateVaultMarketAdminMarkResponse?, _ error: Error?) -> Void)
```

Upload your fund administrator's prices (`administrator`, `marks: [{ bookKey, day, cents }]`). Shown beside Crossly's marks and labelled as yours; they never change a Crossly figure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Upload your fund administrator's prices (`administrator`, `marks: [{ bookKey, day, cents }]`). Shown beside Crossly's marks and labelled as yours; they never change a Crossly figure.
VaultMarketsAPI.createVaultMarketAdminMark() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketAdminMarkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAdvance**
```swift
    open class func createVaultMarketAdvance(completion: @escaping (_ data: GetVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

Take an advance against a vault unit that is listed for sale: paid into your custodian account, netted from the sale. Free for 60 days, then the pool rate. Needs a verified ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Take an advance against a vault unit that is listed for sale: paid into your custodian account, netted from the sale. Free for 60 days, then the pool rate. Needs a verified ID.
VaultMarketsAPI.createVaultMarketAdvance() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAdvanceRelist**
```swift
    open class func createVaultMarketAdvanceRelist(id: String, completion: @escaping (_ data: CreateVaultMarketAdvanceRelistResponse?, _ error: Error?) -> Void)
```

Relist an advance's unit at a new price (never so low its sale could not repay the advance).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Relist an advance's unit at a new price (never so low its sale could not repay the advance).
VaultMarketsAPI.createVaultMarketAdvanceRelist(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketAdvanceRelistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAgentDraftCancel**
```swift
    open class func createVaultMarketAgentDraftCancel(id: String, completion: @escaping (_ data: CreateVaultMarketAgentDraftCancelResponse?, _ error: Error?) -> Void)
```

Throw a drafted order away (only while it is still a draft). Returns { ok, draft }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Throw a drafted order away (only while it is still a draft). Returns { ok, draft }.
VaultMarketsAPI.createVaultMarketAgentDraftCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketAgentDraftCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAgentWatch**
```swift
    open class func createVaultMarketAgentWatch(completion: @escaping (_ data: CreateVaultMarketAgentWatchResponse?, _ error: Error?) -> Void)
```

Watch a book key: tell me once when its best bid, lowest ask, last trade or market price crosses a price (cents). Leave out direction for \"crosses\" (whichever way it has to move). Never trades. At most 50 live, each for 90 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Watch a book key: tell me once when its best bid, lowest ask, last trade or market price crosses a price (cents). Leave out direction for \"crosses\" (whichever way it has to move). Never trades. At most 50 live, each for 90 days.
VaultMarketsAPI.createVaultMarketAgentWatch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketAgentWatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAlert**
```swift
    open class func createVaultMarketAlert(completion: @escaping (_ data: ListVaultMarketAlertsItem?, _ error: Error?) -> Void)
```

Alert me when a key's market price goes above or below a price (fires once).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Alert me when a key's market price goes above or below a price (fires once).
VaultMarketsAPI.createVaultMarketAlert() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAlertsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAlertPrefTest**
```swift
    open class func createVaultMarketAlertPrefTest(completion: @escaping (_ data: CreateVaultMarketAlertPrefTestResponse?, _ error: Error?) -> Void)
```

Send yourself one test alert of a `kind` through your own switches. Returns `{ sent, kind, plan }`, where plan says per channel: send, off, quiet (held by quiet hours) or unavailable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Send yourself one test alert of a `kind` through your own switches. Returns `{ sent, kind, plan }`, where plan says per channel: send, off, quiet (held by quiet hours) or unavailable.
VaultMarketsAPI.createVaultMarketAlertPrefTest() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketAlertPrefTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAuctionLot**
```swift
    open class func createVaultMarketAuctionLot(completion: @escaping (_ data: CreateVaultMarketAuctionLotResponse?, _ error: Error?) -> Void)
```

Consign a stored, authenticated unit to the next weekly or premier event, with an optional opening price and reserve. The unit is held until the close. Returns `{ lotId, eventId, endsAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Consign a stored, authenticated unit to the next weekly or premier event, with an optional opening price and reserve. The unit is held until the close. Returns `{ lotId, eventId, endsAt }`.
VaultMarketsAPI.createVaultMarketAuctionLot() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketAuctionLotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAuctionLotBid**
```swift
    open class func createVaultMarketAuctionLotBid(id: String, completion: @escaping (_ data: CreateVaultMarketAuctionLotBidResponse?, _ error: Error?) -> Void)
```

Leave or raise your maximum on a lot; the system bids for you up to it. A bid in the last 2 minutes extends the lot by 2 minutes. The winner's saved card is charged at the close through the order book. ID needed above $10,000.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Leave or raise your maximum on a lot; the system bids for you up to it. A bid in the last 2 minutes extends the lot by 2 minutes. The winner's saved card is charged at the close through the order book. ID needed above $10,000.
VaultMarketsAPI.createVaultMarketAuctionLotBid(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketAuctionLotBidResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketAuctionLotWithdraw**
```swift
    open class func createVaultMarketAuctionLotWithdraw(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Withdraw your lot before any bid; the unit goes back on your shelf. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw your lot before any bid; the unit goes back on your shelf. Returns `{ ok }`.
VaultMarketsAPI.createVaultMarketAuctionLotWithdraw(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketBlock**
```swift
    open class func createVaultMarketBlock(completion: @escaping (_ data: ListVaultMarketBlocksItem?, _ error: Error?) -> Void)
```

Place a block buy for an entity: one order booked to the first sub-account in `plan` (it pays from its custodian account), split across every sub-account in the plan at the average price, fees included, once it is done and the custodian confirmed each payment. Each share's cash moves between the entity's own custodian accounts; its units move only after that settles. Every sub-account must be one you may trade, and its share must fit its limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Place a block buy for an entity: one order booked to the first sub-account in `plan` (it pays from its custodian account), split across every sub-account in the plan at the average price, fees included, once it is done and the custodian confirmed each payment. Each share's cash moves between the entity's own custodian accounts; its units move only after that settles. Every sub-account must be one you may trade, and its share must fit its limits.
VaultMarketsAPI.createVaultMarketBlock() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBlocksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketBlockAllocate**
```swift
    open class func createVaultMarketBlockAllocate(orderId: String, completion: @escaping (_ data: CreateVaultMarketBlockAllocateResponse?, _ error: Error?) -> Void)
```

Allocate a done block now (the keeper does it too). Returns `{ outcome, block }`: allocated, waiting (a payment or transfer is not settled yet), nothing_filled or none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let orderId = "orderId_example" // String | 

// Allocate a done block now (the keeper does it too). Returns `{ outcome, block }`: allocated, waiting (a payment or transfer is not settled yet), nothing_filled or none.
VaultMarketsAPI.createVaultMarketBlockAllocate(orderId: orderId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String** |  | 

### Return type

**CreateVaultMarketBlockAllocateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketBullionFamilyPeg**
```swift
    open class func createVaultMarketBullionFamilyPeg(completion: @escaping (_ data: ListVaultMarketBullionFamilyPegsItem?, _ error: Error?) -> Void)
```

Set a family-wide spot-pegged quote: one \"any 1 oz gold coin\" quote resting on each product book of a bullion family at the chosen condition (DS, VNDS or Used). When any leg fills it comes off the others and goes back on only for what is left; two fills at once are settled one at a time against what is left. A bid pays from your custodian account. Replaces your live family quote on the same family, condition and side. ID required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set a family-wide spot-pegged quote: one \"any 1 oz gold coin\" quote resting on each product book of a bullion family at the chosen condition (DS, VNDS or Used). When any leg fills it comes off the others and goes back on only for what is left; two fills at once are settled one at a time against what is left. A bid pays from your custodian account. Replaces your live family quote on the same family, condition and side. ID required.
VaultMarketsAPI.createVaultMarketBullionFamilyPeg() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBullionFamilyPegsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketBullionPeg**
```swift
    open class func createVaultMarketBullionPeg(completion: @escaping (_ data: ListVaultMarketBullionPegsItem?, _ error: Error?) -> Void)
```

Set a spot-pegged maker quote on a bullion book key: \"spot plus or minus N cents\" or \"plus or minus N basis points\", with an optional floor and cap. It rests as a pro limit order re-priced every spot tick and is pulled while spot is stale. Replaces your live quote on the same key and side. ID required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set a spot-pegged maker quote on a bullion book key: \"spot plus or minus N cents\" or \"plus or minus N basis points\", with an optional floor and cap. It rests as a pro limit order re-priced every spot tick and is pulled while spot is stale. Replaces your live quote on the same key and side. ID required.
VaultMarketsAPI.createVaultMarketBullionPeg() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBullionPegsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketCollectionWorthWatch**
```swift
    open class func createVaultMarketCollectionWorthWatch(completion: @escaping (_ data: CreateVaultMarketCollectionWorthWatchResponse?, _ error: Error?) -> Void)
```

Watch every collection item that sits on a vault book key (up to the watchlist cap). Returns `{ watched, skipped }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Watch every collection item that sits on a vault book key (up to the watchlist cap). Returns `{ watched, skipped }`.
VaultMarketsAPI.createVaultMarketCollectionWorthWatch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketCollectionWorthWatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketCreatorAttribution**
```swift
    open class func createVaultMarketCreatorAttribution(completion: @escaping (_ data: CreateVaultMarketCreatorAttributionResponse?, _ error: Error?) -> Void)
```

Use a creator code: the creator earns a capped share of the fee Crossly keeps on your Vault Markets trades for a limited window (paid by Crossly, never by you). Only for people new to Vault Markets, once, and never your own code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Use a creator code: the creator earns a capped share of the fee Crossly keeps on your Vault Markets trades for a limited window (paid by Crossly, never by you). Only for people new to Vault Markets, once, and never your own code.
VaultMarketsAPI.createVaultMarketCreatorAttribution() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketCreatorAttributionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketCreatorCohostInviteRespond**
```swift
    open class func createVaultMarketCreatorCohostInviteRespond(id: String, completion: @escaping (_ data: CreateVaultMarketCreatorCohostInviteRespondResponse?, _ error: Error?) -> Void)
```

For creators: accept or decline an invite to co-host a Market Open launch show (`accept` true or false). Accepting needs your vault room verified and adds you to the show as a co-host; your room and the Commons then say you co-host it, with the creator-programme disclosure when it applies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// For creators: accept or decline an invite to co-host a Market Open launch show (`accept` true or false). Accepting needs your vault room verified and adds you to the show as a co-host; your room and the Commons then say you co-host it, with the creator-programme disclosure when it applies.
VaultMarketsAPI.createVaultMarketCreatorCohostInviteRespond(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketCreatorCohostInviteRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketCreditRepay**
```swift
    open class func createVaultMarketCreditRepay(id: String, completion: @escaping (_ data: CreateVaultMarketCreditRepayResponse?, _ error: Error?) -> Void)
```

Repay from your custodian account, interest first. Omit `amountCents` to repay everything; pass `requestId` to make a retry safe. Repaid in full, the items are free.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Repay from your custodian account, interest first. Omit `amountCents` to repay everything; pass `requestId` to make a retry safe. Repaid in full, the items are free.
VaultMarketsAPI.createVaultMarketCreditRepay(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketCreditRepayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDcmLink**
```swift
    open class func createVaultMarketDcmLink(completion: @escaping (_ data: CreateVaultMarketDcmLinkResponse?, _ error: Error?) -> Void)
```

Link a partner exchange account to your account (or to a firm sub-account you manage, `subaccountId`) so Crossly can show its positions: `accountRef` (the account id there) and `code` (the one-time link code it gave you). The partner must confirm the code; the code is never stored. Read-only: Crossly never trades on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Link a partner exchange account to your account (or to a firm sub-account you manage, `subaccountId`) so Crossly can show its positions: `accountRef` (the account id there) and `code` (the one-time link code it gave you). The partner must confirm the code; the code is never stored. Read-only: Crossly never trades on it.
VaultMarketsAPI.createVaultMarketDcmLink() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDcmLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDcmUnlink**
```swift
    open class func createVaultMarketDcmUnlink(completion: @escaping (_ data: CreateVaultMarketDcmUnlinkResponse?, _ error: Error?) -> Void)
```

Unlink the partner exchange account from your account (or the firm sub-account `subaccountId`): Crossly stops reading it and its hedges leave portfolio margin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Unlink the partner exchange account from your account (or the firm sub-account `subaccountId`): Crossly stops reading it and its hedges leave portfolio margin.
VaultMarketsAPI.createVaultMarketDcmUnlink() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDcmUnlinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDealerApply**
```swift
    open class func createVaultMarketDealerApply(completion: @escaping (_ data: CreateVaultMarketDealerApplyResponse?, _ error: Error?) -> Void)
```

Apply to be a dealer (ID check first). Ops review; approved dealers get raised limits and their bids show as dealer bids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Apply to be a dealer (ID check first). Ops review; approved dealers get raised limits and their bids show as dealer bids.
VaultMarketsAPI.createVaultMarketDealerApply() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDealerApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDealerBid**
```swift
    open class func createVaultMarketDealerBid(completion: @escaping (_ data: CreateVaultMarketProOrderResponse?, _ error: Error?) -> Void)
```

Place a standing dealer bid: a resting GTC/GTD limit buy, flagged as a dealer bid. Approved dealers only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Place a standing dealer bid: a resting GTC/GTD limit buy, flagged as a dealer bid. Approved dealers only.
VaultMarketsAPI.createVaultMarketDealerBid() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDealerPool**
```swift
    open class func createVaultMarketDealerPool(completion: @escaping (_ data: ListVaultMarketDealerPoolsItem?, _ error: Error?) -> Void)
```

Open a curve pool on a key (approved dealers, ID checked): linear (delta in cents) or exponential (delta in bps), spot, fee, levels per side, units it may sell, and a buy budget from your custodian account. Its ladder goes up at once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open a curve pool on a key (approved dealers, ID checked): linear (delta in cents) or exponential (delta in bps), spot, fee, levels per side, units it may sell, and a buy budget from your custodian account. Its ladder goes up at once.
VaultMarketsAPI.createVaultMarketDealerPool() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerPoolsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDealerPoolClose**
```swift
    open class func createVaultMarketDealerPoolClose(id: String, completion: @escaping (_ data: ListVaultMarketDealerPoolsItem?, _ error: Error?) -> Void)
```

Close a curve pool: its legs come off the book; what filled stays filled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close a curve pool: its legs come off the book; what filled stays filled.
VaultMarketsAPI.createVaultMarketDealerPoolClose(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketDealerPoolsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDealerPoolPreview**
```swift
    open class func createVaultMarketDealerPoolPreview(completion: @escaping (_ data: CreateVaultMarketDealerPoolPreviewResponse?, _ error: Error?) -> Void)
```

The bids and asks a set of curve settings would show, and why each side stops where it does. Places nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The bids and asks a set of curve settings would show, and why each side stops where it does. Places nothing.
VaultMarketsAPI.createVaultMarketDealerPoolPreview() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDealerPoolPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDeposit**
```swift
    open class func createVaultMarketDeposit(completion: @escaping (_ data: CreateVaultMarketDepositResponse?, _ error: Error?) -> Void)
```

Open a ship-in deposit for an ungraded catalogue item (`skuId`, `variantId`, `condition` DS / VNDS / Used). It is inbound until the vault receives and checks it, then stored in your name. Returns `{ vaultItem: { id, status } }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open a ship-in deposit for an ungraded catalogue item (`skuId`, `variantId`, `condition` DS / VNDS / Used). It is inbound until the vault receives and checks it, then stored in your name. Returns `{ vaultItem: { id, status } }`.
VaultMarketsAPI.createVaultMarketDeposit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDepositResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketDonation**
```swift
    open class func createVaultMarketDonation(completion: @escaping (_ data: CreateVaultMarketDonationResponse?, _ error: Error?) -> Void)
```

Give a unit to Crossly Cares (once the charity can receive; otherwise its gate message). Returns `{ id, markCents }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Give a unit to Crossly Cares (once the charity can receive; otherwise its gate message). Returns `{ id, markCents }`.
VaultMarketsAPI.createVaultMarketDonation() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketDonationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntity**
```swift
    open class func createVaultMarketEntity(completion: @escaping (_ data: CreateVaultMarketEntityResponse?, _ error: Error?) -> Void)
```

Open an entity account: you become its admin and the custodian partner starts KYB (its own flow; Crossly keeps only its reference). Needs a verified ID and the custodian (503 names what is missing).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open an entity account: you become its admin and the custodian partner starts KYB (its own flow; Crossly keeps only its reference). Needs a verified ID and the custodian (503 names what is missing).
VaultMarketsAPI.createVaultMarketEntity() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketEntityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityEcp**
```swift
    open class func createVaultMarketEntityEcp(id: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: record the entity's attestation that it is an eligible contract participant. Raising its caps is still an ops decision.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Admin: record the entity's attestation that it is an eligible contract participant. Raising its caps is still an ops decision.
VaultMarketsAPI.createVaultMarketEntityEcp(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityHalt**
```swift
    open class func createVaultMarketEntityHalt(id: String, completion: @escaping (_ data: CreateVaultMarketEntityHaltResponse?, _ error: Error?) -> Void)
```

Admin or risk: the firm kill switch. Halts the entity (no `subaccountId`) or one sub-account: open orders on it are cancelled and no new ones are placed until cleared.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Admin or risk: the firm kill switch. Halts the entity (no `subaccountId`) or one sub-account: open orders on it are cancelled and no new ones are placed until cleared.
VaultMarketsAPI.createVaultMarketEntityHalt(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketEntityHaltResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityHaltClear**
```swift
    open class func createVaultMarketEntityHaltClear(id: String, haltId: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin or risk: lift a firm halt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let haltId = "haltId_example" // String | 

// Admin or risk: lift a firm halt.
VaultMarketsAPI.createVaultMarketEntityHaltClear(id: id, haltId: haltId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **haltId** | **String** |  | 

### Return type

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityInvitation**
```swift
    open class func createVaultMarketEntityInvitation(id: String, completion: @escaping (_ data: GetVaultMarketEntityResponse?, _ error: Error?) -> Void)
```

Accept or decline an invitation (`accept`). Trading, admin and risk roles need a verified ID to accept.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept or decline an invitation (`accept`). Trading, admin and risk roles need a verified ID to accept.
VaultMarketsAPI.createVaultMarketEntityInvitation(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityKyb**
```swift
    open class func createVaultMarketEntityKyb(id: String, completion: @escaping (_ data: CreateVaultMarketEntityKybResponse?, _ error: Error?) -> Void)
```

Refresh the entity's KYB status from the custodian (and its onboarding link while KYB is open).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Refresh the entity's KYB status from the custodian (and its onboarding link while KYB is open).
VaultMarketsAPI.createVaultMarketEntityKyb(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketEntityKybResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntityMember**
```swift
    open class func createVaultMarketEntityMember(id: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: invite a Crossly user by email as admin, trader, risk, ops or viewer (a viewer can never place an order), with optional limits and sub-accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Admin: invite a Crossly user by email as admin, trader, risk, ops or viewer (a viewer can never place an order), with optional limits and sub-accounts.
VaultMarketsAPI.createVaultMarketEntityMember(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntitySubaccount**
```swift
    open class func createVaultMarketEntitySubaccount(id: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: open a sub-account once the custodian approved the entity; its limits are held to the entity's caps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Admin: open a sub-account once the custodian approved the entity; its limits are held to the entity's caps.
VaultMarketsAPI.createVaultMarketEntitySubaccount(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketEntitySubaccountClose**
```swift
    open class func createVaultMarketEntitySubaccountClose(id: String, subId: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: close a sub-account that holds nothing and has no open orders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let subId = "subId_example" // String | 

// Admin: close a sub-account that holds nothing and has no open orders.
VaultMarketsAPI.createVaultMarketEntitySubaccountClose(id: id, subId: subId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **subId** | **String** |  | 

### Return type

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketFollowCopyWatchAlertRead**
```swift
    open class func createVaultMarketFollowCopyWatchAlertRead(completion: @escaping (_ data: CreateVaultMarketFollowCopyWatchAlertReadResponse?, _ error: Error?) -> Void)
```

Mark every copy-watch alert read. Returns `{ marked }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Mark every copy-watch alert read. Returns `{ marked }`.
VaultMarketsAPI.createVaultMarketFollowCopyWatchAlertRead() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketFollowCopyWatchAlertReadResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGift**
```swift
    open class func createVaultMarketGift(completion: @escaping (_ data: CreateVaultMarketGiftResponse?, _ error: Error?) -> Void)
```

Give a unit in your vault to another Crossly user (by @username or email). It stays on its shelf; they have 7 days to accept. ID needed above $1,000 at the mark. Returns `{ id, expiresAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Give a unit in your vault to another Crossly user (by @username or email). It stays on its shelf; they have 7 days to accept. ID needed above $1,000 at the mark. Returns `{ id, expiresAt }`.
VaultMarketsAPI.createVaultMarketGift() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketGiftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGiftAccept**
```swift
    open class func createVaultMarketGiftAccept(id: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Accept a gift: the unit becomes yours in place. Returns `{ status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept a gift: the unit becomes yours in place. Returns `{ status }`.
VaultMarketsAPI.createVaultMarketGiftAccept(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGiftCancel**
```swift
    open class func createVaultMarketGiftCancel(id: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Cancel a gift you sent before it is accepted. Returns `{ status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a gift you sent before it is accepted. Returns `{ status }`.
VaultMarketsAPI.createVaultMarketGiftCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGiftDecline**
```swift
    open class func createVaultMarketGiftDecline(id: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Decline a gift: the unit stays with the giver. Returns `{ status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Decline a gift: the unit stays with the giver. Returns `{ status }`.
VaultMarketsAPI.createVaultMarketGiftDecline(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVault**
```swift
    open class func createVaultMarketGradeToVault(completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

Start Grade to Vault on one item (`source` inventory or vault_unit). With `runId` the grading slot is booked at once (free; your saved card is charged only if the run locks). Nothing is listed until you confirm a price after the grade.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start Grade to Vault on one item (`source` inventory or vault_unit). With `runId` the grading slot is booked at once (free; your saved card is charged only if the run locks). Nothing is listed until you confirm a price after the grade.
VaultMarketsAPI.createVaultMarketGradeToVault() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVaultBook**
```swift
    open class func createVaultMarketGradeToVaultBook(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

Book (or re-book) the grading slot of a flow still at \"picked\". Answers 503 naming GRADING_HUB_ADDRESS when runs are not open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Book (or re-book) the grading slot of a flow still at \"picked\". Answers 503 naming GRADING_HUB_ADDRESS when runs are not open.
VaultMarketsAPI.createVaultMarketGradeToVaultBook(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVaultCancel**
```swift
    open class func createVaultMarketGradeToVaultCancel(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

Stop the flow before the card goes to the grader (still picked, or its slot only reserved: nothing was charged).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop the flow before the card goes to the grader (still picked, or its slot only reserved: nothing was charged).
VaultMarketsAPI.createVaultMarketGradeToVaultCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVaultKeep**
```swift
    open class func createVaultMarketGradeToVaultKeep(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

Keep the graded unit in your vault without listing it. The flow ends; list it any time from the vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Keep the graded unit in your vault without listing it. The flow ends; list it any time from the vault.
VaultMarketsAPI.createVaultMarketGradeToVaultKeep(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVaultList**
```swift
    open class func createVaultMarketGradeToVaultList(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

Confirm the price for the grade the unit came back with (`confirm: true`, `gradeKey` must match the unit). Pre-trade risk, the price band and the ID line apply, then one shelf ask is placed on the Crossly order book.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Confirm the price for the grade the unit came back with (`confirm: true`, `gradeKey` must match the unit). Pre-trade risk, the price band and the ID line apply, then one shelf ask is placed on the Crossly order book.
VaultMarketsAPI.createVaultMarketGradeToVaultList(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradeToVaultShipped**
```swift
    open class func createVaultMarketGradeToVaultShipped(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

You mailed the card to the grading hub (an inventory card, once its run locked).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// You mailed the card to the grading hub (an inventory card, once its run locked).
VaultMarketsAPI.createVaultMarketGradeToVaultShipped(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGrading**
```swift
    open class func createVaultMarketGrading(completion: @escaping (_ data: CreateVaultMarketGradingResponse?, _ error: Error?) -> Void)
```

Send a raw vault unit on the grading hub's shelf to a Grading Run (`runId`). It is held until it comes back, graded, to the same vault item. The slot is free; your saved card is charged only if the run locks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Send a raw vault unit on the grading hub's shelf to a Grading Run (`runId`). It is held until it comes back, graded, to the same vault item. The slot is free; your saved card is charged only if the run locks.
VaultMarketsAPI.createVaultMarketGrading() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketGradingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradingPull**
```swift
    open class func createVaultMarketGradingPull(submissionId: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Pull a vault unit out of its run before the run locks (nothing was charged). It goes back on the shelf.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let submissionId = "submissionId_example" // String | 

// Pull a vault unit out of its run before the run locks (nothing was charged). It goes back on the shelf.
VaultMarketsAPI.createVaultMarketGradingPull(submissionId: submissionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **String** |  | 

### Return type

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketHallLoan**
```swift
    open class func createVaultMarketHallLoan(completion: @escaping (_ data: CreateVaultMarketHallLoanResponse?, _ error: Error?) -> Void)
```

Lend a unit in your Crossly vault to the Hall of Grails: { vaultItemId, credit: 'name' | 'anonymous' }. A standing loan of display rights only: the unit goes on a plinth, under a plate naming you (or \"a collector\"), in every weekly exhibition whose category it fits. It never moves and stays yours to list, sell or withdraw. Earns reputation per exhibition shown; no cash. Resumes a loan you opted out of while it still shows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Lend a unit in your Crossly vault to the Hall of Grails: { vaultItemId, credit: 'name' | 'anonymous' }. A standing loan of display rights only: the unit goes on a plinth, under a plate naming you (or \"a collector\"), in every weekly exhibition whose category it fits. It never moves and stays yours to list, sell or withdraw. Earns reputation per exhibition shown; no cash. Resumes a loan you opted out of while it still shows.
VaultMarketsAPI.createVaultMarketHallLoan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketHallLoanCredit**
```swift
    open class func createVaultMarketHallLoanCredit(id: String, completion: @escaping (_ data: CreateVaultMarketHallLoanCreditResponse?, _ error: Error?) -> Void)
```

Change how the plate on a lent unit's plinth names you, from now: { credit: 'name' } (your display name) or { credit: 'anonymous' } (\"a collector\").

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change how the plate on a lent unit's plinth names you, from now: { credit: 'name' } (your display name) or { credit: 'anonymous' } (\"a collector\").
VaultMarketsAPI.createVaultMarketHallLoanCredit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketHallLoanCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketHallLoanOptOut**
```swift
    open class func createVaultMarketHallLoanOptOut(id: String, completion: @escaping (_ data: CreateVaultMarketHallLoanOptOutResponse?, _ error: Error?) -> Void)
```

Opt a Hall of Grails loan out, at any time. A unit on a plinth this week finishes this exhibition (status ending, showingUntil); otherwise the loan ends now (status ended).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Opt a Hall of Grails loan out, at any time. A unit on a plinth this week finishes this exhibition (status ending, showingUntil); otherwise the loan ends now (status ended).
VaultMarketsAPI.createVaultMarketHallLoanOptOut(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketHallLoanOptOutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketIdentityStart**
```swift
    open class func createVaultMarketIdentityStart(completion: @escaping (_ data: CreateVaultMarketIdentityStartResponse?, _ error: Error?) -> Void)
```

Start (or resume) the one-time ID check the money features and larger orders need. Returns `{ url }` to open, or `{ alreadyVerified: true }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start (or resume) the one-time ID check the money features and larger orders need. Returns `{ url }` to open, or `{ alreadyVerified: true }`.
VaultMarketsAPI.createVaultMarketIdentityStart() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketIdentityStartResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketIndex**
```swift
    open class func createVaultMarketIndex(completion: @escaping (_ data: GetVaultMarketIndexResponse?, _ error: Error?) -> Void)
```

Make an index of your own: 1 to 50 book keys, weighted by mark or equally. Up to 10 per account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Make an index of your own: 1 to 50 book keys, weighted by mark or equally. Up to 10 per account.
VaultMarketsAPI.createVaultMarketIndex() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketIndexResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketIndexBuy**
```swift
    open class func createVaultMarketIndexBuy(slug: String, completion: @escaping (_ data: CreateVaultMarketIndexBuyResponse?, _ error: Error?) -> Void)
```

Buy the basket: one limit buy per key in the index for 1-5 whole units each, at most `maxBpsOverMark` over each key's mark, IOC or GTC. Every unit is a real item that lands in your vault. Idempotent on `clientBasketId`; returns a result per key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Buy the basket: one limit buy per key in the index for 1-5 whole units each, at most `maxBpsOverMark` over each key's mark, IOC or GTC. Every unit is a real item that lands in your vault. Idempotent on `clientBasketId`; returns a result per key.
VaultMarketsAPI.createVaultMarketIndexBuy(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateVaultMarketIndexBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketIndexComplaint**
```swift
    open class func createVaultMarketIndexComplaint(completion: @escaping (_ data: CreateVaultMarketIndexComplaintResponse?, _ error: Error?) -> Void)
```

File a complaint about an index or the method (`slug` optional). Every complaint is answered. Returns `{ id, status, createdAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// File a complaint about an index or the method (`slug` optional). Every complaint is answered. Returns `{ id, status, createdAt }`.
VaultMarketsAPI.createVaultMarketIndexComplaint() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketIndexComplaintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketIndexConsultationComment**
```swift
    open class func createVaultMarketIndexConsultationComment(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Comment on an open consultation (5 to 5,000 characters; up to 5 per person). Comments are published without your name. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Comment on an open consultation (5 to 5,000 characters; up to 5 per person). Comments are published without your name. Returns `{ ok }`.
VaultMarketsAPI.createVaultMarketIndexConsultationComment(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketInstantExit**
```swift
    open class func createVaultMarketInstantExit(completion: @escaping (_ data: CreateVaultMarketInstantExitResponse?, _ error: Error?) -> Void)
```

Sell a unit now at the quoted price: a sell IOC at `priceCents` through the pro engine. Refused, with the new quote, if the best bid dropped below it. Crossly never buys or funds it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Sell a unit now at the quoted price: a sell IOC at `priceCents` through the pro engine. Refused, with the new quote, if the best bid dropped below it. Crossly never buys or funds it.
VaultMarketsAPI.createVaultMarketInstantExit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketInstantExitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJoint**
```swift
    open class func createVaultMarketJoint(completion: @escaping (_ data: CreateVaultMarketJointResponse?, _ error: Error?) -> Void)
```

Open a joint vault (ID first): you hold full rights and accept the current joint terms. `invite` sends invitations (@username or email, each with view, trade or full rights). Returns `{ id, status, invited }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open a joint vault (ID first): you hold full rights and accept the current joint terms. `invite` sends invitations (@username or email, each with view, trade or full rights). Returns `{ id, status, invited }`.
VaultMarketsAPI.createVaultMarketJoint() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketJointResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointClose**
```swift
    open class func createVaultMarketJointClose(id: String, completion: @escaping (_ data: CreateVaultMarketJointCloseResponse?, _ error: Error?) -> Void)
```

Close the joint vault (full rights): open joint orders are cancelled and every unit goes back to its owner. Returns `{ status, unitsReturned }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close the joint vault (full rights): open joint orders are cancelled and every unit goes back to its owner. Returns `{ status, unitsReturned }`.
VaultMarketsAPI.createVaultMarketJointClose(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointInvite**
```swift
    open class func createVaultMarketJointInvite(id: String, completion: @escaping (_ data: CreateVaultMarketJointInviteResponse?, _ error: Error?) -> Void)
```

Invite a Crossly user (full rights only). They have 14 days and show ID to join. Returns `{ userId, rights, expiresAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Invite a Crossly user (full rights only). They have 14 days and show ID to join. Returns `{ userId, rights, expiresAt }`.
VaultMarketsAPI.createVaultMarketJointInvite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointMemberRemove**
```swift
    open class func createVaultMarketJointMemberRemove(id: String, userId: String, completion: @escaping (_ data: CreateVaultMarketJointMemberRemoveResponse?, _ error: Error?) -> Void)
```

Remove a member (full rights), or leave when userId is you. Their units go back to their own account and their joint orders are cancelled. Returns `{ userId, status, unitsReturned, jointStatus }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let userId = "userId_example" // String | 

// Remove a member (full rights), or leave when userId is you. Their units go back to their own account and their joint orders are cancelled. Returns `{ userId, status, unitsReturned, jointStatus }`.
VaultMarketsAPI.createVaultMarketJointMemberRemove(id: id, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointMemberRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointMemberRight**
```swift
    open class func createVaultMarketJointMemberRight(id: String, userId: String, completion: @escaping (_ data: CreateVaultMarketJointMemberRightResponse?, _ error: Error?) -> Void)
```

Set a member rights to view, trade or full (full rights only; the vault always keeps a full member). Returns `{ userId, rights }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let userId = "userId_example" // String | 

// Set a member rights to view, trade or full (full rights only; the vault always keeps a full member). Returns `{ userId, rights }`.
VaultMarketsAPI.createVaultMarketJointMemberRight(id: id, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointMemberRightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointRespond**
```swift
    open class func createVaultMarketJointRespond(id: String, completion: @escaping (_ data: CreateVaultMarketJointRespondResponse?, _ error: Error?) -> Void)
```

Accept (ID first; accepts the current joint terms) or decline an invitation. Returns `{ status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept (ID first; accepts the current joint terms) or decline an invitation. Returns `{ status }`.
VaultMarketsAPI.createVaultMarketJointRespond(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointTerm**
```swift
    open class func createVaultMarketJointTerm(id: String, completion: @escaping (_ data: TermsVersionResponse?, _ error: Error?) -> Void)
```

Accept the current joint terms (needed to trade after the terms version changes). Returns `{ termsVersion }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept the current joint terms (needed to trade after the terms version changes). Returns `{ termsVersion }`.
VaultMarketsAPI.createVaultMarketJointTerm(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**TermsVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointTrade**
```swift
    open class func createVaultMarketJointTrade(id: String, completion: @escaping (_ data: CreateVaultMarketJointTradeResponse?, _ error: Error?) -> Void)
```

Place a limit order for the joint vault (trade or full rights, ID shown). A buy (bookKey) is placed on you, paid from your own Vault Markets account, and what it buys is booked to the joint vault. A sell (vaultItemId of a unit in it) is placed on the unit owner of record, who gets the proceeds; pre-trade checks run against you too. Returns `{ tradeId, side, bookKey, ownerUserId, order }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Place a limit order for the joint vault (trade or full rights, ID shown). A buy (bookKey) is placed on you, paid from your own Vault Markets account, and what it buys is booked to the joint vault. A sell (vaultItemId of a unit in it) is placed on the unit owner of record, who gets the proceeds; pre-trade checks run against you too. Returns `{ tradeId, side, bookKey, ownerUserId, order }`.
VaultMarketsAPI.createVaultMarketJointTrade(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointTradeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointTradeCancel**
```swift
    open class func createVaultMarketJointTradeCancel(id: String, tradeId: String, completion: @escaping (_ data: CreateVaultMarketJointTradeCancelResponse?, _ error: Error?) -> Void)
```

Cancel a working joint order (trade or full rights); what filled stays filled. Returns `{ tradeId, order }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let tradeId = "tradeId_example" // String | 

// Cancel a working joint order (trade or full rights); what filled stays filled. Returns `{ tradeId, order }`.
VaultMarketsAPI.createVaultMarketJointTradeCancel(id: id, tradeId: tradeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **tradeId** | **String** |  | 

### Return type

**CreateVaultMarketJointTradeCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointUnit**
```swift
    open class func createVaultMarketJointUnit(id: String, completion: @escaping (_ data: CreateVaultMarketJointUnitResponse?, _ error: Error?) -> Void)
```

Put units you own into the joint vault (each stored and free). They keep you as owner of record and stay on the shelf. Returns `{ added, vaultItemIds }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Put units you own into the joint vault (each stored and free). They keep you as owner of record and stay on the shelf. Returns `{ added, vaultItemIds }`.
VaultMarketsAPI.createVaultMarketJointUnit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointUnitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketJointUnitRemove**
```swift
    open class func createVaultMarketJointUnitRemove(id: String, completion: @escaping (_ data: CreateVaultMarketJointUnitRemoveResponse?, _ error: Error?) -> Void)
```

Take units out of the joint vault, back to their owner own account (yours at any rights; anyone else with full rights). Returns `{ removed, vaultItemIds }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take units out of the joint vault, back to their owner own account (yours at any rights; anyone else with full rights). Returns `{ removed, vaultItemIds }`.
VaultMarketsAPI.createVaultMarketJointUnitRemove(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketJointUnitRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLargeTraderReportFile**
```swift
    open class func createVaultMarketLargeTraderReportFile(id: String, completion: @escaping (_ data: ListVaultMarketLargeTraderReportsItem?, _ error: Error?) -> Void)
```

File (or amend, or refile) a large-trader report: why you hold it (purpose), who you act for, other accounts you control, whether you plan to add, and a statement of 20+ characters. Returns the report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// File (or amend, or refile) a large-trader report: why you hold it (purpose), who you act for, other accounts you control, whether you plan to add, and a statement of 20+ characters. Returns the report.
VaultMarketsAPI.createVaultMarketLargeTraderReportFile(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketLargeTraderReportsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLearnQuiz**
```swift
    open class func createVaultMarketLearnQuiz(concept: String, completion: @escaping (_ data: CreateVaultMarketLearnQuizResponse?, _ error: Error?) -> Void)
```

Answer a concept's quiz (`answers`: the chosen choice index per question). Graded on the server; 5 tries an hour.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let concept = "concept_example" // String | 

// Answer a concept's quiz (`answers`: the chosen choice index per question). Graded on the server; 5 tries an hour.
VaultMarketsAPI.createVaultMarketLearnQuiz(concept: concept) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **concept** | **String** |  | 

### Return type

**CreateVaultMarketLearnQuizResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLiveStreamFeaturedLot**
```swift
    open class func createVaultMarketLiveStreamFeaturedLot(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Feature an open lot on your live show (or `lotId: null` to take it off). Viewers hear LIVE_PIN_CHANGED. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Feature an open lot on your live show (or `lotId: null` to take it off). Viewers hear LIVE_PIN_CHANGED. Returns `{ ok }`.
VaultMarketsAPI.createVaultMarketLiveStreamFeaturedLot(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLoan**
```swift
    open class func createVaultMarketLoan(completion: @escaping (_ data: GetVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

Borrow against stored vault units: they are pledged (no listing, lending or withdrawal) and the market pool lends `amountCents` into your custodian account. Needs a verified ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Borrow against stored vault units: they are pledged (no listing, lending or withdrawal) and the market pool lends `amountCents` into your custodian account. Needs a verified ID.
VaultMarketsAPI.createVaultMarketLoan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLoanRecall**
```swift
    open class func createVaultMarketLoanRecall(id: String, completion: @escaping (_ data: CreateVaultMarketLoanRecallResponse?, _ error: Error?) -> Void)
```

Recall a lent unit: the short has 3 days to return one. Returns `{ recallDueAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Recall a lent unit: the short has 3 days to return one. Returns `{ recallDueAt }`.
VaultMarketsAPI.createVaultMarketLoanRecall(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketLoanRecallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLoanUnit**
```swift
    open class func createVaultMarketLoanUnit(id: String, completion: @escaping (_ data: GetVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

Pledge more stored units to a loan (answers a loan call, or makes room).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pledge more stored units to a loan (answers a loan call, or makes room).
VaultMarketsAPI.createVaultMarketLoanUnit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLoanUnitRelease**
```swift
    open class func createVaultMarketLoanUnitRelease(id: String, vaultItemId: String, completion: @escaping (_ data: GetVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

Free one pledged unit, if what is owed still fits inside the other units' limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let vaultItemId = "vaultItemId_example" // String | 

// Free one pledged unit, if what is owed still fits inside the other units' limit.
VaultMarketsAPI.createVaultMarketLoanUnitRelease(id: id, vaultItemId: vaultItemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **vaultItemId** | **String** |  | 

### Return type

**GetVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLoanUnitSell**
```swift
    open class func createVaultMarketLoanUnitSell(id: String, vaultItemId: String, completion: @escaping (_ data: CreateVaultMarketLoanUnitSellResponse?, _ error: Error?) -> Void)
```

Sell a pledged unit to repay its loan: it is listed at `priceCents` (at least the sale floor) and stays pledged until it sells; the proceeds repay the loan first and the rest is yours. Calling it again re-prices it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let vaultItemId = "vaultItemId_example" // String | 

// Sell a pledged unit to repay its loan: it is listed at `priceCents` (at least the sale floor) and stays pledged until it sells; the proceeds repay the loan first and the rest is yours. Calling it again re-prices it.
VaultMarketsAPI.createVaultMarketLoanUnitSell(id: id, vaultItemId: vaultItemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **vaultItemId** | **String** |  | 

### Return type

**CreateVaultMarketLoanUnitSellResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLocate**
```swift
    open class func createVaultMarketLocate(completion: @escaping (_ data: ListVaultMarketLocateMineItem?, _ error: Error?) -> Void)
```

Hold up to `qty` lendable units of `bookKey` for 15 minutes so a short can open against them (`termDays` 30/90 for a term loan). Needs lending (VAULT_LENDING_TERMS_VERSION) and the ID check. Returns the locate with how many units it holds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Hold up to `qty` lendable units of `bookKey` for 15 minutes so a short can open against them (`termDays` 30/90 for a term loan). Needs lending (VAULT_LENDING_TERMS_VERSION) and the ID check. Returns the locate with how many units it holds.
VaultMarketsAPI.createVaultMarketLocate() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketLocateMineItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketLong**
```swift
    open class func createVaultMarketLong(completion: @escaping (_ data: CreateVaultMarketLongResponse?, _ error: Error?) -> Void)
```

Buy `units` units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) into your vault with leverage (up to 2x) from the market staking pool, paying up to `maxCents` each. A partial fill opens with the units bought and the rest is cancelled. Returns `{ positionId, matched, units }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Buy `units` units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) into your vault with leverage (up to 2x) from the market staking pool, paying up to `maxCents` each. A partial fill opens with the units bought and the rest is cancelled. Returns `{ positionId, matched, units }`.
VaultMarketsAPI.createVaultMarketLong() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketLongResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMidpoint**
```swift
    open class func createVaultMarketMidpoint(completion: @escaping (_ data: ListVaultMarketMidpointItem?, _ error: Error?) -> Void)
```

A hidden block order that trades only at the firm-book midpoint, with another midpoint order of at least your minimum size.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A hidden block order that trades only at the firm-book midpoint, with another midpoint order of at least your minimum size.
VaultMarketsAPI.createVaultMarketMidpoint() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketMidpointItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMidpointCancel**
```swift
    open class func createVaultMarketMidpointCancel(id: String, completion: @escaping (_ data: ListVaultMarketMidpointItem?, _ error: Error?) -> Void)
```

Cancel a midpoint order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a midpoint order.
VaultMarketsAPI.createVaultMarketMidpointCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketMidpointItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMmDmm**
```swift
    open class func createVaultMarketMmDmm(completion: @escaping (_ data: CreateVaultMarketMmLpResponse?, _ error: Error?) -> Void)
```

Apply to be the designated market maker on a tier B or C key. Ops approves; one per key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Apply to be the designated market maker on a tier B or C key. Ops approves; one per key.
VaultMarketsAPI.createVaultMarketMmDmm() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketMmLpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMmLeave**
```swift
    open class func createVaultMarketMmLeave(id: String, completion: @escaping (_ data: CreateVaultMarketMmLpResponse?, _ error: Error?) -> Void)
```

Leave a market-maker programme.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Leave a market-maker programme.
VaultMarketsAPI.createVaultMarketMmLeave(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketMmLpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMmLp**
```swift
    open class func createVaultMarketMmLp(completion: @escaping (_ data: CreateVaultMarketMmLpResponse?, _ error: Error?) -> Void)
```

Join a key as a Registered Liquidity Provider (ID needed). Meeting coverage earns the LP rates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Join a key as a Registered Liquidity Provider (ID needed). Meeting coverage earns the LP rates.
VaultMarketsAPI.createVaultMarketMmLp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketMmLpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMmMassCancel**
```swift
    open class func createVaultMarketMmMassCancel(completion: @escaping (_ data: CreateVaultMarketMmMassCancelResponse?, _ error: Error?) -> Void)
```

Cancel every open order (one key, or only quotes) and every resting leg in one statement: nothing fills between the first cancel and the last.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Cancel every open order (one key, or only quotes) and every resting leg in one statement: nothing fills between the first cancel and the last.
VaultMarketsAPI.createVaultMarketMmMassCancel() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketMmMassCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketMmMmpReset**
```swift
    open class func createVaultMarketMmMmpReset(completion: @escaping (_ data: GetVaultMarketMmMmpResponse?, _ error: Error?) -> Void)
```

End a market-maker protection freeze early.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// End a market-maker protection freeze early.
VaultMarketsAPI.createVaultMarketMmMmpReset() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMmMmpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketOpeningWaitlist**
```swift
    open class func createVaultMarketOpeningWaitlist(slug: String, completion: @escaping (_ data: CreateVaultMarketOpeningWaitlistResponse?, _ error: Error?) -> Void)
```

Join a key's waitlist, optionally with a friend's invite code (`ref`). Inviting moves you up the queue; nobody is paid. Returns your place and your own code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Join a key's waitlist, optionally with a friend's invite code (`ref`). Inviting moves you up the queue; nobody is paid. Returns your place and your own code.
VaultMarketsAPI.createVaultMarketOpeningWaitlist(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateVaultMarketOpeningWaitlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanCall**
```swift
    open class func createVaultMarketP2pLoanCall(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Lender: call the loan (once it is a day old). A refinancing auction runs for about 30 hours, the rate a new lender gets climbing to the ceiling; repaid or refinanced, you are paid in full; neither by the end, the unit moves to your vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Lender: call the loan (once it is a day old). A refinancing auction runs for about 30 hours, the rate a new lender gets climbing to the ceiling; repaid or refinanced, you are paid in full; neither by the end, the unit moves to your vault.
VaultMarketsAPI.createVaultMarketP2pLoanCall(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanCancelCall**
```swift
    open class func createVaultMarketP2pLoanCancelCall(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Lender: take back your call before any other lender has taken the loan over. The refinancing auction stops and the loan carries on as before on its terms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Lender: take back your call before any other lender has taken the loan over. The refinancing auction stops and the loan carries on as before on its terms.
VaultMarketsAPI.createVaultMarketP2pLoanCancelCall(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanRefiAuction**
```swift
    open class func createVaultMarketP2pLoanRefiAuction(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Borrower: look for a cheaper lender. A refinancing auction runs for `hours` (1-72, default 24); the rate a new lender gets climbs from `startAprBps` (default half the loan rate) to just under the loan rate now. The first lender to take it pays your lender off and the loan carries on at that lower rate. Nobody by the end: nothing changes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Borrower: look for a cheaper lender. A refinancing auction runs for `hours` (1-72, default 24); the rate a new lender gets climbs from `startAprBps` (default half the loan rate) to just under the loan rate now. The first lender to take it pays your lender off and the loan carries on at that lower rate. Nobody by the end: nothing changes.
VaultMarketsAPI.createVaultMarketP2pLoanRefiAuction(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanRefiAuctionCancel**
```swift
    open class func createVaultMarketP2pLoanRefiAuctionCancel(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Borrower: stop looking for a cheaper lender before anyone has taken the loan over. The loan carries on unchanged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Borrower: stop looking for a cheaper lender before anyone has taken the loan over. The loan carries on unchanged.
VaultMarketsAPI.createVaultMarketP2pLoanRefiAuctionCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanRefinance**
```swift
    open class func createVaultMarketP2pLoanRefinance(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Take over a loan in a refinancing auction (a lender call or a borrower search for a cheaper lender): you pay the old lender everything owed now (refused above `maxPayoffCents`), which becomes your loan to the same borrower at the auction rate now. Needs a verified ID, an active account and the current lending terms. Pass `requestId` to make a retry safe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take over a loan in a refinancing auction (a lender call or a borrower search for a cheaper lender): you pay the old lender everything owed now (refused above `maxPayoffCents`), which becomes your loan to the same borrower at the auction rate now. Needs a verified ID, an active account and the current lending terms. Pass `requestId` to make a retry safe.
VaultMarketsAPI.createVaultMarketP2pLoanRefinance(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pLoanRepay**
```swift
    open class func createVaultMarketP2pLoanRepay(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Borrower: repay from your custodian account to the lender. Without `amountCents`, in full (principal plus interest to the second; the unit is free once the custodian has it). With `amountCents` below what is owed, a part payment: interest first, then principal, at least the interest owed now and at least $1; the loan stays open on the principal left. Pass `requestId` to make a retry safe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Borrower: repay from your custodian account to the lender. Without `amountCents`, in full (principal plus interest to the second; the unit is free once the custodian has it). With `amountCents` below what is owed, a part payment: interest first, then principal, at least the interest owed now and at least $1; the loan stays open on the principal left. Pass `requestId` to make a retry safe.
VaultMarketsAPI.createVaultMarketP2pLoanRepay(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pOffer**
```swift
    open class func createVaultMarketP2pOffer(completion: @escaping (_ data: ListVaultMarketP2pOffersItem?, _ error: Error?) -> Void)
```

Offer to lend: `principalCents` per loan at `aprBps` a year against an item (`bookKey`) or one unit (`vaultItemId`), for up to `maxLoans` loans, lasting `expiresInDays` (default 90). Nothing is held: the custodian pays from your own account when a borrower takes it. Needs a verified ID, an active account and the current lending terms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Offer to lend: `principalCents` per loan at `aprBps` a year against an item (`bookKey`) or one unit (`vaultItemId`), for up to `maxLoans` loans, lasting `expiresInDays` (default 90). Nothing is held: the custodian pays from your own account when a borrower takes it. Needs a verified ID, an active account and the current lending terms.
VaultMarketsAPI.createVaultMarketP2pOffer() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pOffersItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pOfferCancel**
```swift
    open class func createVaultMarketP2pOfferCancel(id: String, completion: @escaping (_ data: ListVaultMarketP2pOffersItem?, _ error: Error?) -> Void)
```

Withdraw one of your open offers. Loans already taken from it carry on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw one of your open offers. Loans already taken from it carry on.
VaultMarketsAPI.createVaultMarketP2pOfferCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketP2pOffersItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketP2pOfferTake**
```swift
    open class func createVaultMarketP2pOfferTake(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

Borrow: take an offer against one of your stored vault units (`vaultItemId`). The unit is pledged (no listing, lending or withdrawal) and the principal is paid into your custodian account. Interest accrues by the second; repay any time. Pass `requestId` to make a retry safe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Borrow: take an offer against one of your stored vault units (`vaultItemId`). The unit is pledged (no listing, lending or withdrawal) and the principal is paid into your custodian account. Interest accrues by the second; repay any time. Pass `requestId` to make a retry safe.
VaultMarketsAPI.createVaultMarketP2pOfferTake(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPaperMissionMarkCheck**
```swift
    open class func createVaultMarketPaperMissionMarkCheck(completion: @escaping (_ data: CreateVaultMarketPaperMissionMarkCheckResponse?, _ error: Error?) -> Void)
```

Answer the \"Read the mark\" mission: the quality letter (A, B or C) you read on a market page, checked against the stored mark. One answer per market, 10 a day. Returns `{ bookKey, answer, correct, quality, mission, next }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Answer the \"Read the mark\" mission: the quality letter (A, B or C) you read on a market page, checked against the stored mark. One answer per market, 10 a day. Returns `{ bookKey, answer, correct, quality, mission, next }`.
VaultMarketsAPI.createVaultMarketPaperMissionMarkCheck() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPaperMissionMarkCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPaperOrder**
```swift
    open class func createVaultMarketPaperOrder(completion: @escaping (_ data: CreateVaultMarketPaperOrderResponse?, _ error: Error?) -> Void)
```

Place a paper order (play money only). It takes visible real liquidity now at book prices with the taker fee simulated; a GTC limit rests the rest with a queue-position estimate, filled later as the real tape reaches it. Sells only paper units you hold (no paper shorts). Never touches the real book. Returns `{ order, fills }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Place a paper order (play money only). It takes visible real liquidity now at book prices with the taker fee simulated; a GTC limit rests the rest with a queue-position estimate, filled later as the real tape reaches it. Sells only paper units you hold (no paper shorts). Never touches the real book. Returns `{ order, fills }`.
VaultMarketsAPI.createVaultMarketPaperOrder() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPaperOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPaperOrderCancel**
```swift
    open class func createVaultMarketPaperOrderCancel(id: String, completion: @escaping (_ data: CreateVaultMarketPaperOrderCancelResponse?, _ error: Error?) -> Void)
```

Cancel a working paper order: the play cash or paper units it held come back. Returns `{ order }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a working paper order: the play cash or paper units it held come back. Returns `{ order }`.
VaultMarketsAPI.createVaultMarketPaperOrderCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketPaperOrderCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPaperReset**
```swift
    open class func createVaultMarketPaperReset(completion: @escaping (_ data: CreateVaultMarketPaperResetResponse?, _ error: Error?) -> Void)
```

Reset your paper account to $10,000 of play money: working paper orders are cancelled, paper positions cleared, and your leaderboard week starts again. Once a day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Reset your paper account to $10,000 of play money: working paper orders are cancelled, paper positions cleared, and your leaderboard week starts again. Once a day.
VaultMarketsAPI.createVaultMarketPaperReset() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPaperResetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPartnerApply**
```swift
    open class func createVaultMarketPartnerApply(completion: @escaping (_ data: CreateVaultMarketPartnerApplyResponse?, _ error: Error?) -> Void)
```

Apply as a Vault Drop-off Partner (a card shop that takes walk-ins for the vault). Needs the one-time ID check; ops approve.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Apply as a Vault Drop-off Partner (a card shop that takes walk-ins for the vault). Needs the one-time ID check; ops approve.
VaultMarketsAPI.createVaultMarketPartnerApply() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPartnerApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPartnerBatch**
```swift
    open class func createVaultMarketPartnerBatch(completion: @escaping (_ data: CreateVaultMarketPartnerBatchResponse?, _ error: Error?) -> Void)
```

An approved partner sends walk-ins in under its code: each item (catalogue variant, condition, grade, photos) becomes an inbound vault unit; the box gets one prepaid label. The partner earns a capped share of Crossly's fee on each unit's first sale.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// An approved partner sends walk-ins in under its code: each item (catalogue variant, condition, grade, photos) becomes an inbound vault unit; the box gets one prepaid label. The partner earns a capped share of Crossly's fee on each unit's first sale.
VaultMarketsAPI.createVaultMarketPartnerBatch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPartnerBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPoolStake**
```swift
    open class func createVaultMarketPoolStake(completion: @escaping (_ data: CreateVaultMarketPoolStakeResponse?, _ error: Error?) -> Void)
```

Stake CBX you hold at the custodian into the market pool (base units, as a string). Returns `{ stakeId, shares }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stake CBX you hold at the custodian into the market pool (base units, as a string). Returns `{ stakeId, shares }`.
VaultMarketsAPI.createVaultMarketPoolStake() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPoolStakeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPoolStakeUnstake**
```swift
    open class func createVaultMarketPoolStakeUnstake(id: String, completion: @escaping (_ data: CreateVaultMarketPoolStakeUnstakeResponse?, _ error: Error?) -> Void)
```

Unstake: paid out after the 7-day cooldown. Returns `{ cooldownUntil }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Unstake: paid out after the 7-day cooldown. Returns `{ cooldownUntil }`.
VaultMarketsAPI.createVaultMarketPoolStakeUnstake(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketPoolStakeUnstakeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPortfolioMarginEnroll**
```swift
    open class func createVaultMarketPortfolioMarginEnroll(completion: @escaping (_ data: CreateVaultMarketPortfolioMarginEnrollResponse?, _ error: Error?) -> Void)
```

Admin: put a firm sub-account under portfolio margin. Needs VAULT_LEVERAGE_VENUE, your ID, an ECP-attested entity that passed KYB, and the minimum equity. Its positions are then margined on the whole account, recalculated every 5 minutes; calls and auctions are unchanged. Audited.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Admin: put a firm sub-account under portfolio margin. Needs VAULT_LEVERAGE_VENUE, your ID, an ECP-attested entity that passed KYB, and the minimum equity. Its positions are then margined on the whole account, recalculated every 5 minutes; calls and auctions are unchanged. Audited.
VaultMarketsAPI.createVaultMarketPortfolioMarginEnroll() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPortfolioMarginEnrollResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPortfolioMarginLeave**
```swift
    open class func createVaultMarketPortfolioMarginLeave(completion: @escaping (_ data: CreateVaultMarketPortfolioMarginLeaveResponse?, _ error: Error?) -> Void)
```

Admin: take a firm sub-account off portfolio margin. Each position is then held to its own tier floors again and may be called at once. Audited.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Admin: take a firm sub-account off portfolio margin. Each position is then held to its own tier floors again and may be called at once. Audited.
VaultMarketsAPI.createVaultMarketPortfolioMarginLeave() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPortfolioMarginLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPortfolioMarginWhatIf**
```swift
    open class func createVaultMarketPortfolioMarginWhatIf(completion: @escaping (_ data: CreateVaultMarketPortfolioMarginWhatIfResponse?, _ error: Error?) -> Void)
```

The portfolio margin requirement of a firm sub-account before and after a trade (`bookKey`, `side` buy or sell, `units`), at the Crossly mark with fees left out. Changes nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The portfolio margin requirement of a firm sub-account before and after a trade (`bookKey`, `side` buy or sell, `units`), at the Crossly mark with fees left out. Changes nothing.
VaultMarketsAPI.createVaultMarketPortfolioMarginWhatIf() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPortfolioMarginWhatIfResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPositionCancel**
```swift
    open class func createVaultMarketPositionCancel(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Cancel the working order: an unfilled opening order cancels the position; an unfilled cover or close leaves it open. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel the working order: an unfilled opening order cancels the position; an unfilled cover or close leaves it open. Returns `{ ok }`.
VaultMarketsAPI.createVaultMarketPositionCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPositionClose**
```swift
    open class func createVaultMarketPositionClose(id: String, completion: @escaping (_ data: CreateVaultMarketPositionCloseResponse?, _ error: Error?) -> Void)
```

Close a leveraged long: all its units, or `units` of them, each sold for at least `minCents`; each sale repays the pool first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close a leveraged long: all its units, or `units` of them, each sold for at least `minCents`; each sale repays the pool first.
VaultMarketsAPI.createVaultMarketPositionClose(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketPositionCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPositionCollateral**
```swift
    open class func createVaultMarketPositionCollateral(id: String, completion: @escaping (_ data: CreateVaultMarketPositionCollateralResponse?, _ error: Error?) -> Void)
```

Answer a margin call: a short posts more collateral (USD, or CBX at half value); a leveraged long pays down its pool loan. Returns the position.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer a margin call: a short posts more collateral (USD, or CBX at half value); a leveraged long pays down its pool loan. Returns the position.
VaultMarketsAPI.createVaultMarketPositionCollateral(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketPositionCollateralResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPositionCover**
```swift
    open class func createVaultMarketPositionCover(id: String, completion: @escaping (_ data: CreateVaultMarketPositionCloseResponse?, _ error: Error?) -> Void)
```

Cover a short: all its units, or `units` of them, each buying any unit of the key into the vault for up to `maxCents`; each goes back to its lender.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cover a short: all its units, or `units` of them, each buying any unit of the key into the vault for up to `maxCents`; each goes back to its lender.
VaultMarketsAPI.createVaultMarketPositionCover(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketPositionCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPriceWidget**
```swift
    open class func createVaultMarketPriceWidget(completion: @escaping (_ data: ListVaultMarketPriceWidgetsItem?, _ error: Error?) -> Void)
```

Make a price widget for one vault market (`kind` mark + `bookKey`) or one public index (`kind` index + `indexSlug`): range, layout (compact or chart), theme (auto, light, dark), optionally your own affiliate code for the link back and the sites allowed to show it (empty = any). Returns the widget with its snippets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Make a price widget for one vault market (`kind` mark + `bookKey`) or one public index (`kind` index + `indexSlug`): range, layout (compact or chart), theme (auto, light, dark), optionally your own affiliate code for the link back and the sites allowed to show it (empty = any). Returns the widget with its snippets.
VaultMarketsAPI.createVaultMarketPriceWidget() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPriceWidgetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketPriceWidgetPreview**
```swift
    open class func createVaultMarketPriceWidgetPreview(completion: @escaping (_ data: CreateVaultMarketPriceWidgetPreviewResponse?, _ error: Error?) -> Void)
```

What a widget would show before you save it: `view` (value, move, quality, n, as-of, link back) and `html`, the exact page the iframe serves. Nothing is stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What a widget would show before you save it: `view` (value, move, quality, n, as-of, link back) and `html`, the exact page the iframe serves. Nothing is stored.
VaultMarketsAPI.createVaultMarketPriceWidgetPreview() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketPriceWidgetPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProBracket**
```swift
    open class func createVaultMarketProBracket(completion: @escaping (_ data: CreateVaultMarketProBracketResponse?, _ error: Error?) -> Void)
```

A buy order with a take-profit and/or stop-loss attached; the exits arm as an OCO pair for what the entry fills.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A buy order with a take-profit and/or stop-loss attached; the exits arm as an OCO pair for what the entry fills.
VaultMarketsAPI.createVaultMarketProBracket() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProBracketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProLinkCancel**
```swift
    open class func createVaultMarketProLinkCancel(id: String, completion: @escaping (_ data: ListVaultMarketProLinksItem?, _ error: Error?) -> Void)
```

Cancel a linked order: its open child orders come off; a bracket's entry stays.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a linked order: its open child orders come off; a bracket's entry stays.
VaultMarketsAPI.createVaultMarketProLinkCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketProLinksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProOco**
```swift
    open class func createVaultMarketProOco(completion: @escaping (_ data: CreateVaultMarketProOcoResponse?, _ error: Error?) -> Void)
```

Two orders on one key, one cancels the other: when one fills or its stop triggers, the other is cancelled (a partial fill shrinks it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Two orders on one key, one cancels the other: when one fills or its stop triggers, the other is cancelled (a partial fill shrinks it).
VaultMarketsAPI.createVaultMarketProOco() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProOcoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProOrder**
```swift
    open class func createVaultMarketProOrder(completion: @escaping (_ data: CreateVaultMarketProOrderResponse?, _ error: Error?) -> Void)
```

Place an order on a vault book: limit, market (protected, IOC), stop or stop-limit; GTC, GTD, IOC or FOK; post-only; an iceberg `displayQuantity`; a TWAP or VWAP algo over a window. Idempotent on `clientOrderId`. `subaccountId` trades for a firm sub-account you may trade (your role, its KYB, its limits, no firm halt; buys pay from its custodian account and land in it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Place an order on a vault book: limit, market (protected, IOC), stop or stop-limit; GTC, GTD, IOC or FOK; post-only; an iceberg `displayQuantity`; a TWAP or VWAP algo over a window. Idempotent on `clientOrderId`. `subaccountId` trades for a firm sub-account you may trade (your role, its KYB, its limits, no firm halt; buys pay from its custodian account and land in it).
VaultMarketsAPI.createVaultMarketProOrder() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProOrderCancel**
```swift
    open class func createVaultMarketProOrderCancel(id: String, completion: @escaping (_ data: CreateVaultMarketProOrderResponse?, _ error: Error?) -> Void)
```

Cancel an order; what filled stays filled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel an order; what filled stays filled.
VaultMarketsAPI.createVaultMarketProOrderCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketProOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProOrderCancelAll**
```swift
    open class func createVaultMarketProOrderCancelAll(completion: @escaping (_ data: CreateVaultMarketProOrderCancelAllResponse?, _ error: Error?) -> Void)
```

Cancel every open order, or every one on a book key. Returns `{ cancelled }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Cancel every open order, or every one on a book key. Returns `{ cancelled }`.
VaultMarketsAPI.createVaultMarketProOrderCancelAll() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProOrderCancelAllResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProOrderReplace**
```swift
    open class func createVaultMarketProOrderReplace(id: String, completion: @escaping (_ data: CreateVaultMarketProOrderResponse?, _ error: Error?) -> Void)
```

Amend an order's price, stop or quantity (cancel-replace: it re-queues at its new price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Amend an order's price, stop or quantity (cancel-replace: it re-queues at its new price).
VaultMarketsAPI.createVaultMarketProOrderReplace(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketProOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProQuote**
```swift
    open class func createVaultMarketProQuote(completion: @escaping (_ data: CreateVaultMarketProQuoteResponse?, _ error: Error?) -> Void)
```

Market makers: set a two-sided post-only quote on a book key (replaces the last). With cancel-on-disconnect (default) heartbeat every 30 s or it is pulled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Market makers: set a two-sided post-only quote on a book key (replaces the last). With cancel-on-disconnect (default) heartbeat every 30 s or it is pulled.
VaultMarketsAPI.createVaultMarketProQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProQuoteHeartbeat**
```swift
    open class func createVaultMarketProQuoteHeartbeat(completion: @escaping (_ data: CreateVaultMarketProQuoteHeartbeatResponse?, _ error: Error?) -> Void)
```

Keep your quotes alive (cancel-on-disconnect). Returns `{ quotes, at }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Keep your quotes alive (cancel-on-disconnect). Returns `{ quotes, at }`.
VaultMarketsAPI.createVaultMarketProQuoteHeartbeat() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProQuoteHeartbeatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProTrailingStop**
```swift
    open class func createVaultMarketProTrailingStop(completion: @escaping (_ data: CreateVaultMarketProTrailingStopResponse?, _ error: Error?) -> Void)
```

A trailing stop: its stop follows the best price since it was placed, `trailBps` or `trailCents` behind (under the high for a sell, over the low for a buy).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A trailing stop: its stop follows the best price since it was placed, `trailBps` or `trailCents` behind (under the high for a sell, over the low for a buy).
VaultMarketsAPI.createVaultMarketProTrailingStop() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketProTrailingStopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketProfileFollow**
```swift
    open class func createVaultMarketProfileFollow(handle: String, completion: @escaping (_ data: CreateVaultMarketProfileFollowResponse?, _ error: Error?) -> Void)
```

Follow someone with a public vault: their new vault buys appear in your feed. No copy trading.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Follow someone with a public vault: their new vault buys appear in your feed. No copy trading.
VaultMarketsAPI.createVaultMarketProfileFollow(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateVaultMarketProfileFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRecurring**
```swift
    open class func createVaultMarketRecurring(completion: @escaping (_ data: ListVaultMarketRecurringItem?, _ error: Error?) -> Void)
```

Start a recurring buy: one whole unit of a key every week, two weeks or month, at no more than `maxPriceCents` and/or the mark plus `capBpsOverMark`; card (with an optional backup) or custodian; optional auto-lend.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a recurring buy: one whole unit of a key every week, two weeks or month, at no more than `maxPriceCents` and/or the mark plus `capBpsOverMark`; card (with an optional backup) or custodian; optional auto-lend.
VaultMarketsAPI.createVaultMarketRecurring() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRecurringItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRfq**
```swift
    open class func createVaultMarketRfq(completion: @escaping (_ data: CreateVaultMarketRfqResponse?, _ error: Error?) -> Void)
```

Ask for a quote on a block: dealers, the key's DMM and LPs, and holders are told, anonymously. Answers are firm for 60 s. Your limit is never shown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ask for a quote on a block: dealers, the key's DMM and LPs, and holders are told, anonymously. Answers are firm for 60 s. Your limit is never shown.
VaultMarketsAPI.createVaultMarketRfq() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketRfqResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRfqAccept**
```swift
    open class func createVaultMarketRfqAccept(id: String, completion: @escaping (_ data: CreateVaultMarketRfqAcceptResponse?, _ error: Error?) -> Void)
```

Take one answer: it fills as a block through the normal fill path (fees by role, self-trade prevention, halts, LULD).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take one answer: it fills as a block through the normal fill path (fees by role, self-trade prevention, halts, LULD).
VaultMarketsAPI.createVaultMarketRfqAccept(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketRfqAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRfqCancel**
```swift
    open class func createVaultMarketRfqCancel(id: String, completion: @escaping (_ data: ListVaultMarketRfqItem?, _ error: Error?) -> Void)
```

Cancel your open quote request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel your open quote request.
VaultMarketsAPI.createVaultMarketRfqCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketRfqItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRfqRespond**
```swift
    open class func createVaultMarketRfqRespond(id: String, completion: @escaping (_ data: CreateVaultMarketRfqRespondResponse?, _ error: Error?) -> Void)
```

Answer a quote request for the full quantity with a firm price, good for 60 s. Selling needs the units free in your vault; buying pays from your Vault Markets custodian account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer a quote request for the full quantity with a firm price, good for 60 s. Selling needs the units free in your vault; buying pays from your Vault Markets custodian account.
VaultMarketsAPI.createVaultMarketRfqRespond(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketRfqRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketRfqResponseWithdraw**
```swift
    open class func createVaultMarketRfqResponseWithdraw(id: String, completion: @escaping (_ data: CreateVaultMarketRfqRespondResponse?, _ error: Error?) -> Void)
```

Withdraw your live answer to a quote request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw your live answer to a quote request.
VaultMarketsAPI.createVaultMarketRfqResponseWithdraw(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketRfqRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSetGoal**
```swift
    open class func createVaultMarketSetGoal(completion: @escaping (_ data: GetVaultMarketSetGoalResponse?, _ error: Error?) -> Void)
```

Start a goal on a catalogue set (category, brandSlug, modelSlug from the set search), optionally with a target: one condition, and any grade, ungraded, or one exact grade. One live goal per set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a goal on a catalogue set (category, brandSlug, modelSlug from the set search), optionally with a target: one condition, and any grade, ungraded, or one exact grade. One live goal per set.
VaultMarketsAPI.createVaultMarketSetGoal() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketSetGoalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSetGoalBasket**
```swift
    open class func createVaultMarketSetGoalBasket(id: String, completion: @escaping (_ data: ListVaultMarketSetGoalBasketsItem?, _ error: Error?) -> Void)
```

Place the \"complete my set\" basket bid: one GTC limit buy per missing piece, under a hard budget, paid by one of your saved cards or your custodian account. Every leg passes pre-trade risk and the ID line like any order. Idempotent on clientBasketId. One working basket per goal; its legs are cancelled once the set is complete.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Place the \"complete my set\" basket bid: one GTC limit buy per missing piece, under a hard budget, paid by one of your saved cards or your custodian account. Every leg passes pre-trade risk and the ID line like any order. Idempotent on clientBasketId. One working basket per goal; its legs are cancelled once the set is complete.
VaultMarketsAPI.createVaultMarketSetGoalBasket(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketSetGoalBasketsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSetGoalBasketCancel**
```swift
    open class func createVaultMarketSetGoalBasketCancel(id: String, completion: @escaping (_ data: ListVaultMarketSetGoalBasketsItem?, _ error: Error?) -> Void)
```

Cancel the goal working basket bid: every working leg comes off the book; what already filled stays in your vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel the goal working basket bid: every working leg comes off the book; what already filled stays in your vault.
VaultMarketsAPI.createVaultMarketSetGoalBasketCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketSetGoalBasketsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketShareCard**
```swift
    open class func createVaultMarketShareCard(completion: @escaping (_ data: ListVaultMarketShareCardsItem?, _ error: Error?) -> Void)
```

Make a verified share card of a position, a vault unit, a public index or your portfolio (`kind`, `refId`). The % on it is the price move since your real fill; amounts stay hidden unless `showAmounts`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Make a verified share card of a position, a vault unit, a public index or your portfolio (`kind`, `refId`). The % on it is the price move since your real fill; amounts stay hidden unless `showAmounts`.
VaultMarketsAPI.createVaultMarketShareCard() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketShareCardsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketShort**
```swift
    open class func createVaultMarketShort(completion: @escaping (_ data: CreateVaultMarketLongResponse?, _ error: Error?) -> Void)
```

Short a book key: borrow `units` lent units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) and sell each at `limitCents` or better, posting collateral for all of them (50% of the mark each; CBX counts at half, up to 30%). All units are borrowed or none unless `allowPartial`. A partial sale opens with the units sold. Returns `{ positionId, matched, units }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Short a book key: borrow `units` lent units (default 1; at most 25/10/3/1 by liquidity tier A/B/C/D) and sell each at `limitCents` or better, posting collateral for all of them (50% of the mark each; CBX counts at half, up to 30%). All units are borrowed or none unless `allowPartial`. A partial sale opens with the units sold. Returns `{ positionId, matched, units }`.
VaultMarketsAPI.createVaultMarketShort() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketLongResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSupplyBatchLabel**
```swift
    open class func createVaultMarketSupplyBatchLabel(id: String, completion: @escaping (_ data: GetVaultMarketSupplyBatchResponse?, _ error: Error?) -> Void)
```

Buy a box's prepaid label again after it failed (for example once a ship-from address is saved). A box that has a label keeps it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy a box's prepaid label again after it failed (for example once a ship-from address is saved). A box that has a label keeps it.
VaultMarketsAPI.createVaultMarketSupplyBatchLabel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketSupplyBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSupplyInvite**
```swift
    open class func createVaultMarketSupplyInvite(id: String, completion: @escaping (_ data: IdStatusResponse?, _ error: Error?) -> Void)
```

Accept or decline a Market Open invite (`accept`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept or decline a Market Open invite (`accept`).
VaultMarketsAPI.createVaultMarketSupplyInvite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**IdStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketSupplySend**
```swift
    open class func createVaultMarketSupplySend(completion: @escaping (_ data: CreateVaultMarketSupplySendResponse?, _ error: Error?) -> Void)
```

Send inventory items matched to a catalogue variant to the vault as one box: each becomes an inbound vault unit, and the box gets one prepaid inbound label (a PDF to print). Optional: auto-list each unit in the vault book at a share of the mark once stored, and lend when idle. Items that cannot go say why. Crosslisted listings stay live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Send inventory items matched to a catalogue variant to the vault as one box: each becomes an inbound vault unit, and the box gets one prepaid inbound label (a PDF to print). Optional: auto-list each unit in the vault book at a share of the mark once stored, and lend when idle. Items that cannot go say why. Crosslisted listings stay live.
VaultMarketsAPI.createVaultMarketSupplySend() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketSupplySendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTerm**
```swift
    open class func createVaultMarketTerm(completion: @escaping (_ data: TermsVersionResponse?, _ error: Error?) -> Void)
```

Accept the current lending terms (needed to lend or short). Returns `{ termsVersion }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Accept the current lending terms (needed to lend or short). Returns `{ termsVersion }`.
VaultMarketsAPI.createVaultMarketTerm() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**TermsVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodClaimObject**
```swift
    open class func createVaultMarketTodClaimObject(id: String, completion: @escaping (_ data: CreateVaultMarketTodClaimObjectResponse?, _ error: Error?) -> Void)
```

Stop a transfer-on-death claim made on your own account. Returns `{ id, status, estateUnlocked }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop a transfer-on-death claim made on your own account. Returns `{ id, status, estateUnlocked }`.
VaultMarketsAPI.createVaultMarketTodClaimObject(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketTodClaimObjectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodMyClaim**
```swift
    open class func createVaultMarketTodMyClaim(completion: @escaping (_ data: CreateVaultMarketTodMyClaimResponse?, _ error: Error?) -> Void)
```

Start a claim as a named beneficiary (ID first), naming the account holder by @username or email. It stays a draft until you add documents and submit. Returns `{ id, status, existing }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a claim as a named beneficiary (ID first), naming the account holder by @username or email. It stays a draft until you add documents and submit. Returns `{ id, status, existing }`.
VaultMarketsAPI.createVaultMarketTodMyClaim() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketTodMyClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodMyClaimDocument**
```swift
    open class func createVaultMarketTodMyClaimDocument(id: String, completion: @escaping (_ data: CreateVaultMarketTodMyClaimDocumentResponse?, _ error: Error?) -> Void)
```

Add one document to a draft claim (or one ops asked more of): kind, filename and the file as base64 (PDF, JPEG or PNG, up to 8 MB). Kept privately for ops review. Returns `{ id, kind, label, filename, bytes }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add one document to a draft claim (or one ops asked more of): kind, filename and the file as base64 (PDF, JPEG or PNG, up to 8 MB). Kept privately for ops review. Returns `{ id, kind, label, filename, bytes }`.
VaultMarketsAPI.createVaultMarketTodMyClaimDocument(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketTodMyClaimDocumentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodMyClaimSubmit**
```swift
    open class func createVaultMarketTodMyClaimSubmit(id: String, completion: @escaping (_ data: IdStatusResponse?, _ error: Error?) -> Void)
```

Send a claim for ops review (it needs a death certificate). The account holder is told and can stop it. Returns `{ id, status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Send a claim for ops review (it needs a death certificate). The account holder is told and can stop it. Returns `{ id, status }`.
VaultMarketsAPI.createVaultMarketTodMyClaimSubmit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**IdStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodMyClaimWithdraw**
```swift
    open class func createVaultMarketTodMyClaimWithdraw(id: String, completion: @escaping (_ data: IdStatusResponse?, _ error: Error?) -> Void)
```

Withdraw a claim before it is released. Returns `{ id, status }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw a claim before it is released. Returns `{ id, status }`.
VaultMarketsAPI.createVaultMarketTodMyClaimWithdraw(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**IdStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketTodTerm**
```swift
    open class func createVaultMarketTodTerm(completion: @escaping (_ data: TermsVersionResponse?, _ error: Error?) -> Void)
```

Accept the current transfer-on-death terms. Returns `{ termsVersion }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Accept the current transfer-on-death terms. Returns `{ termsVersion }`.
VaultMarketsAPI.createVaultMarketTodTerm() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**TermsVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketUnitEvidenceScan**
```swift
    open class func createVaultMarketUnitEvidenceScan(id: String, completion: @escaping (_ data: GetVaultMarketUnitEvidenceResponse?, _ error: Error?) -> Void)
```

Add a finished scan of your own (`captureId`, of the same catalogue item) to your vault unit. Shown as added by the owner, not as intake evidence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add a finished scan of your own (`captureId`, of the same catalogue item) to your vault unit. Shown as added by the owner, not as intake evidence.
VaultMarketsAPI.createVaultMarketUnitEvidenceScan(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketUnitEvidenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketUnitSellNow**
```swift
    open class func createVaultMarketUnitSellNow(id: String, completion: @escaping (_ data: CreateVaultMarketInstantExitResponse?, _ error: Error?) -> Void)
```

Sell one unit of this item now into the best bid (Instant Exit: an immediate-or-cancel pro order), never below `minCents`. Returns `{ status: filled | missed, filledCents, quote, order }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Sell one unit of this item now into the best bid (Instant Exit: an immediate-or-cancel pro order), never below `minCents`. Returns `{ status: filled | missed, filledCents, quote, order }`.
VaultMarketsAPI.createVaultMarketUnitSellNow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultMarketInstantExitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketValuationStatement**
```swift
    open class func createVaultMarketValuationStatement(completion: @escaping (_ data: CreateVaultMarketValuationStatementResponse?, _ error: Error?) -> Void)
```

Issue an insurance or appraisal statement for a day: frozen with the sha256 of its record, sealed in the Crossly audit chain, with a public verify link. preparedFor and policyRef are printed on it and never shown on verify. Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Issue an insurance or appraisal statement for a day: frozen with the sha256 of its record, sealed in the Crossly audit chain, with a public verify link. preparedFor and policyRef are printed on it and never shown on verify. Moves no money.
VaultMarketsAPI.createVaultMarketValuationStatement() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketValuationStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketWatchlist**
```swift
    open class func createVaultMarketWatchlist(completion: @escaping (_ data: CreateVaultMarketWatchlistResponse?, _ error: Error?) -> Void)
```

Watch a book key. Returns `{ bookKey, watching }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Watch a book key. Returns `{ bookKey, watching }`.
VaultMarketsAPI.createVaultMarketWatchlist() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketWatchlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketWidgetToken**
```swift
    open class func createVaultMarketWidgetToken(completion: @escaping (_ data: CreateVaultMarketWidgetTokenResponse?, _ error: Error?) -> Void)
```

Mint a widget token for one phone (`deviceName`, `installId`); minting again with the same pair replaces that phone token. The token reads the widget summary and nothing else, and is returned once. At most five phones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Mint a widget token for one phone (`deviceName`, `installId`); minting again with the same pair replaces that phone token. The token reads the widget summary and nothing else, and is returned once. At most five phones.
VaultMarketsAPI.createVaultMarketWidgetToken() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketWidgetTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultReceiptTokenConfirm**
```swift
    open class func createVaultReceiptTokenConfirm(id: String, completion: @escaping (_ data: CreateVaultReceiptTokenConfirmResponse?, _ error: Error?) -> Void)
```

After your wallet sent the export: read the chain and mark the token live once its one token exists. Pass the `signature` your wallet returned to record it (kept only if it landed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// After your wallet sent the export: read the chain and mark the token live once its one token exists. Pass the `signature` your wallet returned to record it (kept only if it landed).
VaultMarketsAPI.createVaultReceiptTokenConfirm(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultReceiptTokenConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultReceiptTokenExport**
```swift
    open class func createVaultReceiptTokenExport(completion: @escaping (_ data: CreateVaultReceiptTokenExportResponse?, _ error: Error?) -> Void)
```

Send one unit (`vaultItemId`) warehouse receipt to one of your verified Solana wallets (`wallet`) as a token, accepting the current terms (`acceptTerms`). Returns a base64 transaction already signed by the new mint and the receipts authority: your wallet pays the rent and must sign and send it within about two minutes, then call confirm. Nothing is minted until it does. Needs a verified ID; the unit must be stored, unpledged, not lent and not for sale.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Send one unit (`vaultItemId`) warehouse receipt to one of your verified Solana wallets (`wallet`) as a token, accepting the current terms (`acceptTerms`). Returns a base64 transaction already signed by the new mint and the receipts authority: your wallet pays the rent and must sign and send it within about two minutes, then call confirm. Nothing is minted until it does. Needs a verified ID; the unit must be stored, unpledged, not lent and not for sale.
VaultMarketsAPI.createVaultReceiptTokenExport() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultReceiptTokenExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultReceiptTokenRedeem**
```swift
    open class func createVaultReceiptTokenRedeem(id: String, completion: @escaping (_ data: CreateVaultReceiptTokenRedeemResponse?, _ error: Error?) -> Void)
```

Redeem a receipt token held in one of your verified Solana wallets (`wallet`): returns an unsigned base64 burn your wallet signs and sends (it also closes the token account and returns its rent to you). Once it lands, call redeem/confirm and the unit is yours in the vault. Refused while the token is frozen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Redeem a receipt token held in one of your verified Solana wallets (`wallet`): returns an unsigned base64 burn your wallet signs and sends (it also closes the token account and returns its rent to you). Once it lands, call redeem/confirm and the unit is yours in the vault. Refused while the token is frozen.
VaultMarketsAPI.createVaultReceiptTokenRedeem(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultReceiptTokenRedeemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultReceiptTokenRedeemConfirm**
```swift
    open class func createVaultReceiptTokenRedeemConfirm(id: String, completion: @escaping (_ data: CreateVaultReceiptTokenRedeemConfirmResponse?, _ error: Error?) -> Void)
```

After your wallet sent the redeem: read the chain; once the token is burned the unit moves into your vault (if it was not yours already). Pass the `signature` to record it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// After your wallet sent the redeem: read the chain; once the token is burned the unit moves into your vault (if it was not yours already). Pass the `signature` to record it.
VaultMarketsAPI.createVaultReceiptTokenRedeemConfirm(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**CreateVaultReceiptTokenRedeemConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultReceiptTokenWalletAllow**
```swift
    open class func createVaultReceiptTokenWalletAllow(completion: @escaping (_ data: CreateVaultReceiptTokenWalletAllowResponse?, _ error: Error?) -> Void)
```

Put one of your verified Solana wallets (`wallet`) on the receipt-token allow-list so it can hold and receive receipt tokens. Returns a base64 transaction already signed by the receipts authority: the wallet pays the small rent (about 0.001 SOL) and must sign and send it within about two minutes. Needs a verified ID and a wallet that passes the sanctions screen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Put one of your verified Solana wallets (`wallet`) on the receipt-token allow-list so it can hold and receive receipt tokens. Returns a base64 transaction already signed by the receipts authority: the wallet pays the small rent (about 0.001 SOL) and must sign and send it within about two minutes. Needs a verified ID and a wallet that passes the sanctions screen.
VaultMarketsAPI.createVaultReceiptTokenWalletAllow() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultReceiptTokenWalletAllowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketAgentWatch**
```swift
    open class func deleteVaultMarketAgentWatch(id: String, completion: @escaping (_ data: ListVaultMarketAgentWatchesItem?, _ error: Error?) -> Void)
```

Cancel a live price watch. Returns the watch.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a live price watch. Returns the watch.
VaultMarketsAPI.deleteVaultMarketAgentWatch(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketAgentWatchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketAlert**
```swift
    open class func deleteVaultMarketAlert(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a price alert. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a price alert. Returns `{ ok }`.
VaultMarketsAPI.deleteVaultMarketAlert(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketBullionFamilyPeg**
```swift
    open class func deleteVaultMarketBullionFamilyPeg(id: String, completion: @escaping (_ data: ListVaultMarketBullionFamilyPegsItem?, _ error: Error?) -> Void)
```

Stop a family-wide quote: every leg order comes off the book; what filled stays filled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop a family-wide quote: every leg order comes off the book; what filled stays filled.
VaultMarketsAPI.deleteVaultMarketBullionFamilyPeg(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketBullionFamilyPegsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketBullionPeg**
```swift
    open class func deleteVaultMarketBullionPeg(id: String, completion: @escaping (_ data: ListVaultMarketBullionPegsItem?, _ error: Error?) -> Void)
```

Stop a spot-pegged quote: its resting order comes off the book; what filled stays filled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop a spot-pegged quote: its resting order comes off the book; what filled stays filled.
VaultMarketsAPI.deleteVaultMarketBullionPeg(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketBullionPegsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketDealerBand**
```swift
    open class func deleteVaultMarketDealerBand(completion: @escaping (_ data: ListVaultMarketDealerBandsItem?, _ error: Error?) -> Void)
```

Stop a band on a key; its standing bid comes off.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stop a band on a key; its standing bid comes off.
VaultMarketsAPI.deleteVaultMarketDealerBand() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerBandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketEntityMember**
```swift
    open class func deleteVaultMarketEntityMember(id: String, memberId: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Admin: remove a member (or leave, yourself). An entity always keeps one admin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let memberId = "memberId_example" // String | 

// Admin: remove a member (or leave, yourself). An entity always keeps one admin.
VaultMarketsAPI.deleteVaultMarketEntityMember(id: id, memberId: memberId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **memberId** | **String** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketFollowCopyWatch**
```swift
    open class func deleteVaultMarketFollowCopyWatch(handle: String, completion: @escaping (_ data: DeleteVaultMarketFollowCopyWatchResponse?, _ error: Error?) -> Void)
```

Stop copy-watching a collector.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Stop copy-watching a collector.
VaultMarketsAPI.deleteVaultMarketFollowCopyWatch(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteVaultMarketFollowCopyWatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketIndex**
```swift
    open class func deleteVaultMarketIndex(slug: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete an index of your own. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Delete an index of your own. Returns `{ ok }`.
VaultMarketsAPI.deleteVaultMarketIndex(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketLocate**
```swift
    open class func deleteVaultMarketLocate(id: String, completion: @escaping (_ data: ListVaultMarketLocateMineItem?, _ error: Error?) -> Void)
```

Release a live locate before it lapses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Release a live locate before it lapses.
VaultMarketsAPI.deleteVaultMarketLocate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketLocateMineItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketOpeningWaitlist**
```swift
    open class func deleteVaultMarketOpeningWaitlist(slug: String, completion: @escaping (_ data: DeleteVaultMarketOpeningWaitlistResponse?, _ error: Error?) -> Void)
```

Leave a key's waitlist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Leave a key's waitlist.
VaultMarketsAPI.deleteVaultMarketOpeningWaitlist(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteVaultMarketOpeningWaitlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketPriceWidget**
```swift
    open class func deleteVaultMarketPriceWidget(id: String, completion: @escaping (_ data: DeleteVaultMarketPriceWidgetResponse?, _ error: Error?) -> Void)
```

Delete a widget. Pages that still paste it show that it is no longer available. Returns `{ id, archived }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a widget. Pages that still paste it show that it is no longer available. Returns `{ id, archived }`.
VaultMarketsAPI.deleteVaultMarketPriceWidget(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**DeleteVaultMarketPriceWidgetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketProQuote**
```swift
    open class func deleteVaultMarketProQuote(completion: @escaping (_ data: DeleteVaultMarketProQuoteResponse?, _ error: Error?) -> Void)
```

Pull your quote on a book key, or every quote. Returns `{ pulled }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Pull your quote on a book key, or every quote. Returns `{ pulled }`.
VaultMarketsAPI.deleteVaultMarketProQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**DeleteVaultMarketProQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketProfileFollow**
```swift
    open class func deleteVaultMarketProfileFollow(handle: String, completion: @escaping (_ data: CreateVaultMarketProfileFollowResponse?, _ error: Error?) -> Void)
```

Stop following someone.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Stop following someone.
VaultMarketsAPI.deleteVaultMarketProfileFollow(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateVaultMarketProfileFollowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketRecurring**
```swift
    open class func deleteVaultMarketRecurring(id: String, completion: @escaping (_ data: ListVaultMarketRecurringItem?, _ error: Error?) -> Void)
```

Stop a recurring buy for good; its history stays.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop a recurring buy for good; its history stays.
VaultMarketsAPI.deleteVaultMarketRecurring(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketRecurringItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketSetGoal**
```swift
    open class func deleteVaultMarketSetGoal(id: String, completion: @escaping (_ data: DeleteVaultMarketSetGoalResponse?, _ error: Error?) -> Void)
```

Remove a set goal. A working basket bid is cancelled first; what filled stays in your vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Remove a set goal. A working basket bid is cancelled first; what filled stays in your vault.
VaultMarketsAPI.deleteVaultMarketSetGoal(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**DeleteVaultMarketSetGoalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketShareCard**
```swift
    open class func deleteVaultMarketShareCard(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Take a share card down: its link and image stop working. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Take a share card down: its link and image stop working. Returns `{ ok }`.
VaultMarketsAPI.deleteVaultMarketShareCard(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **deleteVaultMarketSupplyRoundUp**
```swift
    open class func deleteVaultMarketSupplyRoundUp(completion: @escaping (_ data: GetVaultMarketSupplyRoundUpResponse?, _ error: Error?) -> Void)
```

Stop the round-up (its history stays; an armed buy is cancelled).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stop the round-up (its history stays; an armed buy is cancelled).
VaultMarketsAPI.deleteVaultMarketSupplyRoundUp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketSupplyRoundUpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketUnitEvidence**
```swift
    open class func deleteVaultMarketUnitEvidence(id: String, evidenceId: String, completion: @escaping (_ data: GetVaultMarketUnitEvidenceResponse?, _ error: Error?) -> Void)
```

Take back a scan you added to your vault unit (intake evidence stays).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let evidenceId = "evidenceId_example" // String | 

// Take back a scan you added to your vault unit (intake evidence stays).
VaultMarketsAPI.deleteVaultMarketUnitEvidence(id: id, evidenceId: evidenceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **evidenceId** | **String** |  | 

### Return type

**GetVaultMarketUnitEvidenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketWatchlist**
```swift
    open class func deleteVaultMarketWatchlist(completion: @escaping (_ data: CreateVaultMarketWatchlistResponse?, _ error: Error?) -> Void)
```

Stop watching a book key (`?bookKey=`). Returns `{ bookKey, watching }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stop watching a book key (`?bookKey=`). Returns `{ bookKey, watching }`.
VaultMarketsAPI.deleteVaultMarketWatchlist() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateVaultMarketWatchlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketWidgetToken**
```swift
    open class func deleteVaultMarketWidgetToken(completion: @escaping (_ data: DeleteVaultMarketWidgetTokenResponse?, _ error: Error?) -> Void)
```

Turn the widget off on every phone: revokes all your widget tokens. Returns `{ revoked }`, how many.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn the widget off on every phone: revokes all your widget tokens. Returns `{ revoked }`, how many.
VaultMarketsAPI.deleteVaultMarketWidgetToken() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**DeleteVaultMarketWidgetTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteVaultMarketWidgetTokenById**
```swift
    open class func deleteVaultMarketWidgetTokenById(id: String, completion: @escaping (_ data: DeleteVaultMarketWidgetTokenByIdResponse?, _ error: Error?) -> Void)
```

Turn the widget off on one phone: revokes that widget token at once. Only a widget token can be revoked here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Turn the widget off on one phone: revokes that widget token at once. Only a widget token can be revoked here.
VaultMarketsAPI.deleteVaultMarketWidgetTokenById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**DeleteVaultMarketWidgetTokenByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultAttestation**
```swift
    open class func getVaultAttestation(completion: @escaping (_ data: GetVaultAttestationResponse?, _ error: Error?) -> Void)
```

Vault attestations: independent physical counts, the insurance certificate (with a warning when insured value in the vault exceeds its aggregate or per-occurrence limit), SOC 1 Type II and SOC 2 reports. Each carries its signed document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Vault attestations: independent physical counts, the insurance certificate (with a warning when insured value in the vault exceeds its aggregate or per-occurrence limit), SOC 1 Type II and SOC 2 reports. Each carries its signed document.
VaultMarketsAPI.getVaultAttestation() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultAttestationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAccount**
```swift
    open class func getVaultMarketAccount(completion: @escaping (_ data: GetVaultMarketAccountResponse?, _ error: Error?) -> Void)
```

Which Vault Markets registrations are live (and the env each waits on), your custodian account, limits and balances.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Which Vault Markets registrations are live (and the env each waits on), your custodian account, limits and balances.
VaultMarketsAPI.getVaultMarketAccount() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAccountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAdl**
```swift
    open class func getVaultMarketAdl(completion: @escaping (_ data: GetVaultMarketAdlResponse?, _ error: Error?) -> Void)
```

The insurance fund (booked and free to draw), the most one event may draw before auto-deleveraging (ADL) starts, the loss waterfall in order, and the latest ADL events (no user or position ids). Money in cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The insurance fund (booked and free to draw), the most one event may draw before auto-deleveraging (ADL) starts, the loss waterfall in order, and the latest ADL events (no user or position ids). Money in cents.
VaultMarketsAPI.getVaultMarketAdl() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAdlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAdlPosition**
```swift
    open class func getVaultMarketAdlPosition(id: String, completion: @escaping (_ data: ListVaultMarketAdlPositionsItem?, _ error: Error?) -> Void)
```

One of your positions with its ADL lights (0 once it has ended).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your positions with its ADL lights (0 once it has ended).
VaultMarketsAPI.getVaultMarketAdlPosition(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketAdlPositionsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAdvanceQuote**
```swift
    open class func getVaultMarketAdvanceQuote(completion: @escaping (_ data: GetVaultMarketAdvanceQuoteResponse?, _ error: Error?) -> Void)
```

What an advance on a vault unit for sale could be: up to half of the lower of its mark and asking price, free for 60 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What an advance on a vault unit for sale could be: up to half of the lower of its mark and asking price, free for 60 days.
VaultMarketsAPI.getVaultMarketAdvanceQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAdvanceQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAgentDraft**
```swift
    open class func getVaultMarketAgentDraft(id: String, completion: @escaping (_ data: ListVaultMarketAgentDraftsItem?, _ error: Error?) -> Void)
```

One drafted order: item, side, units, limit (cents), the book when drafted, status, and the orderBody that places it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One drafted order: item, side, units, limit (cents), the book when drafted, status, and the orderBody that places it.
VaultMarketsAPI.getVaultMarketAgentDraft(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketAgentDraftsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAlertPref**
```swift
    open class func getVaultMarketAlertPref(completion: @escaping (_ data: GetVaultMarketAlertPrefResponse?, _ error: Error?) -> Void)
```

Your vault alert settings: every kind (price, fill, margin_call, adl, p2p_loan, auction, market_open, receipt_token, set_goal, follow, account), every channel (push, telegram, terminal, email, webhook) with whether it is set up, the full on/off grid, the locked switches (a critical kind always pushes) and quiet hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault alert settings: every kind (price, fill, margin_call, adl, p2p_loan, auction, market_open, receipt_token, set_goal, follow, account), every channel (push, telegram, terminal, email, webhook) with whether it is set up, the full on/off grid, the locked switches (a critical kind always pushes) and quiet hours.
VaultMarketsAPI.getVaultMarketAlertPref() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAlertPrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAuctionLot**
```swift
    open class func getVaultMarketAuctionLot(id: String, completion: @escaping (_ data: GetVaultMarketAuctionLotResponse?, _ error: Error?) -> Void)
```

One lot: the price showing, the next minimum bid, whether a reserve exists and is met, the end (extended by late bids), the bid history and your standing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One lot: the price showing, the next minimum bid, whether a reserve exists and is met, the end (extended by late bids), the bid history and your standing.
VaultMarketsAPI.getVaultMarketAuctionLot(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketAuctionLotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketAuctionMine**
```swift
    open class func getVaultMarketAuctionMine(completion: @escaping (_ data: GetVaultMarketAuctionMineResponse?, _ error: Error?) -> Void)
```

Lots you consigned (with your reserve) and lots you bid on (with your maximum and whether you lead).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Lots you consigned (with your reserve) and lots you bid on (with your maximum and whether you lead).
VaultMarketsAPI.getVaultMarketAuctionMine() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAuctionMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketBlock**
```swift
    open class func getVaultMarketBlock(orderId: String, completion: @escaping (_ data: ListVaultMarketBlocksItem?, _ error: Error?) -> Void)
```

One block order: its order, plan lines (planned and allocated units, average price, cash share, status).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let orderId = "orderId_example" // String | 

// One block order: its order, plan lines (planned and allocated units, average price, cash share, status).
VaultMarketsAPI.getVaultMarketBlock(orderId: orderId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String** |  | 

### Return type

**ListVaultMarketBlocksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketBullionFor**
```swift
    open class func getVaultMarketBullionFor(completion: @escaping (_ data: GetVaultMarketBullionForResponse?, _ error: Error?) -> Void)
```

The bullion key families one book key belongs to, with spot for its metal as a labelled reference and its melt value at that spot. Empty families when the item is not keyed bullion.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The bullion key families one book key belongs to, with spot for its metal as a labelled reference and its melt value at that spot. Empty families when the item is not keyed bullion.
VaultMarketsAPI.getVaultMarketBullionFor() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketBullionForResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketBullionKey**
```swift
    open class func getVaultMarketBullionKey(slug: String, completion: @escaping (_ data: GetVaultMarketBullionKeyResponse?, _ error: Error?) -> Void)
```

One bullion key family: its catalogue products, every live book key with best bid, best ask, vault units and its mark (from the book only), live pegged quote counts, and spot as a labelled reference.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One bullion key family: its catalogue products, every live book key with best bid, best ask, vault units and its mark (from the book only), live pegged quote counts, and spot as a labelled reference.
VaultMarketsAPI.getVaultMarketBullionKey(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketBullionKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketBullionPegPreview**
```swift
    open class func getVaultMarketBullionPegPreview(completion: @escaping (_ data: GetVaultMarketBullionPegPreviewResponse?, _ error: Error?) -> Void)
```

The price a spot-pegged quote would rest at now (spot plus a premium in cents or basis points, clamped to floor and cap). No price when spot is stale or missing: such a quote waits off the book.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The price a spot-pegged quote would rest at now (spot plus a premium in cents or basis points, clamped to floor and cap). No price when spot is stale or missing: such a quote waits off the book.
VaultMarketsAPI.getVaultMarketBullionPegPreview() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketBullionPegPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCall**
```swift
    open class func getVaultMarketCall(bookKey: String, completion: @escaping (_ data: GetVaultMarketCallResponse?, _ error: Error?) -> Void)
```

Recent call-auction uncrosses on a book key: kind (open, reopen, periodic, daily, buy-in, sell-off), clearing price in cents and units.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// Recent call-auction uncrosses on a book key: kind (open, reopen, periodic, daily, buy-in, sell-off), clearing price in cents and units.
VaultMarketsAPI.getVaultMarketCall(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketCallResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCapacity**
```swift
    open class func getVaultMarketCapacity(completion: @escaping (_ data: GetVaultMarketCapacityResponse?, _ error: Error?) -> Void)
```

Capacity from the book: `bookKey` (+ `units`) gives ADV, depth within ±5% of the mark, vault stock, lendable units and days to liquidate at 20% of ADV; `index` + `notional` (cents) gives how much of the basket the asks fill now and the days the rest needs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Capacity from the book: `bookKey` (+ `units`) gives ADV, depth within ±5% of the mark, vault stock, lendable units and days to liquidate at 20% of ADV; `index` + `notional` (cents) gives how much of the basket the asks fill now and the days the rest needs.
VaultMarketsAPI.getVaultMarketCapacity() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCapacityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketChannel**
```swift
    open class func getVaultMarketChannel(completion: @escaping (_ data: GetVaultMarketChannelResponse?, _ error: Error?) -> Void)
```

Your Vault Markets channel switches: Telegram alerts and digest, the daily cap on vault nudges by push (default 5), whether a Telegram chat is linked, and how many nudges went out today.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Vault Markets channel switches: Telegram alerts and digest, the daily cap on vault nudges by push (default 5), whether a Telegram chat is linked, and how many nudges went out today.
VaultMarketsAPI.getVaultMarketChannel() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketChannelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCompare**
```swift
    open class func getVaultMarketCompare(completion: @escaping (_ data: GetVaultMarketCompareResponse?, _ error: Error?) -> Void)
```

Up to 5 book keys and/or index slugs (`items`, comma-separated) as daily series on the same days, each rebased to 100.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Up to 5 book keys and/or index slugs (`items`, comma-separated) as daily series on the same days, each rebased to 100.
VaultMarketsAPI.getVaultMarketCompare() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCompareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketConfirmation**
```swift
    open class func getVaultMarketConfirmation(tradeId: String, completion: @escaping (_ data: GetVaultMarketConfirmationResponse?, _ error: Error?) -> Void)
```

One trade confirmation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let tradeId = "tradeId_example" // String | 

// One trade confirmation.
VaultMarketsAPI.getVaultMarketConfirmation(tradeId: tradeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradeId** | **String** |  | 

### Return type

**GetVaultMarketConfirmationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketConfirmationPdf**
```swift
    open class func getVaultMarketConfirmationPdf(tradeId: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

One trade confirmation as a PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let tradeId = "tradeId_example" // String | 

// One trade confirmation as a PDF.
VaultMarketsAPI.getVaultMarketConfirmationPdf(tradeId: tradeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradeId** | **String** |  | 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCorrelation**
```swift
    open class func getVaultMarketCorrelation(completion: @escaping (_ data: GetVaultMarketCorrelationResponse?, _ error: Error?) -> Void)
```

The correlation matrix of the sector indexes' weekly returns over `weeks` (default 52), pairwise-complete, with n per pair; a pair under 26 shared weeks has no number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The correlation matrix of the sector indexes' weekly returns over `weeks` (default 52), pairwise-complete, with n per pair; a pair under 26 shared weeks has no number.
VaultMarketsAPI.getVaultMarketCorrelation() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCorrelationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCreatorAttribution**
```swift
    open class func getVaultMarketCreatorAttribution(completion: @escaping (_ data: GetVaultMarketCreatorAttributionResponse?, _ error: Error?) -> Void)
```

The creator who brought you to Vault Markets, when one did: when it started and ends, whether it still earns, and the disclosure. Your prices and fees are the same either way.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The creator who brought you to Vault Markets, when one did: when it started and ends, whether it still earns, and the disclosure. Your prices and fees are the same either way.
VaultMarketsAPI.getVaultMarketCreatorAttribution() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreatorAttributionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCreatorDashboard**
```swift
    open class func getVaultMarketCreatorDashboard(completion: @escaping (_ data: GetVaultMarketCreatorDashboardResponse?, _ error: Error?) -> Void)
```

For creators: whether you joined the programme, each of your codes with traders attributed and still earning (counts only), shares accrued, paid and voided (cents) and the latest shares.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// For creators: whether you joined the programme, each of your codes with traders attributed and still earning (counts only), shares accrued, paid and voided (cents) and the latest shares.
VaultMarketsAPI.getVaultMarketCreatorDashboard() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreatorDashboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCreatorProgramme**
```swift
    open class func getVaultMarketCreatorProgramme(completion: @escaping (_ data: GetVaultMarketCreatorProgrammeResponse?, _ error: Error?) -> Void)
```

The Vault Markets creator programme: the share of the fee Crossly keeps that a creator earns, the per-fill and lifetime caps (cents), the attribution window in days, the 2% net floor it sits under, and the disclosure words.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Vault Markets creator programme: the share of the fee Crossly keeps that a creator earns, the per-fill and lifetime caps (cents), the attribution window in days, the 2% net floor it sits under, and the disclosure words.
VaultMarketsAPI.getVaultMarketCreatorProgramme() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreatorProgrammeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCreatorRoom**
```swift
    open class func getVaultMarketCreatorRoom(completion: @escaping (_ data: GetVaultMarketCreatorRoomResponse?, _ error: Error?) -> Void)
```

For creators: your vault shelf room (applied, verified, rejected or paused) and whether your public vault profile is on, which the room needs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// For creators: your vault shelf room (applied, verified, rejected or paused) and whether your public vault profile is on, which the room needs.
VaultMarketsAPI.getVaultMarketCreatorRoom() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketCreatorRoomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketCredit**
```swift
    open class func getVaultMarketCredit(id: String, completion: @escaping (_ data: GetVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

One loan or advance with its pledged units and its money log (draws, interest, repayments, sale proceeds).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One loan or advance with its pledged units and its money log (draws, interest, repayments, sale proceeds).
VaultMarketsAPI.getVaultMarketCredit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDcm**
```swift
    open class func getVaultMarketDcm(completion: @escaping (_ data: GetVaultMarketDcmResponse?, _ error: Error?) -> Void)
```

The partner exchange (DCM) that lists and clears futures and options on Crossly indexes (needs VAULT_INDEX_DCM + VAULT_INDEX_DCM_API_URL + VAULT_INDEX_DCM_API_KEY), and its contracts as last read: perps, futures and options with the index each settles on, multiplier, tick, expiry and strike. Read-only: Crossly is the licensor and data provider, never the venue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The partner exchange (DCM) that lists and clears futures and options on Crossly indexes (needs VAULT_INDEX_DCM + VAULT_INDEX_DCM_API_URL + VAULT_INDEX_DCM_API_KEY), and its contracts as last read: perps, futures and options with the index each settles on, multiplier, tick, expiry and strike. Read-only: Crossly is the licensor and data provider, never the venue.
VaultMarketsAPI.getVaultMarketDcm() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketDcmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDcmContract**
```swift
    open class func getVaultMarketDcmContract(symbol: String, completion: @escaping (_ data: GetVaultMarketDcmContractResponse?, _ error: Error?) -> Void)
```

One partner contract: its spec, its funding prints (newest first; the partner computes and settles funding), annualised funding over the last 21 prints, and the Crossly index level it settles on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let symbol = "symbol_example" // String | 

// One partner contract: its spec, its funding prints (newest first; the partner computes and settles funding), annualised funding over the last 21 prints, and the Crossly index level it settles on.
VaultMarketsAPI.getVaultMarketDcmContract(symbol: symbol) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String** |  | 

### Return type

**GetVaultMarketDcmContractResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDcmContractBook**
```swift
    open class func getVaultMarketDcmContractBook(symbol: String, completion: @escaping (_ data: GetVaultMarketDcmContractBookResponse?, _ error: Error?) -> Void)
```

The partner exchange live order book for a contract (cached 5 seconds), with mark, index, last, open interest, 24 h volume, spread in bps and the basis of its mark over the Crossly index in bps. Prices are index points.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let symbol = "symbol_example" // String | 

// The partner exchange live order book for a contract (cached 5 seconds), with mark, index, last, open interest, 24 h volume, spread in bps and the basis of its mark over the Crossly index in bps. Prices are index points.
VaultMarketsAPI.getVaultMarketDcmContractBook(symbol: symbol) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String** |  | 

### Return type

**GetVaultMarketDcmContractBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDcmOptionsInput**
```swift
    open class func getVaultMarketDcmOptionsInput(slug: String, completion: @escaping (_ data: GetVaultMarketDcmOptionsInputResponse?, _ error: Error?) -> Void)
```

Options inputs for an index (indexes only, never a single item): Crossly realised volatility (raw and Geltner-desmoothed, from weekly returns), the forward (the partner future mark, else the Crossly close), Black-76 greeks on a strike x expiry grid and on every option the partner lists on the index. Model inputs, not quotes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Options inputs for an index (indexes only, never a single item): Crossly realised volatility (raw and Geltner-desmoothed, from weekly returns), the forward (the partner future mark, else the Crossly close), Black-76 greeks on a strike x expiry grid and on every option the partner lists on the index. Model inputs, not quotes.
VaultMarketsAPI.getVaultMarketDcmOptionsInput(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketDcmOptionsInputResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDcmPosition**
```swift
    open class func getVaultMarketDcmPosition(completion: @escaping (_ data: GetVaultMarketDcmPositionResponse?, _ error: Error?) -> Void)
```

The partner exchange account linked to your account (or to the firm sub-account `subaccountId`) and its positions, read-only (cached 15 seconds); index futures on category indexes count as portfolio-margin hedges for that account: contracts, side, entry and mark price, unrealised P&L and margin in cents, liquidation price and notional in cents. Not linked: `linked: false`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The partner exchange account linked to your account (or to the firm sub-account `subaccountId`) and its positions, read-only (cached 15 seconds); index futures on category indexes count as portfolio-margin hedges for that account: contracts, side, entry and mark price, unrealised P&L and margin in cents, liquidation price and notional in cents. Not linked: `linked: false`.
VaultMarketsAPI.getVaultMarketDcmPosition() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketDcmPositionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDealer**
```swift
    open class func getVaultMarketDealer(completion: @escaping (_ data: GetVaultMarketDealerResponse?, _ error: Error?) -> Void)
```

Your dealer status (applied, approved, revoked) and your Instant Exit bands.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your dealer status (applied, approved, revoked) and your Instant Exit bands.
VaultMarketsAPI.getVaultMarketDealer() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketDealerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDealerPool**
```swift
    open class func getVaultMarketDealerPool(id: String, completion: @escaping (_ data: ListVaultMarketDealerPoolsItem?, _ error: Error?) -> Void)
```

One of your curve pools, with its ladder and live legs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your curve pools, with its ladder and live legs.
VaultMarketsAPI.getVaultMarketDealerPool(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketDealerPoolsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketDigestPreview**
```swift
    open class func getVaultMarketDigestPreview(completion: @escaping (_ data: GetVaultMarketDigestPreviewResponse?, _ error: Error?) -> Void)
```

This week's vault digest as it would go out: units at the display marks (unmarked units counted, not valued), the like-for-like change from a week ago, offers on your units, watched keys that got a first mark, and one Learn card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// This week's vault digest as it would go out: units at the display marks (unmarked units counted, not valued), the like-for-like change from a week ago, offers on your units, watched keys that got a first mark, and one Learn card.
VaultMarketsAPI.getVaultMarketDigestPreview() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketDigestPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketEntity**
```swift
    open class func getVaultMarketEntity(completion: @escaping (_ data: GetVaultMarketEntityResponse?, _ error: Error?) -> Void)
```

The entities (funds, LLCs, trusts, SPVs) you belong to, and invitations waiting for you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The entities (funds, LLCs, trusts, SPVs) you belong to, and invitations waiting for you.
VaultMarketsAPI.getVaultMarketEntity() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketEntityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketEntityById**
```swift
    open class func getVaultMarketEntityById(id: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

One entity: members and roles, sub-accounts with their limits, firm halts, caps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One entity: members and roles, sub-accounts with their limits, firm halts, caps.
VaultMarketsAPI.getVaultMarketEntityById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketEstimate**
```swift
    open class func getVaultMarketEstimate(bookKey: String, completion: @escaping (_ data: GetVaultMarketEstimateResponse?, _ error: Error?) -> Void)
```

The Crossly Estimate for a book key — a model, not a price. Method (own trades, index-adjusted last trade, grade ratio), cents with 68% and 95% bands, High/Medium/Low from the walk-forward backtest's FSD, and n. Hidden (`available: false`) under 50 backtested trades or when FSD > 0.30. Never used for margin, loans or settlement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// The Crossly Estimate for a book key — a model, not a price. Method (own trades, index-adjusted last trade, grade ratio), cents with 68% and 95% bands, High/Medium/Low from the walk-forward backtest's FSD, and n. Hidden (`available: false`) under 50 backtested trades or when FSD > 0.30. Never used for margin, loans or settlement.
VaultMarketsAPI.getVaultMarketEstimate(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketExecutionQuality**
```swift
    open class func getVaultMarketExecutionQuality(completion: @escaping (_ data: GetVaultMarketExecutionQualityResponse?, _ error: Error?) -> Void)
```

The quarterly execution-quality report (Rule 605 style): fill rates, speed, effective vs quoted spread and shortfall by order type and size, and the busiest keys. `quarter` like 2026-Q4; the current quarter is provisional.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The quarterly execution-quality report (Rule 605 style): fill rates, speed, effective vs quoted spread and shortfall by order type and size, and the busiest keys. `quarter` like 2026-Q4; the current quarter is provisional.
VaultMarketsAPI.getVaultMarketExecutionQuality() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketExecutionQualityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketFeeQuote**
```swift
    open class func getVaultMarketFeeQuote(completion: @escaping (_ data: GetVaultMarketFeeQuoteResponse?, _ error: Error?) -> Void)
```

Your fee for an order at a price: as maker (the order rests) and as taker (it fills at once), with the programme that sets your rate and any Crossly One trim. A buyer's fee is added to the price; a seller's comes out of the proceeds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your fee for an order at a price: as maker (the order rests) and as taker (it fills at once), with the programme that sets your rate and any Crossly One trim. A buyer's fee is added to the price; a seller's comes out of the proceeds.
VaultMarketsAPI.getVaultMarketFeeQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketFeeQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketFeeSchedule**
```swift
    open class func getVaultMarketFeeSchedule(completion: @escaping (_ data: GetVaultMarketFeeScheduleResponse?, _ error: Error?) -> Void)
```

The fee schedule by role: maker and taker rates for retail, 30-day volume, Registered LPs and DMMs, the CBX discount, the referral share and the 2% net floor Crossly always keeps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The fee schedule by role: maker and taker rates for retail, 30-day volume, Registered LPs and DMMs, the CBX discount, the referral share and the 2% net floor Crossly always keeps.
VaultMarketsAPI.getVaultMarketFeeSchedule() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketFeeScheduleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketFollowSharing**
```swift
    open class func getVaultMarketFollowSharing(completion: @escaping (_ data: GetVaultMarketFollowSharingResponse?, _ error: Error?) -> Void)
```

Your sharing switches: the public vault profile, new buys, units sent in, sales, Hall loans, bids and asks for copy-watchers, and the leaderboards. All off until you turn them on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your sharing switches: the public vault profile, new buys, units sent in, sales, Hall loans, bids and asks for copy-watchers, and the leaderboards. All off until you turn them on.
VaultMarketsAPI.getVaultMarketFollowSharing() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketFollowSharingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketGemRate**
```swift
    open class func getVaultMarketGemRate(bookKey: String, completion: @escaping (_ data: GetVaultMarketGemRateResponse?, _ error: Error?) -> Void)
```

The Crossly gem rate: of cards graded through Crossly, the share that came back at each grader's gem grade, for this item and its category, with a Wilson 95% band. 10 returns per grader or no number. Not a grader population report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// The Crossly gem rate: of cards graded through Crossly, the share that came back at each grader's gem grade, for this item and its category, with a Wilson 95% band. 10 returns per grader or no number. Not a grader population report.
VaultMarketsAPI.getVaultMarketGemRate(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketGemRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketGradeToVault**
```swift
    open class func getVaultMarketGradeToVault(id: String, completion: @escaping (_ data: ListVaultMarketGradeToVaultItem?, _ error: Error?) -> Void)
```

One Grade to Vault flow, brought up to date with its submission and unit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One Grade to Vault flow, brought up to date with its submission and unit.
VaultMarketsAPI.getVaultMarketGradeToVault(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketGradeToVaultItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketGradeToVaultCandidate**
```swift
    open class func getVaultMarketGradeToVaultCandidate(completion: @escaping (_ data: GetVaultMarketGradeToVaultCandidateResponse?, _ error: Error?) -> Void)
```

What you can start Grade to Vault on: raw inventory matched to a catalogue item, and raw vault units on the grading hub shelf; plus whether Grading Runs are open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you can start Grade to Vault on: raw inventory matched to a catalogue item, and raw vault units on the grading hub shelf; plus whether Grading Runs are open.
VaultMarketsAPI.getVaultMarketGradeToVaultCandidate() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketGradeToVaultCandidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketGradingSignal**
```swift
    open class func getVaultMarketGradingSignal(completion: @escaping (_ data: GetVaultMarketGradingSignalResponse?, _ error: Error?) -> Void)
```

For a raw book key: the marks of the same item's graded keys, the spread over raw, grading cost per grader, the margin tier grading lifts it to, your raw vault units it pays to grade, and where to act.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// For a raw book key: the marks of the same item's graded keys, the spread over raw, grading cost per grader, the margin tier grading lifts it to, your raw vault units it pays to grade, and where to act.
VaultMarketsAPI.getVaultMarketGradingSignal() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketGradingSignalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketHallLoan**
```swift
    open class func getVaultMarketHallLoan(completion: @escaping (_ data: GetVaultMarketHallLoanResponse?, _ error: Error?) -> Void)
```

Your Hall of Grails desk: this week's exhibition, the rules (maxLive loans, shownPerHolder per exhibition, repPoints per exhibition shown), reputation (exhibitions finished), your loans (status active, ending or ended; onShowNow, showingUntil, exhibitions, the next exhibition it fits, the Lent to the Hall badge) and the vault units you could lend (canLend, or the blocker in words, and the next exhibition each fits). Display only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Hall of Grails desk: this week's exhibition, the rules (maxLive loans, shownPerHolder per exhibition, repPoints per exhibition shown), reputation (exhibitions finished), your loans (status active, ending or ended; onShowNow, showingUntil, exhibitions, the next exhibition it fits, the Lent to the Hall badge) and the vault units you could lend (canLend, or the blocker in words, and the next exhibition each fits). Display only.
VaultMarketsAPI.getVaultMarketHallLoan() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketHallLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketHealth**
```swift
    open class func getVaultMarketHealth(completion: @escaping (_ data: GetVaultMarketHealthResponse?, _ error: Error?) -> Void)
```

Portfolio health of your vault holdings at Crossly marks: concentration by single item, category, grade and grader (shares, HHI on 0 to 10000, its band and effective number of holdings), value by liquidity tier, the stress grid (each category and everything down 10, 20 and 30 percent), value by mark quality, plain observations, and the held items a what-if can run on. Information only, not advice.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Portfolio health of your vault holdings at Crossly marks: concentration by single item, category, grade and grader (shares, HHI on 0 to 10000, its band and effective number of holdings), value by liquidity tier, the stress grid (each category and everything down 10, 20 and 30 percent), value by mark quality, plain observations, and the held items a what-if can run on. Information only, not advice.
VaultMarketsAPI.getVaultMarketHealth() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketHealthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketHealthWhatIf**
```swift
    open class func getVaultMarketHealthWhatIf(bookKey: String, moveBps: Int, completion: @escaping (_ data: GetVaultMarketHealthWhatIfResponse?, _ error: Error?) -> Void)
```

What if one held item moved by moveBps (-10000 to 10000 basis points of its mark): the item, your vault total, the item and its category share of the vault, and the single-item HHI, before and after. A scenario on the mark, not a price you could sell at.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 
let moveBps = 987 // Int | 

// What if one held item moved by moveBps (-10000 to 10000 basis points of its mark): the item, your vault total, the item and its category share of the vault, and the single-item HHI, before and after. A scenario on the mark, not a price you could sell at.
VaultMarketsAPI.getVaultMarketHealthWhatIf(bookKey: bookKey, moveBps: moveBps) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 
 **moveBps** | **Int** |  | 

### Return type

**GetVaultMarketHealthWhatIfResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketHomeUnit**
```swift
    open class func getVaultMarketHomeUnit(completion: @escaping (_ data: GetVaultMarketHomeUnitResponse?, _ error: Error?) -> Void)
```

\"Show my vault\": the vault units you hold, the ones standing in your Crossly World home first. Each: vaultItemId, title, grade, imageUrl, bookKey (its market), inHome, visitors (visitors to your home see it). Also your home (slug, privacy, path), max units one home shows, shown, visitorsSee and a note on who sees what. Your home is made on first read. No prices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// \"Show my vault\": the vault units you hold, the ones standing in your Crossly World home first. Each: vaultItemId, title, grade, imageUrl, bookKey (its market), inHome, visitors (visitors to your home see it). Also your home (slug, privacy, path), max units one home shows, shown, visitorsSee and a note on who sees what. Your home is made on first read. No prices.
VaultMarketsAPI.getVaultMarketHomeUnit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketHomeUnitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndex**
```swift
    open class func getVaultMarketIndex(slug: String, completion: @escaping (_ data: GetVaultMarketIndexResponse?, _ error: Error?) -> Void)
```

One index with its daily closes (oldest first) and its level now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One index with its daily closes (oldest first) and its level now.
VaultMarketsAPI.getVaultMarketIndex(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexCalendar**
```swift
    open class func getVaultMarketIndexCalendar(completion: @escaping (_ data: GetVaultMarketIndexCalendarResponse?, _ error: Error?) -> Void)
```

The next four quarterly reviews: reference day (2nd Friday of Mar/Jun/Sep/Dec), announcement day, last close under the old membership and the effective day; June and December also review the Blue-chip 50.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The next four quarterly reviews: reference day (2nd Friday of Mar/Jun/Sep/Dec), announcement day, last close under the old membership and the effective day; June and December also review the Blue-chip 50.
VaultMarketsAPI.getVaultMarketIndexCalendar() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketIndexCalendarResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexConsultation**
```swift
    open class func getVaultMarketIndexConsultation(id: String, completion: @escaping (_ data: ListVaultMarketIndexConsultationsItem?, _ error: Error?) -> Void)
```

One consultation with its proposal, versions, dates, outcome and the public comments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One consultation with its proposal, versions, dates, outcome and the public comments.
VaultMarketsAPI.getVaultMarketIndexConsultation(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketIndexConsultationsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexFeed**
```swift
    open class func getVaultMarketIndexFeed(slug: String, completion: @escaping (_ data: GetVaultMarketIndexFeedResponse?, _ error: Error?) -> Void)
```

The licensed index feed for one built-in index (needs VAULT_INDEX_DCM + VAULT_INDEX_FEED_SECRET): the level now (intraday from A/B marks, or the last close below 50% constituent coverage), the last close, the frozen 7-day TWAP settlement value and every constituent with its mark source, quality and trade count. Signed: `x-crossly-signature: t=<ms>,v1=<hex HMAC-SHA256(secret, t + \".\" + body)>`. Every read is logged for the licence. Crossly is the licensor and data feed only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The licensed index feed for one built-in index (needs VAULT_INDEX_DCM + VAULT_INDEX_FEED_SECRET): the level now (intraday from A/B marks, or the last close below 50% constituent coverage), the last close, the frozen 7-day TWAP settlement value and every constituent with its mark source, quality and trade count. Signed: `x-crossly-signature: t=<ms>,v1=<hex HMAC-SHA256(secret, t + \".\" + body)>`. Every read is logged for the licence. Crossly is the licensor and data feed only.
VaultMarketsAPI.getVaultMarketIndexFeed(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexFeedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexFeedFunding**
```swift
    open class func getVaultMarketIndexFeedFunding(slug: String, completion: @escaping (_ data: GetVaultMarketIndexFeedFundingResponse?, _ error: Error?) -> Void)
```

Reference funding for a perpetual-style future on the index: your premium `premiumBps` (TWAP of (impact mid - index)/index) through F = P + clamp(I - P, ±0.05%) per 8 h, |F| capped at 0.5%/day, with the index level it is relative to. The partner DCM computes and settles funding; this is the reference math.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Reference funding for a perpetual-style future on the index: your premium `premiumBps` (TWAP of (impact mid - index)/index) through F = P + clamp(I - P, ±0.05%) per 8 h, |F| capped at 0.5%/day, with the index level it is relative to. The partner DCM computes and settles funding; this is the reference math.
VaultMarketsAPI.getVaultMarketIndexFeedFunding(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexFeedFundingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexFeedSettlement**
```swift
    open class func getVaultMarketIndexFeedSettlement(slug: String, completion: @escaping (_ data: GetVaultMarketIndexFeedSettlementResponse?, _ error: Error?) -> Void)
```

The frozen 7-day TWAP settlement series for a licensed index (written once a day, never restated), with the closes behind each value. Signed like the feed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The frozen 7-day TWAP settlement series for a licensed index (written once a day, never restated), with the closes behind each value. Signed like the feed.
VaultMarketsAPI.getVaultMarketIndexFeedSettlement(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexFeedSettlementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexLevel**
```swift
    open class func getVaultMarketIndexLevel(slug: String, completion: @escaping (_ data: GetVaultMarketIndexLevelResponse?, _ error: Error?) -> Void)
```

An index's daily closes (up to 5 years), oldest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// An index's daily closes (up to 5 years), oldest first.
VaultMarketsAPI.getVaultMarketIndexLevel(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexLevelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexLicenceUsage**
```swift
    open class func getVaultMarketIndexLicenceUsage(completion: @escaping (_ data: GetVaultMarketIndexLicenceUsageResponse?, _ error: Error?) -> Void)
```

Your licensed index feed reads over `days`, per index and endpoint (licence-usage report).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your licensed index feed reads over `days`, per index and endpoint (licence-usage report).
VaultMarketsAPI.getVaultMarketIndexLicenceUsage() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketIndexLicenceUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketIndexMethodology**
```swift
    open class func getVaultMarketIndexMethodology(completion: @escaping (_ data: GetVaultMarketIndexMethodologyResponse?, _ error: Error?) -> Void)
```

The index method in machine-readable form: version (semver), inputs, weightings and caps, the family and its screens, the engines and their publication gate, revisions and the settlement series, the calendar, governance and limitations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The index method in machine-readable form: version (semver), inputs, weightings and caps, the family and its screens, the engines and their publication gate, revisions and the settlement series, the calendar, governance and limitations.
VaultMarketsAPI.getVaultMarketIndexMethodology() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketIndexMethodologyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketInstantExit**
```swift
    open class func getVaultMarketInstantExit(completion: @escaping (_ data: GetVaultMarketInstantExitResponse?, _ error: Error?) -> Void)
```

The Instant Exit quote for one vault unit you hold: the best resting bid on its book key (anyone's, dealers' included), its share of the mark, the bid depth, and whether it can be taken now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Instant Exit quote for one vault unit you hold: the best resting bid on its book key (anyone's, dealers' included), its share of the mark, the bid depth, and whether it can be taken now.
VaultMarketsAPI.getVaultMarketInstantExit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketInstantExitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketJoint**
```swift
    open class func getVaultMarketJoint(completion: @escaping (_ data: GetVaultMarketJointResponse?, _ error: Error?) -> Void)
```

Your joint vaults and the invitations waiting for you, with the gate (open, missing env), the joint terms in words and what each right allows. A JointVaultsHome object, not a collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your joint vaults and the invitations waiting for you, with the gate (open, missing env), the joint terms in words and what each right allows. A JointVaultsHome object, not a collection.
VaultMarketsAPI.getVaultMarketJoint() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketJointResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketJointById**
```swift
    open class func getVaultMarketJointById(id: String, completion: @escaping (_ data: GetVaultMarketJointByIdResponse?, _ error: Error?) -> Void)
```

One joint vault (active members only): members and rights, the units in it at the mark with each owner of record, totals, recent joint trades, and the activity from the audit trail.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One joint vault (active members only): members and rights, the units in it at the mark with each owner of record, totals, recent joint trades, and the activity from the audit trail.
VaultMarketsAPI.getVaultMarketJointById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketJointByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketKeyStat**
```swift
    open class func getVaultMarketKeyStat(bookKey: String, completion: @escaping (_ data: GetVaultMarketKeyStatResponse?, _ error: Error?) -> Void)
```

Everything derived about one book key in one read: the Crossly Estimate, the liquidity score, risk statistics and the gem rate. A part that cannot be read is `{ error }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// Everything derived about one book key in one read: the Crossly Estimate, the liquidity score, risk statistics and the gem rate. A part that cannot be read is `{ error }`.
VaultMarketsAPI.getVaultMarketKeyStat(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketKeyStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLearn**
```swift
    open class func getVaultMarketLearn(completion: @escaping (_ data: GetVaultMarketLearnResponse?, _ error: Error?) -> Void)
```

The Learn hub: each concept with whether you passed its quiz. Passing earns cosmetic pins only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Learn hub: each concept with whether you passed its quiz. Passing earns cosmetic pins only.
VaultMarketsAPI.getVaultMarketLearn() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLearnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLearnByConcept**
```swift
    open class func getVaultMarketLearnByConcept(concept: String, completion: @escaping (_ data: GetVaultMarketLearnByConceptResponse?, _ error: Error?) -> Void)
```

One Learn concept: its sections and quiz questions (no answers).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let concept = "concept_example" // String | 

// One Learn concept: its sections and quiz questions (no answers).
VaultMarketsAPI.getVaultMarketLearnByConcept(concept: concept) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **concept** | **String** |  | 

### Return type

**GetVaultMarketLearnByConceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLendingElection**
```swift
    open class func getVaultMarketLendingElection(completion: @escaping (_ data: GetVaultMarketLendingElectionResponse?, _ error: Error?) -> Void)
```

Your lender election: `returnInKind` (shorts post 175% collateral, a 14-day buy-in, never cash-settled) and `allowTerm` (your units may go out on 30/90-day fixed-rate term loans, not recallable before term).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your lender election: `returnInKind` (shorts post 175% collateral, a 14-day buy-in, never cash-settled) and `allowTerm` (your units may go out on 30/90-day fixed-rate term loans, not recallable before term).
VaultMarketsAPI.getVaultMarketLendingElection() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLendingElectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLendingProgramme**
```swift
    open class func getVaultMarketLendingProgramme(completion: @escaping (_ data: GetVaultMarketLendingProgrammeResponse?, _ error: Error?) -> Void)
```

Your lender programme report: lendable units, units out, utilisation, fee revenue (accrued / paid), term loans and return-in-kind loans in force, and each loan's rate against the key's rate today.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your lender programme report: lendable units, units out, utilisation, fee revenue (accrued / paid), term loans and return-in-kind loans in force, and each loan's rate against the key's rate today.
VaultMarketsAPI.getVaultMarketLendingProgramme() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLendingProgrammeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLendingStatement**
```swift
    open class func getVaultMarketLendingStatement(completion: @escaping (_ data: GetVaultMarketLendingStatementResponse?, _ error: Error?) -> Void)
```

Your daily collateral statement as a lender (today live, or `day`): per open loan the mark and its quality, fees owed to you, the short's collateral share at the custodian and its coverage against 105% of mark + fees. A unit without a mark usable for risk shows no coverage number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your daily collateral statement as a lender (today live, or `day`): per open loan the mark and its quality, fees owed to you, the short's collateral share at the custodian and its coverage against 105% of mark + fees. A unit without a mark usable for risk shows no coverage number.
VaultMarketsAPI.getVaultMarketLendingStatement() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLendingStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLiquidity**
```swift
    open class func getVaultMarketLiquidity(bookKey: String, completion: @escaping (_ data: GetVaultMarketLiquidityResponse?, _ error: Error?) -> Void)
```

The liquidity score (0-100) of a book key and every component behind it: trades in 30/90 days, distinct counterparties, median days between trades, time-weighted quoted spread, two-sided share and depth within 5% (hourly book snapshots), Amihud and Roll. Each component is a percentile within the category. No score under the data threshold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// The liquidity score (0-100) of a book key and every component behind it: trades in 30/90 days, distinct counterparties, median days between trades, time-weighted quoted spread, two-sided share and depth within 5% (hourly book snapshots), Amihud and Roll. Each component is a percentile within the category. No score under the data threshold.
VaultMarketsAPI.getVaultMarketLiquidity(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketLiquidityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLoanQuote**
```swift
    open class func getVaultMarketLoanQuote(completion: @escaping (_ data: GetVaultMarketLoanQuoteResponse?, _ error: Error?) -> Void)
```

How much you can borrow against vault units (`vaultItemIds`, comma-separated; none = every stored unit you hold): each unit's tier, mark and limit, the pool's rate and yours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// How much you can borrow against vault units (`vaultItemIds`, comma-separated; none = every stored unit you hold): each unit's tier, mark and limit, the pool's rate and yours.
VaultMarketsAPI.getVaultMarketLoanQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLoanQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLoanUnitSaleFloor**
```swift
    open class func getVaultMarketLoanUnitSaleFloor(id: String, vaultItemId: String, completion: @escaping (_ data: GetVaultMarketLoanUnitSaleFloorResponse?, _ error: Error?) -> Void)
```

The lowest price a pledged unit can be sold at to repay its loan: after the sale (less the vault fee and storage) what is still owed must fit inside the other units' limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let vaultItemId = "vaultItemId_example" // String | 

// The lowest price a pledged unit can be sold at to repay its loan: after the sale (less the vault fee and storage) what is still owed must fit inside the other units' limit.
VaultMarketsAPI.getVaultMarketLoanUnitSaleFloor(id: id, vaultItemId: vaultItemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **vaultItemId** | **String** |  | 

### Return type

**GetVaultMarketLoanUnitSaleFloorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketLocate**
```swift
    open class func getVaultMarketLocate(completion: @escaping (_ data: GetVaultMarketLocateResponse?, _ error: Error?) -> Void)
```

A locate quote: how many units of `key` (a book key) you could borrow now (up to `qty`), the indicative rate (APR bps; `termDays` 30 or 90 for a fixed-rate term loan), and the collateral they need (150%, or 175% for units whose lenders elected return in kind only). Holds nothing; POST to hold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A locate quote: how many units of `key` (a book key) you could borrow now (up to `qty`), the indicative rate (APR bps; `termDays` 30 or 90 for a fixed-rate term loan), and the collateral they need (150%, or 175% for units whose lenders elected return in kind only). Holds nothing; POST to hold.
VaultMarketsAPI.getVaultMarketLocate() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLocateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMark**
```swift
    open class func getVaultMarketMark(bookKey: String, completion: @escaping (_ data: GetVaultMarketMarkResponse?, _ error: Error?) -> Void)
```

One book key mark with everything behind it: the price in cents, its quality (A trade-anchored, B firm two-sided, C indicative, none), its confidence in bps and the band in cents, when it was computed, whether risk may act on it (judged for margin), the related key it was implied from (impliedFrom: a grade, the model median of the other sizes, or an index; null when none), every stored input, and the learned relations it may be implied from.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// One book key mark with everything behind it: the price in cents, its quality (A trade-anchored, B firm two-sided, C indicative, none), its confidence in bps and the band in cents, when it was computed, whether risk may act on it (judged for margin), the related key it was implied from (impliedFrom: a grade, the model median of the other sizes, or an index; null when none), every stored input, and the learned relations it may be implied from.
VaultMarketsAPI.getVaultMarketMark(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketMarkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMarket**
```swift
    open class func getVaultMarketMarket(completion: @escaping (_ data: GetVaultMarketMarketResponse?, _ error: Error?) -> Void)
```

One book key (variantId:condition:gradeKey): its mark and history, lending depth and borrow rate, open interest and live auctions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// One book key (variantId:condition:gradeKey): its mark and history, lending depth and borrow rate, open interest and live auctions.
VaultMarketsAPI.getVaultMarketMarket() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMarketResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMarketModel**
```swift
    open class func getVaultMarketMarketModel(bookKey: String, completion: @escaping (_ data: GetVaultMarketMarketModelResponse?, _ error: Error?) -> Void)
```

How a book key trades: its liquidity tier (A continuous, B call auction every 15 minutes, C daily call, D listings only), the call collecting now with its indicative price and volume and nominal close, the next call, the LULD band and any limit state, pause or halt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// How a book key trades: its liquidity tier (A continuous, B call auction every 15 minutes, C daily call, D listings only), the call collecting now with its indicative price and volume and nominal close, the next call, the LULD band and any limit state, pause or halt.
VaultMarketsAPI.getVaultMarketMarketModel(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketMarketModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMm**
```swift
    open class func getVaultMarketMm(completion: @escaping (_ data: GetVaultMarketMmResponse?, _ error: Error?) -> Void)
```

Your market-maker programmes, the last 30 days of obligations, rebates earned (paid only from fees already taken), and the rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your market-maker programmes, the last 30 days of obligations, rebates earned (paid only from fees already taken), and the rules.
VaultMarketsAPI.getVaultMarketMm() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMmKey**
```swift
    open class func getVaultMarketMmKey(completion: @escaping (_ data: GetVaultMarketMmKeyResponse?, _ error: Error?) -> Void)
```

A key's designated market maker (by the name it chose) and how many LPs quote it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A key's designated market maker (by the name it chose) and how many LPs quote it.
VaultMarketsAPI.getVaultMarketMmKey() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMmKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMmMmp**
```swift
    open class func getVaultMarketMmMmp(completion: @escaping (_ data: GetVaultMarketMmMmpResponse?, _ error: Error?) -> Void)
```

Your market-maker protection: the fill trigger, the freeze, and whether you are frozen now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your market-maker protection: the fill trigger, the freeze, and whether you are frozen now.
VaultMarketsAPI.getVaultMarketMmMmp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMmMmpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketMode**
```swift
    open class func getVaultMarketMode(completion: @escaping (_ data: GetVaultMarketModeResponse?, _ error: Error?) -> Void)
```

Your Vault Markets mode: simple (buy, sell and what it is worth) or pro (the full terminal), whether you chose it or it was set for you (new people start in simple; people already trading start in pro), and when.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Vault Markets mode: simple (buy, sell and what it is worth) or pro (the full terminal), whether you chose it or it was set for you (new people start in simple; people already trading start in pro), and when.
VaultMarketsAPI.getVaultMarketMode() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketModeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketNav**
```swift
    open class func getVaultMarketNav(completion: @escaping (_ data: GetVaultMarketNavResponse?, _ error: Error?) -> Void)
```

Mark NAV, bid NAV (the resting bids) and liquidation NAV (the bids at 20% of ADV for 10 days), holding by holding, each with its ASC 820 level, mark quality and source, and your administrator's price when uploaded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Mark NAV, bid NAV (the resting bids) and liquidation NAV (the bids at 20% of ADV for 10 days), holding by holding, each with its ASC 820 level, mark quality and source, and your administrator's price when uploaded.
VaultMarketsAPI.getVaultMarketNav() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketNavResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketNavFile**
```swift
    open class func getVaultMarketNavFile(format: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

The NAV as a csv, pdf or json file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 

// The NAV as a csv, pdf or json file.
VaultMarketsAPI.getVaultMarketNavFile(format: format) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** |  | 

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketOpening**
```swift
    open class func getVaultMarketOpening(slug: String, completion: @escaping (_ data: ListVaultMarketOpeningItem?, _ error: Error?) -> Void)
```

One opening key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One opening key.
VaultMarketsAPI.getVaultMarketOpening(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketOpeningItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketOracle**
```swift
    open class func getVaultMarketOracle(completion: @escaping (_ data: GetVaultMarketOracleResponse?, _ error: Error?) -> Void)
```

Crossly as an oracle publisher (needs CROSSLY_ORACLE_PUBLISHER_KEY + CROSSLY_ORACLE_NETWORK): the network (pyth or switchboard), the ed25519 key every value is signed with, each published index feed with its latest attempt, and 24 h counts of published, skipped and failed. Only built-in indexes priced from A/B marks are published; Crossly never reads its own feed back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Crossly as an oracle publisher (needs CROSSLY_ORACLE_PUBLISHER_KEY + CROSSLY_ORACLE_NETWORK): the network (pyth or switchboard), the ed25519 key every value is signed with, each published index feed with its latest attempt, and 24 h counts of published, skipped and failed. Only built-in indexes priced from A/B marks are published; Crossly never reads its own feed back.
VaultMarketsAPI.getVaultMarketOracle() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketOracleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketOracleBySlug**
```swift
    open class func getVaultMarketOracleBySlug(slug: String, completion: @escaping (_ data: GetVaultMarketOracleBySlugResponse?, _ error: Error?) -> Void)
```

The latest published oracle value for an index: level, fixed-point price and confidence at the feed exponent, confidence in bps, staleness in seconds, coverage, the exact signed message and its ed25519 signature with the signer key, and whether it is fresh.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The latest published oracle value for an index: level, fixed-point price and confidence at the feed exponent, confidence in bps, staleness in seconds, coverage, the exact signed message and its ed25519 signature with the signer key, and whether it is fresh.
VaultMarketsAPI.getVaultMarketOracleBySlug(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketOracleBySlugResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketOrderHandling**
```swift
    open class func getVaultMarketOrderHandling(completion: @escaping (_ data: GetVaultMarketOrderHandlingResponse?, _ error: Error?) -> Void)
```

How orders are handled (the 606/607-style disclosure): one book, self-trade prevention, protected market orders, liquidations by auction, halts, dealers and fees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// How orders are handled (the 606/607-style disclosure): one book, self-trade prevention, protected market orders, liquidations by auction, halts, dealers and fees.
VaultMarketsAPI.getVaultMarketOrderHandling() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketOrderHandlingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketP2pDashboard**
```swift
    open class func getVaultMarketP2pDashboard(completion: @escaping (_ data: GetVaultMarketP2pDashboardResponse?, _ error: Error?) -> Void)
```

Peer-to-peer vault loans at a glance: what you owe as a borrower and are owed as a lender (principal + interest to the second), daily interest, called loans, your open offers, the gates and the rules (auction hours, rate ceiling, size bounds, call grace).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Peer-to-peer vault loans at a glance: what you owe as a borrower and are owed as a lender (principal + interest to the second), daily interest, called loans, your open offers, the gates and the rules (auction hours, rate ceiling, size bounds, call grace).
VaultMarketsAPI.getVaultMarketP2pDashboard() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketP2pDashboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketP2pLoan**
```swift
    open class func getVaultMarketP2pLoan(id: String, completion: @escaping (_ data: GetVaultMarketP2pLoanResponse?, _ error: Error?) -> Void)
```

One P2P loan with its money log (fund, repay, refinance). A loan in a running refinancing auction can be read by any lender, without the log.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One P2P loan with its money log (fund, repay, refinance). A loan in a running refinancing auction can be read by any lender, without the log.
VaultMarketsAPI.getVaultMarketP2pLoan(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketP2pLoanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPaper**
```swift
    open class func getVaultMarketPaper(completion: @escaping (_ data: GetVaultMarketPaperResponse?, _ error: Error?) -> Void)
```

Your paper trading account (play money only, never real or convertible; opened at $10,000 the first time): play cash, buying power, paper positions at the real marks, P&L, working paper orders, recent paper fills and this week on the leaderboard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your paper trading account (play money only, never real or convertible; opened at $10,000 the first time): play cash, buying power, paper positions at the real marks, P&L, working paper orders, recent paper fills and this week on the leaderboard.
VaultMarketsAPI.getVaultMarketPaper() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPaperResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPaperQuote**
```swift
    open class func getVaultMarketPaperQuote(completion: @escaping (_ data: GetVaultMarketPaperQuoteResponse?, _ error: Error?) -> Void)
```

What a paper order would fill against the real book now, without placing it: units fillable inside the limit (a market order uses the 5% protection band around the mark), average price, simulated fee, and the queue ahead of any rest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What a paper order would fill against the real book now, without placing it: units fillable inside the limit (a market order uses the 5% protection band around the mark), average price, simulated fee, and the queue ahead of any rest.
VaultMarketsAPI.getVaultMarketPaperQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPaperQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPartnerMe**
```swift
    open class func getVaultMarketPartnerMe(completion: @escaping (_ data: GetVaultMarketPartnerMeResponse?, _ error: Error?) -> Void)
```

Your Vault Drop-off Partnership (null when you never applied): status, partner code, fee share and cap, totals and batches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Vault Drop-off Partnership (null when you never applied): status, partner code, fee share and cap, totals and batches.
VaultMarketsAPI.getVaultMarketPartnerMe() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPartnerMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPool**
```swift
    open class func getVaultMarketPool(completion: @escaping (_ data: GetVaultMarketPoolResponse?, _ error: Error?) -> Void)
```

The CBX market staking pool: size, value, what it lends, utilisation, rate, insurance fund.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The CBX market staking pool: size, value, what it lends, utilisation, rate, insurance fund.
VaultMarketsAPI.getVaultMarketPool() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPopReport**
```swift
    open class func getVaultMarketPopReport(bookKey: String, completion: @escaping (_ data: GetVaultMarketPopReportResponse?, _ error: Error?) -> Void)
```

Grading population report for one market (`bookKey`): focus (on a graded market: its grade, pop = copies graded at exactly that grade, higher = copies graded better by the same grader, total, asOf and source), graders (each grader ladder for the card, best grade first, from one report: the newest, the population feed over a hand entry on the same date), provider.connected, and status (ok, not_synced, no_report or no_source) with explain, which says in plain words what is missing. source is provider (the population feed) or ops (entered by Crossly from the grader published report). Counts only, never a price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | variantId:condition:gradeKey, grade \"-\" when ungraded.

// Grading population report for one market (`bookKey`): focus (on a graded market: its grade, pop = copies graded at exactly that grade, higher = copies graded better by the same grader, total, asOf and source), graders (each grader ladder for the card, best grade first, from one report: the newest, the population feed over a hand entry on the same date), provider.connected, and status (ok, not_synced, no_report or no_source) with explain, which says in plain words what is missing. source is provider (the population feed) or ops (entered by Crossly from the grader published report). Counts only, never a price.
VaultMarketsAPI.getVaultMarketPopReport(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** | variantId:condition:gradeKey, grade \&quot;-\&quot; when ungraded. | 

### Return type

**GetVaultMarketPopReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPortfolio**
```swift
    open class func getVaultMarketPortfolio(completion: @escaping (_ data: GetVaultMarketPortfolioResponse?, _ error: Error?) -> Void)
```

Your vault holdings at the market price, with cost and P&L, and units you have out on loan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault holdings at the market price, with cost and P&L, and units you have out on loan.
VaultMarketsAPI.getVaultMarketPortfolio() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPortfolioResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPortfolioHistory**
```swift
    open class func getVaultMarketPortfolioHistory(completion: @escaping (_ data: GetVaultMarketPortfolioHistoryResponse?, _ error: Error?) -> Void)
```

Your Vault Markets value by day at the marks (vault units, units on loan, positions) and today's return against yesterday's close.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Vault Markets value by day at the marks (vault units, units on loan, positions) and today's return against yesterday's close.
VaultMarketsAPI.getVaultMarketPortfolioHistory() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPortfolioHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPortfolioMargin**
```swift
    open class func getVaultMarketPortfolioMargin(completion: @escaping (_ data: GetVaultMarketPortfolioMarginResponse?, _ error: Error?) -> Void)
```

Portfolio margin for a firm sub-account (`subaccountId`): eligibility with every reason (ECP, KYB, minimum equity $500k or $100k with evidenced intraday monitoring), whether it is enrolled, the latest requirement, equity, excess and state (healthy, call or buy_in), the breakdown by category and item, the partner index futures counted, and the policy. Before enrolling, a live preview.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Portfolio margin for a firm sub-account (`subaccountId`): eligibility with every reason (ECP, KYB, minimum equity $500k or $100k with evidenced intraday monitoring), whether it is enrolled, the latest requirement, equity, excess and state (healthy, call or buy_in), the breakdown by category and item, the partner index futures counted, and the policy. Before enrolling, a live preview.
VaultMarketsAPI.getVaultMarketPortfolioMargin() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPortfolioMarginResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPosition**
```swift
    open class func getVaultMarketPosition(id: String, completion: @escaping (_ data: GetVaultMarketPositionResponse?, _ error: Error?) -> Void)
```

One position with its loans, auctions and custodian instruction log.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One position with its loans, auctions and custodian instruction log.
VaultMarketsAPI.getVaultMarketPosition(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketPositionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPositionExit**
```swift
    open class func getVaultMarketPositionExit(id: String, completion: @escaping (_ data: GetVaultMarketPositionExitResponse?, _ error: Error?) -> Void)
```

A position's take-profit / stop-loss, if set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A position's take-profit / stop-loss, if set.
VaultMarketsAPI.getVaultMarketPositionExit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketPositionExitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPositionRisk**
```swift
    open class func getVaultMarketPositionRisk(id: String, completion: @escaping (_ data: ListVaultMarketPositionsRiskItem?, _ error: Error?) -> Void)
```

One position's call and liquidation marks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One position's call and liquidation marks.
VaultMarketsAPI.getVaultMarketPositionRisk(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketPositionsRiskItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPress**
```swift
    open class func getVaultMarketPress(completion: @escaping (_ data: GetVaultMarketPressResponse?, _ error: Error?) -> Void)
```

The press kit: each built-in index with level, quality, n, CSV link and a \"cite as\" line, plus the methodology links.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The press kit: each built-in index with level, quality, n, CSV link and a \"cite as\" line, plus the methodology links.
VaultMarketsAPI.getVaultMarketPress() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketPressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketPriceWidget**
```swift
    open class func getVaultMarketPriceWidget(id: String, completion: @escaping (_ data: ListVaultMarketPriceWidgetsItem?, _ error: Error?) -> Void)
```

One of your price widgets, with its iframe and script-tag snippets and URLs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your price widgets, with its iframe and script-tag snippets and URLs.
VaultMarketsAPI.getVaultMarketPriceWidget(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketPriceWidgetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProDepth**
```swift
    open class func getVaultMarketProDepth(completion: @escaping (_ data: GetVaultMarketProDepthResponse?, _ error: Error?) -> Void)
```

The L2 depth ladder: price levels and units per side, best first; asks show how many units are authenticated vault stock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The L2 depth ladder: price levels and units per side, best first; asks show how many units are authenticated vault stock.
VaultMarketsAPI.getVaultMarketProDepth() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProDepthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProOrder**
```swift
    open class func getVaultMarketProOrder(id: String, completion: @escaping (_ data: GetVaultMarketProOrderResponse?, _ error: Error?) -> Void)
```

One order with its full event log.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One order with its full event log.
VaultMarketsAPI.getVaultMarketProOrder(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketProOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProSnapshot**
```swift
    open class func getVaultMarketProSnapshot(completion: @escaping (_ data: GetVaultMarketProSnapshotResponse?, _ error: Error?) -> Void)
```

A book key's depth (20 levels a side), last 50 trades, 24 h stats, mark and any halt, in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A book key's depth (20 levels a side), last 50 trades, 24 h stats, mark and any halt, in one call.
VaultMarketsAPI.getVaultMarketProSnapshot() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProSnapshotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProStat**
```swift
    open class func getVaultMarketProStat(completion: @escaping (_ data: GetVaultMarketProStatResponse?, _ error: Error?) -> Void)
```

24 h open, high, low, last, volume and change on a book key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// 24 h open, high, low, last, volume and change on a book key.
VaultMarketsAPI.getVaultMarketProStat() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProStream**
```swift
    open class func getVaultMarketProStream(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

A long-lived text/event-stream for a book key: `snapshot` first, then `depth`, `trades`, `mark` and `halt` events as they change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A long-lived text/event-stream for a book key: `snapshot` first, then `depth`, `trades`, `mark` and `halt` events as they change.
VaultMarketsAPI.getVaultMarketProStream() { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProfile**
```swift
    open class func getVaultMarketProfile(completion: @escaping (_ data: GetVaultMarketProfileResponse?, _ error: Error?) -> Void)
```

Your public vault profile switch: on or off, whether followers see new buys, your profile URL and follower count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your public vault profile switch: on or off, whether followers see new buys, your profile URL and follower count.
VaultMarketsAPI.getVaultMarketProfile() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProfileByHandle**
```swift
    open class func getVaultMarketProfileByHandle(handle: String, completion: @escaping (_ data: GetVaultMarketProfileByHandleResponse?, _ error: Error?) -> Void)
```

Someone's public vault: each market's weight (bps of the marked value), followers, whether you follow, their recent buys (no prices).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Someone's public vault: each market's weight (bps of the marked value), followers, whether you follow, their recent buys (no prices).
VaultMarketsAPI.getVaultMarketProfileByHandle(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketProfileByHandleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProofOfReserve**
```swift
    open class func getVaultMarketProofOfReserve(completion: @escaping (_ data: GetVaultMarketProofOfReserveResponse?, _ error: Error?) -> Void)
```

Proof of reserves: the latest daily Merkle root over every unit in custody (leaf count, stored / listed / grading / withdrawing, pledged, on loan, open loans, receipts, insured value), its Solana memo anchor when VAULT_POR_ANCHOR_KEY is set, the last `days` roots, and the exact hashing method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Proof of reserves: the latest daily Merkle root over every unit in custody (leaf count, stored / listed / grading / withdrawing, pledged, on loan, open loans, receipts, insured value), its Solana memo anchor when VAULT_POR_ANCHOR_KEY is set, the last `days` roots, and the exact hashing method.
VaultMarketsAPI.getVaultMarketProofOfReserve() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProofOfReserveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProofOfReserveByDay**
```swift
    open class func getVaultMarketProofOfReserveByDay(day: String, completion: @escaping (_ data: GetVaultMarketProofOfReserveByDayResponse?, _ error: Error?) -> Void)
```

One day's proof-of-reserves snapshot (root, counts, anchor).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let day = "day_example" // String | 

// One day's proof-of-reserves snapshot (root, counts, anchor).
VaultMarketsAPI.getVaultMarketProofOfReserveByDay(day: day) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **String** |  | 

### Return type

**GetVaultMarketProofOfReserveByDayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketProofOfReserveMe**
```swift
    open class func getVaultMarketProofOfReserveMe(completion: @escaping (_ data: GetVaultMarketProofOfReserveMeResponse?, _ error: Error?) -> Void)
```

Your inclusion proofs for a day (latest by default): each of your units' leaf fields, salt, owner commitment, leaf hash and sibling path. Verify with your OWN user id: commitment = SHA-256(JSON[\"crossly-por-owner-v1\", userId, salt]); then the leaf; then climb the path to the published root.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your inclusion proofs for a day (latest by default): each of your units' leaf fields, salt, owner commitment, leaf hash and sibling path. Verify with your OWN user id: commitment = SHA-256(JSON[\"crossly-por-owner-v1\", userId, salt]); then the leaf; then climb the path to the published root.
VaultMarketsAPI.getVaultMarketProofOfReserveMe() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProofOfReserveMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketRate**
```swift
    open class func getVaultMarketRate(completion: @escaping (_ data: GetVaultMarketRateResponse?, _ error: Error?) -> Void)
```

Daily borrow APR (lent units) and pool APR on a book key, with the pool as a whole, oldest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Daily borrow APR (lent units) and pool APR on a book key, with the pool as a whole, oldest first.
VaultMarketsAPI.getVaultMarketRate() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketReport**
```swift
    open class func getVaultMarketReport(completion: @escaping (_ data: GetVaultMarketReportResponse?, _ error: Error?) -> Void)
```

The quarterly Crossly Vault Report (`quarter` like 2026-q3; default the latest): index levels, top movers, most-lent markets, grade premiums. Book data only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The quarterly Crossly Vault Report (`quarter` like 2026-q3; default the latest): index levels, top movers, most-lent markets, grade premiums. Book data only.
VaultMarketsAPI.getVaultMarketReport() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketRfq**
```swift
    open class func getVaultMarketRfq(id: String, completion: @escaping (_ data: GetVaultMarketRfqResponse?, _ error: Error?) -> Void)
```

One quote request: the requester sees every answer (anonymous); a responder sees the request and their own answer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One quote request: the requester sees every answer (anonymous); a responder sees the request and their own answer.
VaultMarketsAPI.getVaultMarketRfq(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketRfqResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketRiskReport**
```swift
    open class func getVaultMarketRiskReport(completion: @escaping (_ data: GetVaultMarketRiskReportResponse?, _ error: Error?) -> Void)
```

Historical VaR 95/99 1d/10d and Bangia LVaR (model figures: labelled, with n and a band, null below the data threshold), stress scenarios (category −30%, CBX −50%, books thin to 25%, index drawdowns), concentration and counterparty exposure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Historical VaR 95/99 1d/10d and Bangia LVaR (model figures: labelled, with n and a band, null below the data threshold), stress scenarios (category −30%, CBX −50%, books thin to 25%, index drawdowns), concentration and counterparty exposure.
VaultMarketsAPI.getVaultMarketRiskReport() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketRiskReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketRiskStat**
```swift
    open class func getVaultMarketRiskStat(bookKey: String, completion: @escaping (_ data: GetVaultMarketRiskStatResponse?, _ error: Error?) -> Void)
```

Risk statistics for a book key (weekly returns from A-quality marks only) or an index slug (its closes): annualised volatility raw and Geltner-desmoothed (labelled), max drawdown and beta to the Composite. Needs 26 weekly returns, else no numbers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bookKey = "bookKey_example" // String | 

// Risk statistics for a book key (weekly returns from A-quality marks only) or an index slug (its closes): annualised volatility raw and Geltner-desmoothed (labelled), max drawdown and beta to the Composite. Needs 26 weekly returns, else no numbers.
VaultMarketsAPI.getVaultMarketRiskStat(bookKey: bookKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookKey** | **String** |  | 

### Return type

**GetVaultMarketRiskStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketSetGoal**
```swift
    open class func getVaultMarketSetGoal(id: String, completion: @escaping (_ data: GetVaultMarketSetGoalResponse?, _ error: Error?) -> Void)
```

One set goal: every piece in the set order, held (with the vault unit) or missing (with the cheapest marked book key that meets the target and its mark), the conditions and grades seen, and the working basket bid with its legs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One set goal: every piece in the set order, held (with the vault unit) or missing (with the cheapest marked book key that meets the target and its mark), the conditions and grades seen, and the working basket bid with its legs.
VaultMarketsAPI.getVaultMarketSetGoal(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketSetGoalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketSetGoalBasketPlan**
```swift
    open class func getVaultMarketSetGoalBasketPlan(id: String, completion: @escaping (_ data: GetVaultMarketSetGoalBasketPlanResponse?, _ error: Error?) -> Void)
```

What a basket bid would place now, without placing it: one leg per missing piece (cheapest first, the mark plus maxBpsOverMark as the limit), the pieces skipped and why, and the most it can cost (limits plus the worst-case buyer fee), never more than budgetCents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// What a basket bid would place now, without placing it: one leg per missing piece (cheapest first, the mark plus maxBpsOverMark as the limit), the pieces skipped and why, and the most it can cost (limits plus the worst-case buyer fee), never more than budgetCents.
VaultMarketsAPI.getVaultMarketSetGoalBasketPlan(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketSetGoalBasketPlanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketShareCard**
```swift
    open class func getVaultMarketShareCard(id: UUID, completion: @escaping (_ data: ListVaultMarketShareCardsItem?, _ error: Error?) -> Void)
```

One share card as the public sees it, with its image and link paths.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One share card as the public sees it, with its image and link paths.
VaultMarketsAPI.getVaultMarketShareCard(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketShareCardsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketStatement**
```swift
    open class func getVaultMarketStatement(completion: @escaping (_ data: GetVaultMarketStatementResponse?, _ error: Error?) -> Void)
```

The last 24 months with whether each statement is issued (frozen, with its sha256).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The last 24 months with whether each statement is issued (frozen, with its sha256).
VaultMarketsAPI.getVaultMarketStatement() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketStatementByMonth**
```swift
    open class func getVaultMarketStatementByMonth(month: String, completion: @escaping (_ data: GetVaultMarketStatementByMonthResponse?, _ error: Error?) -> Void)
```

A monthly statement (`month` like 2026-10): units held at month end, loans, pledges, positions, fills, fees, storage, and cash quoted from the custodian and labelled as its record. Issued (frozen) once the month ends.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 

// A monthly statement (`month` like 2026-10): units held at month end, loans, pledges, positions, fills, fees, storage, and cash quoted from the custodian and labelled as its record. Issued (frozen) once the month ends.
VaultMarketsAPI.getVaultMarketStatementByMonth(month: month) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **String** |  | 

### Return type

**GetVaultMarketStatementByMonthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketStatementFile**
```swift
    open class func getVaultMarketStatementFile(month: String, format: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

A monthly statement as a csv, pdf or json file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 
let format = "format_example" // String | 

// A monthly statement as a csv, pdf or json file.
VaultMarketsAPI.getVaultMarketStatementFile(month: month, format: format) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **month** | **String** |  | 
 **format** | **String** |  | 

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketSupply**
```swift
    open class func getVaultMarketSupply(completion: @escaping (_ data: GetVaultMarketSupplyResponse?, _ error: Error?) -> Void)
```

A book key's units in the vault and authentications passed, by day (oldest first, today live).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A book key's units in the vault and authentications passed, by day (oldest first, today live).
VaultMarketsAPI.getVaultMarketSupply() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketSupplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketSupplyBatch**
```swift
    open class func getVaultMarketSupplyBatch(id: String, completion: @escaping (_ data: GetVaultMarketSupplyBatchResponse?, _ error: Error?) -> Void)
```

A box sent to the vault: its prepaid label and tracking, or why it has no label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A box sent to the vault: its prepaid label and tracking, or why it has no label.
VaultMarketsAPI.getVaultMarketSupplyBatch(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketSupplyBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketSupplyRoundUp**
```swift
    open class func getVaultMarketSupplyRoundUp(completion: @escaping (_ data: GetVaultMarketSupplyRoundUpResponse?, _ error: Error?) -> Void)
```

Your seller round-up: the share of each payout that sets a vault buy's budget, the budget so far and what it is doing. `roundUp` is null when none is set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your seller round-up: the share of each payout that sets a vault buy's budget, the budget so far and what it is doing. `roundUp` is null when none is set.
VaultMarketsAPI.getVaultMarketSupplyRoundUp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketSupplyRoundUpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTax**
```swift
    open class func getVaultMarketTax(completion: @escaping (_ data: GetVaultMarketTaxResponse?, _ error: Error?) -> Void)
```

Your tax year on the vault markets: units bought and sold with cost, proceeds, gain and term; lending fees, staking interest (estimate), market-maker rewards; closed positions. Links to the CSV and PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your tax year on the vault markets: units bought and sold with cost, proceeds, gain and term; lending fees, staking interest (estimate), market-maker rewards; closed positions. Links to the CSV and PDF.
VaultMarketsAPI.getVaultMarketTax() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTaxCsv**
```swift
    open class func getVaultMarketTaxCsv(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

The tax year as a CSV: one row per sale, purchase, gift, income line and closed position.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The tax year as a CSV: one row per sale, purchase, gift, income line and closed position.
VaultMarketsAPI.getVaultMarketTaxCsv() { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTaxLossSuggestion**
```swift
    open class func getVaultMarketTaxLossSuggestion(completion: @escaping (_ data: GetVaultMarketTaxLossSuggestionResponse?, _ error: Error?) -> Void)
```

Tax-loss suggestions: the units you hold whose mark is below your cost, each with its lot (acquired when and how, cost in cents), short or long term if sold today and the day a short lot turns long, the estimated loss at the mark before selling fees, mark quality, what stops a sale, and a link to the ordinary sell ticket. With totals by term, the gains realised so far this year, and a not-tax-advice disclosure. Never sells.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Tax-loss suggestions: the units you hold whose mark is below your cost, each with its lot (acquired when and how, cost in cents), short or long term if sold today and the day a short lot turns long, the estimated loss at the mark before selling fees, mark quality, what stops a sale, and a link to the ordinary sell ticket. With totals by term, the gains realised so far this year, and a not-tax-advice disclosure. Never sells.
VaultMarketsAPI.getVaultMarketTaxLossSuggestion() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketTaxLossSuggestionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTaxPdf**
```swift
    open class func getVaultMarketTaxPdf(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

The tax year as a PDF summary.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The tax year as a PDF summary.
VaultMarketsAPI.getVaultMarketTaxPdf() { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **getVaultMarketTca**
```swift
    open class func getVaultMarketTca(completion: @escaping (_ data: GetVaultMarketTcaResponse?, _ error: Error?) -> Void)
```

Your pro orders in a window (`from`, `to`; default 90 days) with arrival mark and mid, average fill, implementation shortfall, slippage, fill rate and time to fill.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your pro orders in a window (`from`, `to`; default 90 days) with arrival mark and mid, average fill, implementation shortfall, slippage, fill rate and time to fill.
VaultMarketsAPI.getVaultMarketTca() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketTcaResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTcaByOrderId**
```swift
    open class func getVaultMarketTcaByOrderId(orderId: String, completion: @escaping (_ data: GetVaultMarketTcaByOrderIdResponse?, _ error: Error?) -> Void)
```

One order's TCA, including slippage against the VWAP of eligible trades while it worked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let orderId = "orderId_example" // String | 

// One order's TCA, including slippage against the VWAP of eligible trades while it worked.
VaultMarketsAPI.getVaultMarketTcaByOrderId(orderId: orderId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String** |  | 

### Return type

**GetVaultMarketTcaByOrderIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTod**
```swift
    open class func getVaultMarketTod(completion: @escaping (_ data: GetVaultMarketTodResponse?, _ error: Error?) -> Void)
```

Your transfer-on-death setup: the gate and terms, whether you accepted them, your beneficiaries and shares, units with their designations and who the plan gives them to today, and open claims on your account (which you can stop). A TodOverview object, not a collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your transfer-on-death setup: the gate and terms, whether you accepted them, your beneficiaries and shares, units with their designations and who the plan gives them to today, and open claims on your account (which you can stop). A TodOverview object, not a collection.
VaultMarketsAPI.getVaultMarketTod() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketTodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketTodMyClaim**
```swift
    open class func getVaultMarketTodMyClaim(completion: @escaping (_ data: GetVaultMarketTodMyClaimResponse?, _ error: Error?) -> Void)
```

Claims you filed as a beneficiary: status in words, documents sent (names only), the waiting period, and units moved or held. A TodMyClaims object, not a collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Claims you filed as a beneficiary: status in words, documents sent (names only), the waiting period, and units moved or held. A TodMyClaims object, not a collection.
VaultMarketsAPI.getVaultMarketTodMyClaim() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketTodMyClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketUnitAr**
```swift
    open class func getVaultMarketUnitAr(id: UUID, completion: @escaping (_ data: GetVaultMarketUnitArResponse?, _ error: Error?) -> Void)
```

A vault unit as an AR model, for \"See it in your room\" (the web's /ar/vault-<id> page hands it to Scene Viewer, WebXR or Quick Look): title, model (a path under /models, without .glb, at real size), scanUrl (the unit's own captured mesh, when it has one), imageUrl, art, tint, scale, bookKey, backPath and mine. Your own units always; somebody else's only while they show it to visitors in a home you may enter (else 404).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// A vault unit as an AR model, for \"See it in your room\" (the web's /ar/vault-<id> page hands it to Scene Viewer, WebXR or Quick Look): title, model (a path under /models, without .glb, at real size), scanUrl (the unit's own captured mesh, when it has one), imageUrl, art, tint, scale, bookKey, backPath and mine. Your own units always; somebody else's only while they show it to visitors in a home you may enter (else 404).
VaultMarketsAPI.getVaultMarketUnitAr(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketUnitArResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketUnitEvidence**
```swift
    open class func getVaultMarketUnitEvidence(id: String, completion: @escaping (_ data: GetVaultMarketUnitEvidenceResponse?, _ error: Error?) -> Void)
```

Evidence on a vault unit:its 3D scans (model, texture, listing photos) and its grade report (grader, grade, cert, verified against the grader record, hub intake photos). No owner identity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Evidence on a vault unit:its 3D scans (model, texture, listing photos) and its grade report (grader, grade, cert, verified against the grader record, hub intake photos). No owner identity.
VaultMarketsAPI.getVaultMarketUnitEvidence(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketUnitEvidenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketUnitQuote**
```swift
    open class func getVaultMarketUnitQuote(id: String, completion: @escaping (_ data: GetVaultMarketUnitQuoteResponse?, _ error: Error?) -> Void)
```

The market around a vault unit: its mark and source, the best bid that could take it, the Instant Exit price (the best bid) and a pack pull's own sell-back credit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The market around a vault unit: its mark and source, the best bid that could take it, the Instant Exit price (the best bid) and a pack pull's own sell-back credit.
VaultMarketsAPI.getVaultMarketUnitQuote(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketUnitQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketUnitStory**
```swift
    open class func getVaultMarketUnitStory(id: UUID, completion: @escaping (_ data: GetVaultMarketUnitStoryResponse?, _ error: Error?) -> Void)
```

One vault unit's story, oldest first: intake (with scan and grade evidence when it has some), grades, owners, sales at their prices, loans, pledges, Hall of Grails exhibitions, receipt-token exports and redemptions, and each warehouse-receipt hash-chain step (re-verified on read: chain.ok). People are named only while their public vault profile is on; others are 'A collector'.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One vault unit's story, oldest first: intake (with scan and grade evidence when it has some), grades, owners, sales at their prices, loans, pledges, Hall of Grails exhibitions, receipt-token exports and redemptions, and each warehouse-receipt hash-chain step (re-verified on read: chain.ok). People are named only while their public vault profile is on; others are 'A collector'.
VaultMarketsAPI.getVaultMarketUnitStory(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketUnitStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketValuationStatement**
```swift
    open class func getVaultMarketValuationStatement(id: UUID, completion: @escaping (_ data: GetVaultMarketValuationStatementResponse?, _ error: Error?) -> Void)
```

One statement you issued: every unit, the totals by mark quality, the methodology, its sha256, its audit-chain seal and the verify link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One statement you issued: every unit, the totals by mark quality, the methodology, its sha256, its audit-chain seal and the verify link.
VaultMarketsAPI.getVaultMarketValuationStatement(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketValuationStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketValuationStatementPdf**
```swift
    open class func getVaultMarketValuationStatementPdf(id: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

One statement you issued as a PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One statement you issued as a PDF.
VaultMarketsAPI.getVaultMarketValuationStatementPdf(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

# **getVaultMarketValuationStatementPreview**
```swift
    open class func getVaultMarketValuationStatementPreview(completion: @escaping (_ data: GetVaultMarketValuationStatementPreviewResponse?, _ error: Error?) -> Void)
```

An insurance or appraisal statement for a day (purpose, asOf YYYY-MM-DD, default today), built but not issued: every unit you held that day at its mark, with quality, last trade, grade and cert, and the total. No id, no hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// An insurance or appraisal statement for a day (purpose, asOf YYYY-MM-DD, default today), built but not issued: every unit you held that day at its mark, with quality, last trade, grade and cert, and the total. No id, no hash.
VaultMarketsAPI.getVaultMarketValuationStatementPreview() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketValuationStatementPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketValuationStatementVerify**
```swift
    open class func getVaultMarketValuationStatementVerify(id: UUID, completion: @escaping (_ data: GetVaultMarketValuationStatementVerifyResponse?, _ error: Error?) -> Void)
```

Check any issued statement by its id, as an insurer would: purpose, date, totals by mark quality and the sha256; intact (the stored record still hashes to it), seal.ok (its audit-chain entry still carries it) and, with ?hash=, whether yours matches. Never the holder or the units.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Check any issued statement by its id, as an insurer would: purpose, date, totals by mark quality and the sha256; intact (the stored record still hashes to it), seal.ok (its audit-chain entry still carries it) and, with ?hash=, whether yours matches. Never the holder or the units.
VaultMarketsAPI.getVaultMarketValuationStatementVerify(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketValuationStatementVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketValue**
```swift
    open class func getVaultMarketValue(completion: @escaping (_ data: GetVaultMarketValueResponse?, _ error: Error?) -> Void)
```

A catalogue item's vault book keys (`?skuId=`, optional `variantId`): each key's display mark with quality and n, units in the vault, the Instant Exit price a holder would get now, and whether it can be shipped in (ungraded keys).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A catalogue item's vault book keys (`?skuId=`, optional `variantId`): each key's display mark with quality and n, units in the vault, the Instant Exit price a holder would get now, and whether it can be shipped in (ungraded keys).
VaultMarketsAPI.getVaultMarketValue() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketValueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketVaultSuggestionItem**
```swift
    open class func getVaultMarketVaultSuggestionItem(id: String, completion: @escaping (_ data: GetVaultMarketVaultSuggestionItemResponse?, _ error: Error?) -> Void)
```

One inventory item: its vault suggestion, or in plain words why there is none (`status`: suggested, not_found, no_stock, not_matched, in_vault or no_market).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One inventory item: its vault suggestion, or in plain words why there is none (`status`: suggested, not_found, no_stock, not_matched, in_vault or no_market).
VaultMarketsAPI.getVaultMarketVaultSuggestionItem(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketVaultSuggestionItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWidgetIndex**
```swift
    open class func getVaultMarketWidgetIndex(slug: String, completion: @escaping (_ data: GetVaultMarketWidgetIndexResponse?, _ error: Error?) -> Void)
```

What the <crossly-index> widget shows: level, closes, quality, n, as-of, or `insufficient`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// What the <crossly-index> widget shows: level, closes, quality, n, as-of, or `insufficient`.
VaultMarketsAPI.getVaultMarketWidgetIndex(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketWidgetIndexResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWidgetMark**
```swift
    open class func getVaultMarketWidgetMark(completion: @escaping (_ data: GetVaultMarketWidgetMarkResponse?, _ error: Error?) -> Void)
```

What the <crossly-mark> widget shows for `bookKey`: mark, quality, trades over 30 days, as-of, sparkline, or `insufficient`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What the <crossly-mark> widget shows for `bookKey`: mark, quality, trades over 30 days, as-of, sparkline, or `insufficient`.
VaultMarketsAPI.getVaultMarketWidgetMark() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWidgetMarkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWidgetSummary**
```swift
    open class func getVaultMarketWidgetSummary(completion: @escaping (_ data: GetVaultMarketWidgetSummaryResponse?, _ error: Error?) -> Void)
```

The home-screen widget summary: portfolio value at the mark with its move since the previous marks (cents and bps) and the share resting on reliable A/B marks, the three biggest movers among what you hold (the market movers when you hold nothing; `movers.source` says which), and one watchlist key (`?key=` a book key on your watchlist; else your newest watch) with a 14-day sparkline. Every price is from the Crossly order book and carries its mark quality (A, B, C or none). Cached for five minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The home-screen widget summary: portfolio value at the mark with its move since the previous marks (cents and bps) and the share resting on reliable A/B marks, the three biggest movers among what you hold (the market movers when you hold nothing; `movers.source` says which), and one watchlist key (`?key=` a book key on your watchlist; else your newest watch) with a 14-day sparkline. Every price is from the Crossly order book and carries its mark quality (A, B, C or none). Cached for five minutes.
VaultMarketsAPI.getVaultMarketWidgetSummary() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWidgetSummaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWorldFloor**
```swift
    open class func getVaultMarketWorldFloor(completion: @escaping (_ data: GetVaultMarketWorldFloorResponse?, _ error: Error?) -> Void)
```

The Trading Floor in Crossly World: trades (the newest trades on every vault book in the last day, at most 40, newest first: bookKey, name, priceCents, priceText, side -- buy when a buyer took an ask, sell when a seller hit a bid, cross for an auction -- and ageS), tickers (the big board: the most-traded markets, each with its last trade price, the change from the last trade before today in basis points, trades today and the display mark with its quality), bell (Market Open: ringing for ten minutes after a new key opens, with the key and its market link, and what opens next) and trades24h. Every price is a trade on the Crossly order book; it never shows who traded. Nothing can be traded in the room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Trading Floor in Crossly World: trades (the newest trades on every vault book in the last day, at most 40, newest first: bookKey, name, priceCents, priceText, side -- buy when a buyer took an ask, sell when a seller hit a bid, cross for an auction -- and ageS), tickers (the big board: the most-traded markets, each with its last trade price, the change from the last trade before today in basis points, trades today and the display mark with its quality), bell (Market Open: ringing for ten minutes after a new key opens, with the key and its market link, and what opens next) and trades24h. Every price is a trade on the Crossly order book; it never shows who traded. Nothing can be traded in the room.
VaultMarketsAPI.getVaultMarketWorldFloor() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWorldFloorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWorldLounge**
```swift
    open class func getVaultMarketWorldLounge(completion: @escaping (_ data: GetVaultMarketWorldLoungeResponse?, _ error: Error?) -> Void)
```

The Vault Holders Lounge: the rule to join (held value at reliable marks, or a unit count), whether you may join now and what you hold toward it. Anyone may look in; only holders are seen there. No perks, nothing to trade.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Vault Holders Lounge: the rule to join (held value at reliable marks, or a unit count), whether you may join now and what you hold toward it. Anyone may look in; only holders are seen there. No perks, nothing to trade.
VaultMarketsAPI.getVaultMarketWorldLounge() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWorldLoungeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWorldPlaceVaultGate**
```swift
    open class func getVaultMarketWorldPlaceVaultGate(place: String, completion: @escaping (_ data: GetVaultMarketWorldPlaceVaultGateResponse?, _ error: Error?) -> Void)
```

The vault-holder door on a Crossly World room or Space, by its presence slug (a room share slug, or space-<slug>): the rule (minValueCents held at reliable A/B marks and/or minUnits units, mode any or all, optionally one product, bullion family or category), the rule in words, and whether you may join now with what you hold toward it. gate is null when the place has no vault door. Anyone may look in; only holders join.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let place = "place_example" // String | 

// The vault-holder door on a Crossly World room or Space, by its presence slug (a room share slug, or space-<slug>): the rule (minValueCents held at reliable A/B marks and/or minUnits units, mode any or all, optionally one product, bullion family or category), the rule in words, and whether you may join now with what you hold toward it. gate is null when the place has no vault door. Anyone may look in; only holders join.
VaultMarketsAPI.getVaultMarketWorldPlaceVaultGate(place: place) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **place** | **String** |  | 

### Return type

**GetVaultMarketWorldPlaceVaultGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWorth**
```swift
    open class func getVaultMarketWorth(completion: @escaping (_ data: GetVaultMarketWorthResponse?, _ error: Error?) -> Void)
```

What one book key (variantId:condition:gradeKey, `bookKey`) is worth: the mark in cents with its quality (A from trades, B from firm quotes, C indicative, none) and band, what Instant Exit would pay for one unit now from the best resting bid (yours left out), and your units: how many you hold, how many are free to sell, their value at the mark and what selling every free one now would fetch from today’s bids. Plain-words `headline` and `lines`. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What one book key (variantId:condition:gradeKey, `bookKey`) is worth: the mark in cents with its quality (A from trades, B from firm quotes, C indicative, none) and band, what Instant Exit would pay for one unit now from the best resting bid (yours left out), and your units: how many you hold, how many are free to sell, their value at the mark and what selling every free one now would fetch from today’s bids. Plain-words `headline` and `lines`. Read only.
VaultMarketsAPI.getVaultMarketWorth() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWorthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketWorthVault**
```swift
    open class func getVaultMarketWorthVault(completion: @escaping (_ data: GetVaultMarketWorthVaultResponse?, _ error: Error?) -> Void)
```

What your whole vault is worth now: value at the marks split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your whole vault is worth now: value at the marks split into reliable and indicative marks, cost and P&L, today’s change, and an estimate of what the units free to sell would fetch from the bids resting on the book now. Read only.
VaultMarketsAPI.getVaultMarketWorthVault() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketWorthVaultResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultReceipt**
```swift
    open class func getVaultReceipt(receiptNo: String, completion: @escaping (_ data: GetVaultReceiptResponse?, _ error: Error?) -> Void)
```

One of your receipts with its full hash chain (issued, transferred, pledged, released, surrendered), re-verified on read: `chain.ok` is false if any event was altered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let receiptNo = "receiptNo_example" // String | 

// One of your receipts with its full hash chain (issued, transferred, pledged, released, surrendered), re-verified on read: `chain.ok` is false if any event was altered.
VaultMarketsAPI.getVaultReceipt(receiptNo: receiptNo) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptNo** | **String** |  | 

### Return type

**GetVaultReceiptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultReceiptToken**
```swift
    open class func getVaultReceiptToken(id: String, completion: @escaping (_ data: GetVaultReceiptTokenResponse?, _ error: Error?) -> Void)
```

One receipt token (yours, or on a unit you own now) with its chain log: built, minted, frozen, thawed, new holder seen, redeem built, burned, with explorer links.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One receipt token (yours, or on a unit you own now) with its chain log: built, minted, frozen, thawed, new holder seen, redeem built, burned, with explorer links.
VaultMarketsAPI.getVaultReceiptToken(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultReceiptTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultReceiptTokenByMint**
```swift
    open class func getVaultReceiptTokenByMint(mint: String, completion: @escaping (_ data: GetVaultReceiptTokenByMintResponse?, _ error: Error?) -> Void)
```

What a Solana mint is: the warehouse receipt number and item it stands for, and whether the token is live, frozen (unit pledged or lent) or burned, and whether the unit is still on a vault shelf. Names no person and no wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let mint = "mint_example" // String | 

// What a Solana mint is: the warehouse receipt number and item it stands for, and whether the token is live, frozen (unit pledged or lent) or burned, and whether the unit is still on a vault shelf. Names no person and no wallet.
VaultMarketsAPI.getVaultReceiptTokenByMint(mint: mint) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mint** | **String** |  | 

### Return type

**GetVaultReceiptTokenByMintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAccounts**
```swift
    open class func listVaultMarketAccounts(completion: @escaping (_ data: ListVaultMarketAccountsResponse?, _ error: Error?) -> Void)
```

Every account you can act on: your own, and each sub-account your entity memberships reach, with your role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every account you can act on: your own, and each sub-account your entity memberships reach, with your role.
VaultMarketsAPI.listVaultMarketAccounts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAdlEvents**
```swift
    open class func listVaultMarketAdlEvents(completion: @escaping (_ data: ListVaultMarketAdlEventsResponse?, _ error: Error?) -> Void)
```

The ADL events your positions were part of, newest first: role bankrupt (yours went under water) or counterparty (yours was first in line), the price both closed at and the transfer status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The ADL events your positions were part of, newest first: role bankrupt (yours went under water) or counterparty (yours was first in line), the price both closed at and the transfer status.
VaultMarketsAPI.listVaultMarketAdlEvents() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAdlEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAdlPositions**
```swift
    open class func listVaultMarketAdlPositions(completion: @escaping (_ data: ListVaultMarketAdlPositionsResponse?, _ error: Error?) -> Void)
```

Your live positions, each with its place in its item ADL queue: lights 5 (first in line) to 1 (last), 0 when not in the queue (only profitable positions are), ranked by P&L% x effective leverage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your live positions, each with its place in its item ADL queue: lights 5 (first in line) to 1 (last), 0 when not in the queue (only profitable positions are), ranked by P&L% x effective leverage.
VaultMarketsAPI.listVaultMarketAdlPositions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAdlPositionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAgentDrafts**
```swift
    open class func listVaultMarketAgentDrafts(completion: @escaping (_ data: ListVaultMarketAgentDraftsResponse?, _ error: Error?) -> Void)
```

Limit orders the shopping agent drafted for you, newest first. A draft places nothing: send its orderBody to POST /api/v1/vault-markets/pro/orders to place it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Limit orders the shopping agent drafted for you, newest first. A draft places nothing: send its orderBody to POST /api/v1/vault-markets/pro/orders to place it.
VaultMarketsAPI.listVaultMarketAgentDrafts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAgentDraftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAgentWatches**
```swift
    open class func listVaultMarketAgentWatches(completion: @escaping (_ data: ListVaultMarketAgentWatchesResponse?, _ error: Error?) -> Void)
```

Your price watches on book keys (best bid, lowest ask, last trade or market price, in cents), live ones first. `?live=true` for live only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your price watches on book keys (best bid, lowest ask, last trade or market price, in cents), live ones first. `?live=true` for live only.
VaultMarketsAPI.listVaultMarketAgentWatches() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAgentWatchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAlertLog**
```swift
    open class func listVaultMarketAlertLog(completion: @escaping (_ data: ListVaultMarketAlertLogResponse?, _ error: Error?) -> Void)
```

What the alerts hub did with your recent vault alerts (`?limit=` 1 to 200, default 50): kind, title, the channels it went to, what was held (channel:reason) and the email digest state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What the alerts hub did with your recent vault alerts (`?limit=` 1 to 200, default 50): kind, title, the channels it went to, what was held (channel:reason) and the email digest state.
VaultMarketsAPI.listVaultMarketAlertLog() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAlertLogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAlerts**
```swift
    open class func listVaultMarketAlerts(completion: @escaping (_ data: ListVaultMarketAlertsResponse?, _ error: Error?) -> Void)
```

Your price alerts on book keys.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your price alerts on book keys.
VaultMarketsAPI.listVaultMarketAlerts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketAuctions**
```swift
    open class func listVaultMarketAuctions(completion: @escaping (_ data: ListVaultMarketAuctionsResponse?, _ error: Error?) -> Void)
```

Open vault auction events (weekly, ending Sunday; premier, units marked $10,000+) and their lots, soonest ending first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open vault auction events (weekly, ending Sunday; premier, units marked $10,000+) and their lots, soonest ending first.
VaultMarketsAPI.listVaultMarketAuctions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketAuctionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketBlocks**
```swift
    open class func listVaultMarketBlocks(completion: @escaping (_ data: ListVaultMarketBlocksResponse?, _ error: Error?) -> Void)
```

An entity's block orders, newest first, each with its plan and how it was allocated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// An entity's block orders, newest first, each with its plan and how it was allocated.
VaultMarketsAPI.listVaultMarketBlocks() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBlocksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketBullionFamilyPegs**
```swift
    open class func listVaultMarketBullionFamilyPegs(completion: @escaping (_ data: ListVaultMarketBullionFamilyPegsResponse?, _ error: Error?) -> Void)
```

Your family-wide spot-pegged quotes (live, or all with status=all): one quote resting across a bullion family books at one condition, with units left, the peg, its status and every leg (the pegged quote on each book).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your family-wide spot-pegged quotes (live, or all with status=all): one quote resting across a bullion family books at one condition, with units left, the peg, its status and every leg (the pegged quote on each book).
VaultMarketsAPI.listVaultMarketBullionFamilyPegs() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBullionFamilyPegsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketBullionKeys**
```swift
    open class func listVaultMarketBullionKeys(completion: @escaping (_ data: ListVaultMarketBullionKeysResponse?, _ error: Error?) -> Void)
```

Bullion key families (metal, form, size, mint or any mint): members, vault units, best resting bid and ask across their books, and spot as a labelled reference with what one unit of metal is worth at it. Spot is never a Crossly price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bullion key families (metal, form, size, mint or any mint): members, vault units, best resting bid and ask across their books, and spot as a labelled reference with what one unit of metal is worth at it. Spot is never a Crossly price.
VaultMarketsAPI.listVaultMarketBullionKeys() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBullionKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketBullionPegs**
```swift
    open class func listVaultMarketBullionPegs(completion: @escaping (_ data: ListVaultMarketBullionPegsResponse?, _ error: Error?) -> Void)
```

Your spot-pegged quotes (live, or all with status=all): side, units, the peg, the order it rests as, the last price and spot it was priced from, and why it is pulled when it is.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your spot-pegged quotes (live, or all with status=all): side, units, the peg, the order it rests as, the last price and spot it was priced from, and why it is pulled when it is.
VaultMarketsAPI.listVaultMarketBullionPegs() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketBullionPegsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketCollectionWorth**
```swift
    open class func listVaultMarketCollectionWorth(completion: @escaping (_ data: ListVaultMarketCollectionWorthResponse?, _ error: Error?) -> Void)
```

Your collection valued at the display marks: rows on a vault book key with a mark are summed; rows with no mark or no key are counted, never valued.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your collection valued at the display marks: rows on a vault book key with a mark are summed; rows with no mark or no key are counted, never valued.
VaultMarketsAPI.listVaultMarketCollectionWorth() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketCollectionWorthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketConfirmations**
```swift
    open class func listVaultMarketConfirmations(completion: @escaping (_ data: ListVaultMarketConfirmationsResponse?, _ error: Error?) -> Void)
```

Trade confirmations for your fills in a window (default 31 days): price, sale fee, maker or taker, order, vault unit and warehouse receipt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Trade confirmations for your fills in a window (default 31 days): price, sale fee, maker or taker, order, vault unit and warehouse receipt.
VaultMarketsAPI.listVaultMarketConfirmations() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketConfirmationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketCreatorCohostInvites**
```swift
    open class func listVaultMarketCreatorCohostInvites(completion: @escaping (_ data: ListVaultMarketCreatorCohostInvitesResponse?, _ error: Error?) -> Void)
```

For creators: your invites from Crossly to co-host a Market Open launch show (invited, accepted, declined or withdrawn), each with the key, its show and the guidance for co-hosts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// For creators: your invites from Crossly to co-host a Market Open launch show (invited, accepted, declined or withdrawn), each with the key, its show and the guidance for co-hosts.
VaultMarketsAPI.listVaultMarketCreatorCohostInvites() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketCreatorCohostInvitesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketCredit**
```swift
    open class func listVaultMarketCredit(completion: @escaping (_ data: ListVaultMarketCreditResponse?, _ error: Error?) -> Void)
```

Your vault loans and advances (live by default): what is owed, interest accrued, loan-to-value, the liquidation line and the collateral value it is called at.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault loans and advances (live by default): what is owed, interest accrued, loan-to-value, the liquidation line and the collateral value it is called at.
VaultMarketsAPI.listVaultMarketCredit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketCreditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketDealerBands**
```swift
    open class func listVaultMarketDealerBands(completion: @escaping (_ data: ListVaultMarketDealerBandsResponse?, _ error: Error?) -> Void)
```

Your Instant Exit bands and whether each is being kept now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Instant Exit bands and whether each is being kept now.
VaultMarketsAPI.listVaultMarketDealerBands() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerBandsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketDealerBids**
```swift
    open class func listVaultMarketDealerBids(completion: @escaping (_ data: ListVaultMarketDealerBidsResponse?, _ error: Error?) -> Void)
```

Your standing dealer bids: open (default) or all.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your standing dealer bids: open (default) or all.
VaultMarketsAPI.listVaultMarketDealerBids() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerBidsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketDealerPoolFills**
```swift
    open class func listVaultMarketDealerPoolFills(id: String, completion: @escaping (_ data: ListVaultMarketDealerPoolFillsResponse?, _ error: Error?) -> Void)
```

A curve pool's fills, newest first: side, price and spot after.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A curve pool's fills, newest first: side, price and spot after.
VaultMarketsAPI.listVaultMarketDealerPoolFills(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketDealerPoolFillsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketDealerPools**
```swift
    open class func listVaultMarketDealerPools(completion: @escaping (_ data: ListVaultMarketDealerPoolsResponse?, _ error: Error?) -> Void)
```

Your curve pools: open (default) or all, each with its curve, spot, units, buy budget, running totals, the ladder it shows and its live legs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your curve pools: open (default) or all, each with its curve, spot, units, buy budget, running totals, the ladder it shows and its live legs.
VaultMarketsAPI.listVaultMarketDealerPools() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerPoolsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketDigestHistory**
```swift
    open class func listVaultMarketDigestHistory(completion: @escaping (_ data: ListVaultMarketDigestHistoryResponse?, _ error: Error?) -> Void)
```

Past weekly digests: week, status (sent / skipped / failed), the channels used and a summary.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Past weekly digests: week, status (sent / skipped / failed), the channels used and a summary.
VaultMarketsAPI.listVaultMarketDigestHistory() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDigestHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketEntityAudit**
```swift
    open class func listVaultMarketEntityAudit(id: String, completion: @escaping (_ data: ListVaultMarketEntityAuditResponse?, _ error: Error?) -> Void)
```

The entity's audit trail, newest first: hash-chained rows with actor, account, API key, IP, session and source.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The entity's audit trail, newest first: hash-chained rows with actor, account, API key, IP, session and source.
VaultMarketsAPI.listVaultMarketEntityAudit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketEntityAuditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketEntityConversions**
```swift
    open class func listVaultMarketEntityConversions(id: String, completion: @escaping (_ data: ListVaultMarketEntityConversionsResponse?, _ error: Error?) -> Void)
```

The custodian's CBX-to-USD reward conversions for an entity that elected USD, newest first, with their status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The custodian's CBX-to-USD reward conversions for an entity that elected USD, newest first, with their status.
VaultMarketsAPI.listVaultMarketEntityConversions(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketEntityConversionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketEstimatesAccuracy**
```swift
    open class func listVaultMarketEstimatesAccuracy(completion: @escaping (_ data: ListVaultMarketEstimatesAccuracyResponse?, _ error: Error?) -> Void)
```

The Crossly Estimate's track record: walk-forward backtest n, FSD and bias per method, category and liquidity bucket, and whether estimates in that cell are shown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Crossly Estimate's track record: walk-forward backtest n, FSD and bias per method, category and liquidity bucket, and whether estimates in that cell are shown.
VaultMarketsAPI.listVaultMarketEstimatesAccuracy() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketEstimatesAccuracyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFeed**
```swift
    open class func listVaultMarketFeed(completion: @escaping (_ data: ListVaultMarketFeedResponse?, _ error: Error?) -> Void)
```

New vault buys by the people you follow who share them, newest first (no prices). Page with `before` (the last item's `at`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// New vault buys by the people you follow who share them, newest first (no prices). Page with `before` (the last item's `at`).
VaultMarketsAPI.listVaultMarketFeed() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFeedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowCopyWatch**
```swift
    open class func listVaultMarketFollowCopyWatch(completion: @escaping (_ data: ListVaultMarketFollowCopyWatchResponse?, _ error: Error?) -> Void)
```

The collectors you copy-watch and whether each still shares bids and asks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The collectors you copy-watch and whether each still shares bids and asks.
VaultMarketsAPI.listVaultMarketFollowCopyWatch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFollowCopyWatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowCopyWatchAlerts**
```swift
    open class func listVaultMarketFollowCopyWatchAlerts(completion: @escaping (_ data: ListVaultMarketFollowCopyWatchAlertsResponse?, _ error: Error?) -> Void)
```

Your copy-watch alerts, newest first: who, bid or ask, quantity, limit price, market, and whether it still rests. Page with `before`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your copy-watch alerts, newest first: who, bid or ask, quantity, limit price, market, and whether it still rests. Page with `before`.
VaultMarketsAPI.listVaultMarketFollowCopyWatchAlerts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFollowCopyWatchAlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowFeed**
```swift
    open class func listVaultMarketFollowFeed(completion: @escaping (_ data: ListVaultMarketFollowFeedResponse?, _ error: Error?) -> Void)
```

Public vault activity of the collectors you follow (buys, units sent in, sales, Hall loans), newest first, never a price. Filter with `kinds`; page with `before`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Public vault activity of the collectors you follow (buys, units sent in, sales, Hall loans), newest first, never a price. Filter with `kinds`; page with `before`.
VaultMarketsAPI.listVaultMarketFollowFeed() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFollowFeedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowFollowing**
```swift
    open class func listVaultMarketFollowFollowing(completion: @escaping (_ data: ListVaultMarketFollowFollowingResponse?, _ error: Error?) -> Void)
```

The collectors you follow who have a public vault: what each shares and whether you copy-watch them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The collectors you follow who have a public vault: what each shares and whether you copy-watch them.
VaultMarketsAPI.listVaultMarketFollowFollowing() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFollowFollowingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowLeaderboards**
```swift
    open class func listVaultMarketFollowLeaderboards(completion: @escaping (_ data: ListVaultMarketFollowLeaderboardsResponse?, _ error: Error?) -> Void)
```

An opt-in return leaderboard (`period` 30d, 90d or 365d; `category` all or a category slug), ranked by risk-adjusted return from the book A/B marks. Percent and risk only: no dollars, no volume.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// An opt-in return leaderboard (`period` 30d, 90d or 365d; `category` all or a category slug), ranked by risk-adjusted return from the book A/B marks. Percent and risk only: no dollars, no volume.
VaultMarketsAPI.listVaultMarketFollowLeaderboards() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketFollowLeaderboardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketFollowProfileActivity**
```swift
    open class func listVaultMarketFollowProfileActivity(handle: String, completion: @escaping (_ data: ListVaultMarketFollowFeedResponse?, _ error: Error?) -> Void)
```

One collector public vault activity, newest first, never a price. 404 when their vault is not public.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// One collector public vault activity, newest first, never a price. 404 when their vault is not public.
VaultMarketsAPI.listVaultMarketFollowProfileActivity(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketFollowFeedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketGifts**
```swift
    open class func listVaultMarketGifts(completion: @escaping (_ data: ListVaultMarketGiftsResponse?, _ error: Error?) -> Void)
```

Gifts you sent and received, newest first, with their status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Gifts you sent and received, newest first, with their status.
VaultMarketsAPI.listVaultMarketGifts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketGiftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketGradeToVault**
```swift
    open class func listVaultMarketGradeToVault(completion: @escaping (_ data: ListVaultMarketGradeToVaultResponse?, _ error: Error?) -> Void)
```

Your Grade to Vault flows, newest first, each brought up to date: its step, the grading submission, the unit, the grade, the market for it, and the ask once listed. `live=1` for those still going.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Grade to Vault flows, newest first, each brought up to date: its step, the grading submission, the unit, the grade, the market for it, and the ask once listed. `live=1` for those still going.
VaultMarketsAPI.listVaultMarketGradeToVault() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketGradeToVaultResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketGrading**
```swift
    open class func listVaultMarketGrading(completion: @escaping (_ data: ListVaultMarketGradingResponse?, _ error: Error?) -> Void)
```

Your vault units sent to grading: where each card is in its run, and the grade once it is back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault units sent to grading: where each card is in its run, and the grade once it is back.
VaultMarketsAPI.listVaultMarketGrading() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketGradingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketHallLenders**
```swift
    open class func listVaultMarketHallLenders(completion: @escaping (_ data: ListVaultMarketHallLendersResponse?, _ error: Error?) -> Void)
```

The vault units lent to this week's Hall of Grails exhibition and on show now, in plinth order: the item (skuId, name, imageUrl, grade), the lender as the plate names them (a display name, or \"a collector\"), the plate lines and how many exhibitions the unit has stood in. meta.exhibition is the week (key, title, endsAt). Names no ids and no amounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The vault units lent to this week's Hall of Grails exhibition and on show now, in plinth order: the item (skuId, name, imageUrl, grade), the lender as the plate names them (a display name, or \"a collector\"), the plate lines and how many exhibitions the unit has stood in. meta.exhibition is the week (key, title, endsAt). Names no ids and no amounts.
VaultMarketsAPI.listVaultMarketHallLenders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketHallLendersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexCommitteeMinutes**
```swift
    open class func listVaultMarketIndexCommitteeMinutes(completion: @escaping (_ data: ListVaultMarketIndexCommitteeMinutesResponse?, _ error: Error?) -> Void)
```

Published Index Committee minutes, newest first: attendees (names and roles), quorum, agenda, minutes and decisions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Published Index Committee minutes, newest first: attendees (names and roles), quorum, agenda, minutes and decisions.
VaultMarketsAPI.listVaultMarketIndexCommitteeMinutes() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexCommitteeMinutesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexComplaints**
```swift
    open class func listVaultMarketIndexComplaints(completion: @escaping (_ data: ListVaultMarketIndexComplaintsResponse?, _ error: Error?) -> Void)
```

Your complaints and their answers, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your complaints and their answers, newest first.
VaultMarketsAPI.listVaultMarketIndexComplaints() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexComplaintsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexConstituents**
```swift
    open class func listVaultMarketIndexConstituents(slug: String, completion: @escaping (_ data: ListVaultMarketIndexMembersResponse?, _ error: Error?) -> Void)
```

The book keys in an index with their weight, move since the last close and contribution to the index's move (basis points).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The book keys in an index with their weight, move since the last close and contribution to the index's move (basis points).
VaultMarketsAPI.listVaultMarketIndexConstituents(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketIndexMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexConsultations**
```swift
    open class func listVaultMarketIndexConsultations(completion: @escaping (_ data: ListVaultMarketIndexConsultationsResponse?, _ error: Error?) -> Void)
```

Consultations on index method changes (open for at least 30 days), newest first. Filter by `status`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Consultations on index method changes (open for at least 30 days), newest first. Filter by `status`.
VaultMarketsAPI.listVaultMarketIndexConsultations() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexConsultationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexEvents**
```swift
    open class func listVaultMarketIndexEvents(completion: @escaping (_ data: ListVaultMarketIndexEventsResponse?, _ error: Error?) -> Void)
```

Every index event, newest first: add, delete, rebalance, method, correction, halt; each with when it was announced, when it takes effect, the detail and the reason. Filter by `kind`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every index event, newest first: add, delete, rebalance, method, correction, halt; each with when it was announced, when it takes effect, the detail and the reason. Filter by `kind`.
VaultMarketsAPI.listVaultMarketIndexEvents() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexEventsBySlug**
```swift
    open class func listVaultMarketIndexEventsBySlug(slug: String, completion: @escaping (_ data: ListVaultMarketIndexEventsResponse?, _ error: Error?) -> Void)
```

One index's events, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One index's events, newest first.
VaultMarketsAPI.listVaultMarketIndexEventsBySlug(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketIndexEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexJudgments**
```swift
    open class func listVaultMarketIndexJudgments(completion: @escaping (_ data: ListVaultMarketIndexJudgmentsResponse?, _ error: Error?) -> Void)
```

The expert-judgment log: every Index Committee action (halt, resume, exclude a key, void a trade, restate, retire) with its written reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The expert-judgment log: every Index Committee action (halt, resume, exclude a key, void a trade, restate, retire) with its written reason.
VaultMarketsAPI.listVaultMarketIndexJudgments() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexJudgmentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexLevelSeries**
```swift
    open class func listVaultMarketIndexLevelSeries(slug: String, completion: @escaping (_ data: ListVaultMarketIndexLevelSeriesResponse?, _ error: Error?) -> Void)
```

An index's published levels. `engine=chain` (default): daily closes. `engine=tpd|repeat_sales`: weekly (else monthly) model estimates with a 95% band and n; labelled, never a price. `series=settlement` returns each value as first published (never restated). Below the data gate `data` is empty and `notice` explains.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// An index's published levels. `engine=chain` (default): daily closes. `engine=tpd|repeat_sales`: weekly (else monthly) model estimates with a 95% band and n; labelled, never a price. `series=settlement` returns each value as first published (never restated). Below the data gate `data` is empty and `notice` explains.
VaultMarketsAPI.listVaultMarketIndexLevelSeries(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketIndexLevelSeriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexLicenceMine**
```swift
    open class func listVaultMarketIndexLicenceMine(completion: @escaping (_ data: ListVaultMarketIndexLicenceMineResponse?, _ error: Error?) -> Void)
```

Your index feed licences (the indexes each covers, or all), as ops recorded them. No licence: the feed answers 403 not_a_licensee.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your index feed licences (the indexes each covers, or all), as ops recorded them. No licence: the feed answers 403 not_a_licensee.
VaultMarketsAPI.listVaultMarketIndexLicenceMine() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexLicenceMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexMembers**
```swift
    open class func listVaultMarketIndexMembers(slug: String, completion: @escaping (_ data: ListVaultMarketIndexMembersResponse?, _ error: Error?) -> Void)
```

The members of an index on a day (`asOf`, default today) with their weights, shares, moves and contributions; for a past day, the inputs stored with that day's close and each member's effective dates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// The members of an index on a day (`asOf`, default today) with their weights, shares, moves and contributions; for a past day, the inputs stored with that day's close and each member's effective dates.
VaultMarketsAPI.listVaultMarketIndexMembers(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketIndexMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexMovers**
```swift
    open class func listVaultMarketIndexMovers(completion: @escaping (_ data: ListVaultMarketIndexesResponse?, _ error: Error?) -> Void)
```

The built-in indexes that moved most since their last daily close.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The built-in indexes that moved most since their last daily close.
VaultMarketsAPI.listVaultMarketIndexMovers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketIndexes**
```swift
    open class func listVaultMarketIndexes(completion: @escaping (_ data: ListVaultMarketIndexesResponse?, _ error: Error?) -> Void)
```

Indexes over book keys: per category, per top brand, the Crossly 50 and your own. Each with its level now (base 1000 at inception) and change since the last daily close.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Indexes over book keys: per category, per top brand, the Crossly 50 and your own. Each with its level now (base 1000 at inception) and change since the last daily close.
VaultMarketsAPI.listVaultMarketIndexes() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketIndexesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketInstantExitHistory**
```swift
    open class func listVaultMarketInstantExitHistory(completion: @escaping (_ data: ListVaultMarketInstantExitHistoryResponse?, _ error: Error?) -> Void)
```

Your Instant Exits, newest first: quoted price, mark, and whether it filled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Instant Exits, newest first: quoted price, mark, and whether it filled.
VaultMarketsAPI.listVaultMarketInstantExitHistory() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketInstantExitHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketInstantExitHoldings**
```swift
    open class func listVaultMarketInstantExitHoldings(completion: @escaping (_ data: ListVaultMarketInstantExitHoldingsResponse?, _ error: Error?) -> Void)
```

Instant Exit quotes for everything you hold in the vault, one per book key, with units held and which are free to sell.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Instant Exit quotes for everything you hold in the vault, one per book key, with units held and which are free to sell.
VaultMarketsAPI.listVaultMarketInstantExitHoldings() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketInstantExitHoldingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketJointTrades**
```swift
    open class func listVaultMarketJointTrades(id: String, completion: @escaping (_ data: ListVaultMarketJointTradesResponse?, _ error: Error?) -> Void)
```

The joint vault trades, newest first: side, book key, limit, who started it, whose account the order sits on, and the order standing on the book.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The joint vault trades, newest first: side, book key, limit, who started it, whose account the order sits on, and the order standing on the book.
VaultMarketsAPI.listVaultMarketJointTrades(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketJointTradesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketLargeTraderReports**
```swift
    open class func listVaultMarketLargeTraderReports(completion: @escaping (_ data: ListVaultMarketLargeTraderReportsResponse?, _ error: Error?) -> Void)
```

Your large-trader reports (with any linked accounts, as one party): due first, then filed, then cleared in the last 90 days. Each has `action`: file | amend | refile | none.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your large-trader reports (with any linked accounts, as one party): due first, then filed, then cleared in the last 90 days. Each has `action`: file | amend | refile | none.
VaultMarketsAPI.listVaultMarketLargeTraderReports() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketLargeTraderReportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketLendingStatements**
```swift
    open class func listVaultMarketLendingStatements(completion: @escaping (_ data: ListVaultMarketLendingStatementsResponse?, _ error: Error?) -> Void)
```

The days you have stored collateral statements for, newest first, with their summary.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The days you have stored collateral statements for, newest first, with their summary.
VaultMarketsAPI.listVaultMarketLendingStatements() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketLendingStatementsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketLoans**
```swift
    open class func listVaultMarketLoans(completion: @escaping (_ data: ListVaultMarketLoansResponse?, _ error: Error?) -> Void)
```

Units you lent: rate, fees earned, recall due.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Units you lent: rate, fees earned, recall due.
VaultMarketsAPI.listVaultMarketLoans() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketLoansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketLocateMine**
```swift
    open class func listVaultMarketLocateMine(completion: @escaping (_ data: ListVaultMarketLocateMineResponse?, _ error: Error?) -> Void)
```

Your locates, newest first (held / used / released / expired).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your locates, newest first (held / used / released / expired).
VaultMarketsAPI.listVaultMarketLocateMine() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketLocateMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketMidpoint**
```swift
    open class func listVaultMarketMidpoint(completion: @escaping (_ data: ListVaultMarketMidpointResponse?, _ error: Error?) -> Void)
```

Your midpoint block orders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your midpoint block orders.
VaultMarketsAPI.listVaultMarketMidpoint() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketMidpointResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketMovers**
```swift
    open class func listVaultMarketMovers(completion: @escaping (_ data: ListVaultMarketMoversResponse?, _ error: Error?) -> Void)
```

Vault items with the biggest 24 h moves in their market price (from the order book), with units in the vault.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Vault items with the biggest 24 h moves in their market price (from the order book), with units in the vault.
VaultMarketsAPI.listVaultMarketMovers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketMoversResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketNavHistory**
```swift
    open class func listVaultMarketNavHistory(completion: @escaping (_ data: ListVaultMarketNavHistoryResponse?, _ error: Error?) -> Void)
```

Daily NAV snapshots (mark, bid, liquidation, Level 2 / Level 3).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Daily NAV snapshots (mark, bid, liquidation, Level 2 / Level 3).
VaultMarketsAPI.listVaultMarketNavHistory() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketNavHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketOffers**
```swift
    open class func listVaultMarketOffers(completion: @escaping (_ data: ListVaultMarketOffersResponse?, _ error: Error?) -> Void)
```

The offers inbox: for each book key you hold, the best bid from someone else, units at it, the top bid levels, the mark, and your alert.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The offers inbox: for each book key you hold, the best bid from someone else, units at it, the top bid levels, the mark, and your alert.
VaultMarketsAPI.listVaultMarketOffers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketOpening**
```swift
    open class func listVaultMarketOpening(completion: @escaping (_ data: ListVaultMarketOpeningResponse?, _ error: Error?) -> Void)
```

Keys opening soon on the vault book (and just opened): units on the shelf, dealers quoting, the waitlist, the mark when the book has one, and your place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Keys opening soon on the vault book (and just opened): units on the shelf, dealers quoting, the waitlist, the mark when the book has one, and your place.
VaultMarketsAPI.listVaultMarketOpening() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketOpeningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketOracleHistory**
```swift
    open class func listVaultMarketOracleHistory(slug: String, completion: @escaping (_ data: ListVaultMarketOracleHistoryResponse?, _ error: Error?) -> Void)
```

Recent publish attempts for an index over 30 days, newest first: published, skipped (with the reason: too few items priced, stale marks, confidence too wide...) or failed (with the error). Filter with `status`, cap with `limit` (default 100).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Recent publish attempts for an index over 30 days, newest first: published, skipped (with the reason: too few items priced, stale marks, confidence too wide...) or failed (with the error). Filter with `status`, cap with `limit` (default 100).
VaultMarketsAPI.listVaultMarketOracleHistory(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketOracleHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketP2pAuctions**
```swift
    open class func listVaultMarketP2pAuctions(completion: @escaping (_ data: ListVaultMarketP2pLoansResponse?, _ error: Error?) -> Void)
```

Running refinancing auctions, soonest to end first: lenders calls (`auction`) and borrowers looking for a cheaper lender (`refiAuction`). The payoff now, the rate a new lender gets now, when it ends, and the item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Running refinancing auctions, soonest to end first: lenders calls (`auction`) and borrowers looking for a cheaper lender (`refiAuction`). The payoff now, the rate a new lender gets now, when it ends, and the item.
VaultMarketsAPI.listVaultMarketP2pAuctions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pLoansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketP2pLoans**
```swift
    open class func listVaultMarketP2pLoans(completion: @escaping (_ data: ListVaultMarketP2pLoansResponse?, _ error: Error?) -> Void)
```

Your P2P loans as borrower and/or lender (`role`), live by default (`status`): what is owed now, daily interest, the refinancing auction when called, and the item mark for information only (it never triggers anything).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your P2P loans as borrower and/or lender (`role`), live by default (`status`): what is owed now, daily interest, the refinancing auction when called, and the item mark for information only (it never triggers anything).
VaultMarketsAPI.listVaultMarketP2pLoans() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pLoansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketP2pOfferMine**
```swift
    open class func listVaultMarketP2pOfferMine(completion: @escaping (_ data: ListVaultMarketP2pOffersResponse?, _ error: Error?) -> Void)
```

Your P2P loan offers, newest first, with how many loans each has funded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your P2P loan offers, newest first, with how many loans each has funded.
VaultMarketsAPI.listVaultMarketP2pOfferMine() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketP2pOffers**
```swift
    open class func listVaultMarketP2pOffers(completion: @escaping (_ data: ListVaultMarketP2pOffersResponse?, _ error: Error?) -> Void)
```

The open P2P loan offers book, lowest rate first: cents offered per loan, APR (bps), loans left, and the item (book key) or unit each lends against. `bookKey` narrows to one item. Lender identities are never shown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The open P2P loan offers book, lowest rate first: cents offered per loan, APR (bps), loans left, and the item (book key) or unit each lends against. `bookKey` narrows to one item. Lender identities are never shown.
VaultMarketsAPI.listVaultMarketP2pOffers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketP2pUnits**
```swift
    open class func listVaultMarketP2pUnits(completion: @escaping (_ data: ListVaultMarketP2pUnitsResponse?, _ error: Error?) -> Void)
```

Your vault units for P2P borrowing: whether each can be pledged now (and why not), the best offers covering it, and its loan when it has one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault units for P2P borrowing: whether each can be pledged now (and why not), the best offers covering it, and its loan when it has one.
VaultMarketsAPI.listVaultMarketP2pUnits() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketP2pUnitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPaperFills**
```swift
    open class func listVaultMarketPaperFills(completion: @escaping (_ data: ListVaultMarketPaperFillsResponse?, _ error: Error?) -> Void)
```

Your paper fills since your last reset, newest first: price, simulated fee, taker or maker, and whether a visible real order (book) or a real trade (tape) filled it. Play money only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your paper fills since your last reset, newest first: price, simulated fee, taker or maker, and whether a visible real order (book) or a real trade (tape) filled it. Play money only.
VaultMarketsAPI.listVaultMarketPaperFills() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPaperFillsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPaperLeaderboard**
```swift
    open class func listVaultMarketPaperLeaderboard(completion: @escaping (_ data: ListVaultMarketPaperLeaderboardResponse?, _ error: Error?) -> Void)
```

The weekly paper trading leaderboard (opt-in, display names only): best return on play equity this week (or a past `week`, its Monday as YYYY-MM-DD), with your own line. Nothing is won or paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The weekly paper trading leaderboard (opt-in, display names only): best return on play equity this week (or a past `week`, its Monday as YYYY-MM-DD), with your own line. Nothing is won or paid.
VaultMarketsAPI.listVaultMarketPaperLeaderboard() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPaperLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPaperMissions**
```swift
    open class func listVaultMarketPaperMissions(completion: @escaping (_ data: ListVaultMarketPaperMissionsResponse?, _ error: Error?) -> Void)
```

Your paper-trading missions (play money only): each mission with what to do, your count toward its target, whether it is done and when, plus a suggested market for the \"Read the mark\" mission. Progress is observed by the server from your paper orders and fills, price watches, set goals and graded mark checks. Missions earn world quest progress and cosmetic pins, never money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your paper-trading missions (play money only): each mission with what to do, your count toward its target, whether it is done and when, plus a suggested market for the \"Read the mark\" mission. Progress is observed by the server from your paper orders and fills, price watches, set goals and graded mark checks. Missions earn world quest progress and cosmetic pins, never money.
VaultMarketsAPI.listVaultMarketPaperMissions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPaperMissionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPaperOrders**
```swift
    open class func listVaultMarketPaperOrders(completion: @escaping (_ data: ListVaultMarketPaperOrdersResponse?, _ error: Error?) -> Void)
```

Your paper orders since your last reset, newest first: working, done (filled, cancelled, expired) or all. Play money only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your paper orders since your last reset, newest first: working, done (filled, cancelled, expired) or all. Play money only.
VaultMarketsAPI.listVaultMarketPaperOrders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPaperOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPartnerAccruals**
```swift
    open class func listVaultMarketPartnerAccruals(completion: @escaping (_ data: ListVaultMarketPartnerAccrualsResponse?, _ error: Error?) -> Void)
```

Your partner fee shares, newest first: accrued on a unit's first sale, paid in Bucks once the sale is final, void if it was refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your partner fee shares, newest first: accrued on a unit's first sale, paid in Bucks once the sale is final, void if it was refunded.
VaultMarketsAPI.listVaultMarketPartnerAccruals() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPartnerAccrualsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPoolStakes**
```swift
    open class func listVaultMarketPoolStakes(completion: @escaping (_ data: ListVaultMarketPoolStakesResponse?, _ error: Error?) -> Void)
```

Your stakes in the market pool and what each redeems for now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your stakes in the market pool and what each redeems for now.
VaultMarketsAPI.listVaultMarketPoolStakes() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPoolStakesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPortfolioMarginHistory**
```swift
    open class func listVaultMarketPortfolioMarginHistory(completion: @escaping (_ data: ListVaultMarketPortfolioMarginHistoryResponse?, _ error: Error?) -> Void)
```

The 5-minute portfolio margin recalculations for a firm sub-account over the last `hours` (default 24, at most 720), newest first: equity, requirement, excess, scenario and floor figures, gross and state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The 5-minute portfolio margin recalculations for a firm sub-account over the last `hours` (default 24, at most 720), newest first: equity, requirement, excess, scenario and floor figures, gross and state.
VaultMarketsAPI.listVaultMarketPortfolioMarginHistory() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPortfolioMarginHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPositionUnits**
```swift
    open class func listVaultMarketPositionUnits(id: UUID, completion: @escaping (_ data: ListVaultMarketPositionUnitsResponse?, _ error: Error?) -> Void)
```

The vault units of one of your positions that you hold (a leveraged long's collateral), each with its story link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// The vault units of one of your positions that you hold (a leveraged long's collateral), each with its story link.
VaultMarketsAPI.listVaultMarketPositionUnits(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketPositionUnitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPositions**
```swift
    open class func listVaultMarketPositions(completion: @escaping (_ data: ListVaultMarketPositionsResponse?, _ error: Error?) -> Void)
```

Your positions, live (default) or closed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your positions, live (default) or closed.
VaultMarketsAPI.listVaultMarketPositions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPositionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPositionsRisk**
```swift
    open class func listVaultMarketPositionsRisk(completion: @escaping (_ data: ListVaultMarketPositionsRiskResponse?, _ error: Error?) -> Void)
```

For each live position: its tier, health, margin state, the mark at which it is called and the mark at which it is liquidated, and the distance to it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// For each live position: its tier, health, margin state, the mark at which it is called and the mark at which it is liquidated, and the distance to it.
VaultMarketsAPI.listVaultMarketPositionsRisk() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPositionsRiskResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketPriceWidgets**
```swift
    open class func listVaultMarketPriceWidgets(completion: @escaping (_ data: ListVaultMarketPriceWidgetsResponse?, _ error: Error?) -> Void)
```

Your price widgets, newest first, each with its iframe and script-tag snippets. `meta.codes` lists your affiliate codes a widget can link through; `meta.max` is the cap on live widgets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your price widgets, newest first, each with its iframe and script-tag snippets. `meta.codes` lists your affiliate codes a widget can link through; `meta.max` is the cap on live widgets.
VaultMarketsAPI.listVaultMarketPriceWidgets() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketPriceWidgetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProCandles**
```swift
    open class func listVaultMarketProCandles(completion: @escaping (_ data: ListVaultMarketProCandlesResponse?, _ error: Error?) -> Void)
```

OHLCV candles (1m, 5m, 15m, 1h, 4h, 1d) from the trades on a book key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// OHLCV candles (1m, 5m, 15m, 1h, 4h, 1d) from the trades on a book key.
VaultMarketsAPI.listVaultMarketProCandles() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProCandlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProEvents**
```swift
    open class func listVaultMarketProEvents(completion: @escaping (_ data: ListVaultMarketProEventsResponse?, _ error: Error?) -> Void)
```

Your order event log after a sequence number (new, leg, fill, replaced, cancelled, expired, done): a replayable drop copy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your order event log after a sequence number (new, leg, fill, replaced, cancelled, expired, done): a replayable drop copy.
VaultMarketsAPI.listVaultMarketProEvents() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProLinks**
```swift
    open class func listVaultMarketProLinks(completion: @escaping (_ data: ListVaultMarketProLinksResponse?, _ error: Error?) -> Void)
```

Your linked orders (brackets, OCO pairs, trailing stops, position exits): live (default) or done.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your linked orders (brackets, OCO pairs, trailing stops, position exits): live (default) or done.
VaultMarketsAPI.listVaultMarketProLinks() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProLinksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProOrders**
```swift
    open class func listVaultMarketProOrders(completion: @escaping (_ data: ListVaultMarketProOrdersResponse?, _ error: Error?) -> Void)
```

Your orders: open (default) or done, optionally on one book key, or only those booked to one sub-account (`subaccountId`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your orders: open (default) or done, optionally on one book key, or only those booked to one sub-account (`subaccountId`).
VaultMarketsAPI.listVaultMarketProOrders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProQuotes**
```swift
    open class func listVaultMarketProQuotes(completion: @escaping (_ data: ListVaultMarketProQuotesResponse?, _ error: Error?) -> Void)
```

Your live quotes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your live quotes.
VaultMarketsAPI.listVaultMarketProQuotes() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProQuotesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProRewards**
```swift
    open class func listVaultMarketProRewards(completion: @escaping (_ data: ListVaultMarketProRewardsResponse?, _ error: Error?) -> Void)
```

Your daily market-maker liquidity rewards (paid in CBX).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your daily market-maker liquidity rewards (paid in CBX).
VaultMarketsAPI.listVaultMarketProRewards() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProRewardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProTape**
```swift
    open class func listVaultMarketProTape(completion: @escaping (_ data: ListVaultMarketProTapeResponse?, _ error: Error?) -> Void)
```

The latest trades on a book key, newest first, with which side made and which took.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The latest trades on a book key, newest first, with which side made and which took.
VaultMarketsAPI.listVaultMarketProTape() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketProTapeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketProofOfReserveLeaves**
```swift
    open class func listVaultMarketProofOfReserveLeaves(day: String, completion: @escaping (_ data: ListVaultMarketProofOfReserveLeavesResponse?, _ error: Error?) -> Void)
```

One day's leaf hashes in tree order, a page at a time: enough to recount the units and rebuild the root yourself. Leaves are salted, so they name no owner.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let day = "day_example" // String | 

// One day's leaf hashes in tree order, a page at a time: enough to recount the units and rebuild the root yourself. Leaves are salted, so they name no owner.
VaultMarketsAPI.listVaultMarketProofOfReserveLeaves(day: day) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **String** |  | 

### Return type

**ListVaultMarketProofOfReserveLeavesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRecurring**
```swift
    open class func listVaultMarketRecurring(completion: @escaping (_ data: ListVaultMarketRecurringResponse?, _ error: Error?) -> Void)
```

Your recurring buys: key, schedule, price cap, payment, auto-lend, next run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your recurring buys: key, schedule, price cap, payment, auto-lend, next run.
VaultMarketsAPI.listVaultMarketRecurring() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRecurringResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRecurringRuns**
```swift
    open class func listVaultMarketRecurringRuns(id: String, completion: @escaping (_ data: ListVaultMarketRecurringRunsResponse?, _ error: Error?) -> Void)
```

One recurring buy's runs: filled, skipped (with the reason, e.g. the price was over the cap) or failed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One recurring buy's runs: filled, skipped (with the reason, e.g. the price was over the cap) or failed.
VaultMarketsAPI.listVaultMarketRecurringRuns(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketRecurringRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRecurringRuns2**
```swift
    open class func listVaultMarketRecurringRuns2(completion: @escaping (_ data: ListVaultMarketRecurringRunsResponse?, _ error: Error?) -> Void)
```

Every run of all your recurring buys, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every run of all your recurring buys, newest first.
VaultMarketsAPI.listVaultMarketRecurringRuns2() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRecurringRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRfq**
```swift
    open class func listVaultMarketRfq(completion: @escaping (_ data: ListVaultMarketRfqResponse?, _ error: Error?) -> Void)
```

Your quote requests, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your quote requests, newest first.
VaultMarketsAPI.listVaultMarketRfq() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRfqResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRfqInbox**
```swift
    open class func listVaultMarketRfqInbox(completion: @escaping (_ data: ListVaultMarketRfqInboxResponse?, _ error: Error?) -> Void)
```

Open quote requests you were sent (as a dealer, DMM, LP or holder), with your live answer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open quote requests you were sent (as a dealer, DMM, LP or holder), with your live answer.
VaultMarketsAPI.listVaultMarketRfqInbox() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRfqInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketRfqOpen**
```swift
    open class func listVaultMarketRfqOpen(completion: @escaping (_ data: ListVaultMarketRfqResponse?, _ error: Error?) -> Void)
```

Open quote requests on one key (all-to-all: anyone with ID may answer). Anonymous.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open quote requests on one key (all-to-all: anyone with ID may answer). Anonymous.
VaultMarketsAPI.listVaultMarketRfqOpen() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketRfqResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketSetGoalBaskets**
```swift
    open class func listVaultMarketSetGoalBaskets(id: String, completion: @escaping (_ data: ListVaultMarketSetGoalBasketsResponse?, _ error: Error?) -> Void)
```

A set goal basket bids, newest first, each with its budget, what it committed and spent, and every leg (piece, book key, limit, pro order id, status).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A set goal basket bids, newest first, each with its budget, what it committed and spent, and every leg (piece, book key, limit, pro order id, status).
VaultMarketsAPI.listVaultMarketSetGoalBaskets(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketSetGoalBasketsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketSetGoalSets**
```swift
    open class func listVaultMarketSetGoalSets(completion: @escaping (_ data: ListVaultMarketSetGoalSetsResponse?, _ error: Error?) -> Void)
```

Sets to start a goal on. With q (2+ characters): a word-start search of every catalogue set. Without: the sets you hold pieces of in the vault, then the collections you are building. Each with your live goal on it, if any.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Sets to start a goal on. With q (2+ characters): a word-start search of every catalogue set. Without: the sets you hold pieces of in the vault, then the collections you are building. Each with your live goal on it, if any.
VaultMarketsAPI.listVaultMarketSetGoalSets() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketSetGoalSetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketSetGoals**
```swift
    open class func listVaultMarketSetGoals(completion: @escaping (_ data: ListVaultMarketSetGoalsResponse?, _ error: Error?) -> Void)
```

Your set goals: the set, the target a piece must meet, pieces held of the total (from your vault), and the working basket bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your set goals: the set, the target a piece must meet, pieces held of the total (from your vault), and the working basket bid.
VaultMarketsAPI.listVaultMarketSetGoals() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketSetGoalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketShareCards**
```swift
    open class func listVaultMarketShareCards(completion: @escaping (_ data: ListVaultMarketShareCardsResponse?, _ error: Error?) -> Void)
```

Your share cards (not taken down), each as the public sees it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your share cards (not taken down), each as the public sees it.
VaultMarketsAPI.listVaultMarketShareCards() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketShareCardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketSupplyDeposits**
```swift
    open class func listVaultMarketSupplyDeposits(completion: @escaping (_ data: ListVaultMarketSupplyDepositsResponse?, _ error: Error?) -> Void)
```

Your units sent to the vault, newest first, each with its state and its key's Instant Exit line (\"Instant Exit now: $X (N% of mark)\" or \"No market yet\"). Filter with `inventoryItemIds` (comma-separated).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your units sent to the vault, newest first, each with its state and its key's Instant Exit line (\"Instant Exit now: $X (N% of mark)\" or \"No market yet\"). Filter with `inventoryItemIds` (comma-separated).
VaultMarketsAPI.listVaultMarketSupplyDeposits() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketSupplyDepositsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketSupplyInvites**
```swift
    open class func listVaultMarketSupplyInvites(completion: @escaping (_ data: ListVaultMarketSupplyInvitesResponse?, _ error: Error?) -> Void)
```

Market Open invites to you as a dealer: keys Crossly is opening and asks you to quote.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Market Open invites to you as a dealer: keys Crossly is opening and asks you to quote.
VaultMarketsAPI.listVaultMarketSupplyInvites() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketSupplyInvitesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketValuationStatements**
```swift
    open class func listVaultMarketValuationStatements(completion: @escaping (_ data: ListVaultMarketValuationStatementsResponse?, _ error: Error?) -> Void)
```

The insurance and appraisal statements you issued, newest first: purpose, date, units, total at the marks, hash and verify link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The insurance and appraisal statements you issued, newest first: purpose, date, units, total at the marks, hash and verify link.
VaultMarketsAPI.listVaultMarketValuationStatements() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketValuationStatementsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketVaultSuggestions**
```swift
    open class func listVaultMarketVaultSuggestions(completion: @escaping (_ data: ListVaultMarketVaultSuggestionsResponse?, _ error: Error?) -> Void)
```

What to send to the vault: your inventory items whose book key has a liquid vault market (tier A, B or C), best first. Each has a score (0 to 100) and its reasons, the market (tier, mark and its quality, best bid, best vault ask, spread), Instant Exit now, your list price, days listed without selling, and the vault fee. `meta.summary` counts what was left out and why. Inform only; send with POST /api/v1/vault-markets/supply/send.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What to send to the vault: your inventory items whose book key has a liquid vault market (tier A, B or C), best first. Each has a score (0 to 100) and its reasons, the market (tier, mark and its quality, best bid, best vault ask, spread), Instant Exit now, your list price, days listed without selling, and the vault fee. `meta.summary` counts what was left out and why. Inform only; send with POST /api/v1/vault-markets/supply/send.
VaultMarketsAPI.listVaultMarketVaultSuggestions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketVaultSuggestionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketWatchlist**
```swift
    open class func listVaultMarketWatchlist(completion: @escaping (_ data: ListVaultMarketWatchlistResponse?, _ error: Error?) -> Void)
```

Your watched book keys with mark, 24 h and 7 d change, and the last 30 daily marks (sparkline).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your watched book keys with mark, 24 h and 7 d change, and the last 30 daily marks (sparkline).
VaultMarketsAPI.listVaultMarketWatchlist() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketWatchlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketWidgetTokens**
```swift
    open class func listVaultMarketWidgetTokens(completion: @escaping (_ data: ListVaultMarketWidgetTokensResponse?, _ error: Error?) -> Void)
```

Your live home-screen widget tokens, one per phone: id, name (the phone), public prefix, created and last used. The secret is never returned again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your live home-screen widget tokens, one per phone: id, name (the phone), public prefix, created and last used. The secret is never returned again.
VaultMarketsAPI.listVaultMarketWidgetTokens() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketWidgetTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketWorldCohosts**
```swift
    open class func listVaultMarketWorldCohosts(completion: @escaping (_ data: ListVaultMarketWorldCohostsResponse?, _ error: Error?) -> Void)
```

Market Open launch shows a verified creator co-hosts that are on now or opening soon: the key, its phase, the show, the creator (named only while their vault profile is public), their room link and, when the creator is in the creator programme, the disclosure that they may earn a share of the fee Crossly keeps. Never a prompt to trade.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Market Open launch shows a verified creator co-hosts that are on now or opening soon: the key, its phase, the show, the creator (named only while their vault profile is public), their room link and, when the creator is in the creator programme, the disclosure that they may earn a share of the fee Crossly keeps. Never a prompt to trade.
VaultMarketsAPI.listVaultMarketWorldCohosts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketWorldCohostsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketWorldCreatorRooms**
```swift
    open class func listVaultMarketWorldCreatorRooms(completion: @escaping (_ data: ListVaultMarketWorldCreatorRoomsResponse?, _ error: Error?) -> Void)
```

Verified creators whose public vault shelf is a world room: title, the creator, the room link and the disclosure. Rooms show each market share of the shelf, never amounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Verified creators whose public vault shelf is a world room: title, the creator, the room link and the disclosure. Rooms show each market share of the shelf, never amounts.
VaultMarketsAPI.listVaultMarketWorldCreatorRooms() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketWorldCreatorRoomsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketWorldMarketOpen**
```swift
    open class func listVaultMarketWorldMarketOpen(completion: @escaping (_ data: ListVaultMarketWorldMarketOpenResponse?, _ error: Error?) -> Void)
```

Market Open events in the Crossly World Commons: keys opening soon and those that opened in the last few hours, live first then soonest, each with its board line, units on the shelf, dealers quoting and the launch show when there is one. Never a prompt to trade.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Market Open events in the Crossly World Commons: keys opening soon and those that opened in the last few hours, live first then soonest, each with its board line, units on the shelf, dealers quoting and the launch show when there is one. Never a prompt to trade.
VaultMarketsAPI.listVaultMarketWorldMarketOpen() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketWorldMarketOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultReceiptTokenWallets**
```swift
    open class func listVaultReceiptTokenWallets(completion: @escaping (_ data: ListVaultReceiptTokenWalletsResponse?, _ error: Error?) -> Void)
```

Your verified Solana wallets and whether each is on the receipt-token allow-list (receipt tokens move only between allow-listed wallets). meta.state is the gate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your verified Solana wallets and whether each is on the receipt-token allow-list (receipt tokens move only between allow-listed wallets). meta.state is the gate.
VaultMarketsAPI.listVaultReceiptTokenWallets() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultReceiptTokenWalletsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultReceiptTokens**
```swift
    open class func listVaultReceiptTokens(completion: @escaping (_ data: ListVaultReceiptTokensResponse?, _ error: Error?) -> Void)
```

Your vault units with their warehouse receipt and receipt-token state (not exported, waiting for a signature, in a wallet, frozen, redeemed), whether each can be exported now and why not. meta.state is the gate (open, missing envs, program id, authority, terms version, cluster); meta.history is your last 50 exports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your vault units with their warehouse receipt and receipt-token state (not exported, waiting for a signature, in a wallet, frozen, redeemed), whether each can be exported now and why not. meta.state is the gate (open, missing envs, program id, authority, terms version, cluster); meta.history is your last 50 exports.
VaultMarketsAPI.listVaultReceiptTokens() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultReceiptTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultReceipts**
```swift
    open class func listVaultReceipts(completion: @escaping (_ data: ListVaultReceiptsResponse?, _ error: Error?) -> Void)
```

Your warehouse receipts (documents of title for your vault units), live first. meta.receipts says whether receipts are registered (VAULT_WAREHOUSE_ISSUER) and their terms version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your warehouse receipts (documents of title for your vault units), live first. meta.receipts says whether receipts are registered (VAULT_WAREHOUSE_ISSUER) and their terms version.
VaultMarketsAPI.listVaultReceipts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultUnitList**
```swift
    open class func listVaultUnitList(completion: @escaping (_ data: ListVaultUnitListResponse?, _ error: Error?) -> Void)
```

The published unit list (bar-list equivalent): every unit on a vault shelf with its warehouse receipt number (when receipts are registered), book key, shelf location code, insured value, status, pledged / on-loan flags and a per-receipt hashed holder (never a name or id). Filter with `bookKey`; pages with `page` / `limit`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The published unit list (bar-list equivalent): every unit on a vault shelf with its warehouse receipt number (when receipts are registered), book key, shelf location code, insured value, status, pledged / on-loan flags and a per-receipt hashed holder (never a name or id). Filter with `bookKey`; pages with `page` / `limit`.
VaultMarketsAPI.listVaultUnitList() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultUnitListResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketAlertPref**
```swift
    open class func updateVaultMarketAlertPref(completion: @escaping (_ data: GetVaultMarketAlertPrefResponse?, _ error: Error?) -> Void)
```

Change vault alert settings: `matrix` ({ kind: { channel: true|false } }, merged onto what is set), `quietHours` ({ start: \"HH:MM\", end: \"HH:MM\", tz } or null to clear) and `telegram` (the Telegram master switch). Locked switches are ignored. Returns the new settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change vault alert settings: `matrix` ({ kind: { channel: true|false } }, merged onto what is set), `quietHours` ({ start: \"HH:MM\", end: \"HH:MM\", tz } or null to clear) and `telegram` (the Telegram master switch). Locked switches are ignored. Returns the new settings.
VaultMarketsAPI.updateVaultMarketAlertPref() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketAlertPrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketBlockAllocation**
```swift
    open class func updateVaultMarketBlockAllocation(orderId: String, completion: @escaping (_ data: ListVaultMarketBlocksItem?, _ error: Error?) -> Void)
```

Post-trade allocation: set or replace the plan for a buy you placed for one of the entity's sub-accounts (that sub-account leads). Refused once any share has moved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let orderId = "orderId_example" // String | 

// Post-trade allocation: set or replace the plan for a buy you placed for one of the entity's sub-accounts (that sub-account leads). Refused once any share has moved.
VaultMarketsAPI.updateVaultMarketBlockAllocation(orderId: orderId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String** |  | 

### Return type

**ListVaultMarketBlocksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketChannel**
```swift
    open class func updateVaultMarketChannel(completion: @escaping (_ data: GetVaultMarketChannelResponse?, _ error: Error?) -> Void)
```

Change the switches: `telegramAlerts`, `telegramDigest`, `pushCapPerDay` (0 to 20). Margin calls and recalls are never capped. Returns the new view.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change the switches: `telegramAlerts`, `telegramDigest`, `pushCapPerDay` (0 to 20). Margin calls and recalls are never capped. Returns the new view.
VaultMarketsAPI.updateVaultMarketChannel() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketChannelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketDealerBand**
```swift
    open class func updateVaultMarketDealerBand(completion: @escaping (_ data: ListVaultMarketDealerBandsItem?, _ error: Error?) -> Void)
```

Commit to an Instant Exit band on a key: a standing bid for `units` kept at `bandBps` of the mark, never above `maxPriceCents`, re-quoted as the mark moves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Commit to an Instant Exit band on a key: a standing bid for `units` kept at `bandBps` of the mark, never above `maxPriceCents`, re-quoted as the mark moves.
VaultMarketsAPI.updateVaultMarketDealerBand() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListVaultMarketDealerBandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketDealerPool**
```swift
    open class func updateVaultMarketDealerPool(id: String, completion: @escaping (_ data: ListVaultMarketDealerPoolsItem?, _ error: Error?) -> Void)
```

Change a curve pool: spot, step, fee, levels, units, buy budget, floor, ceiling, or pause / resume. Re-quoted at once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change a curve pool: spot, step, fee, levels, units, buy budget, floor, ceiling, or pause / resume. Re-quoted at once.
VaultMarketsAPI.updateVaultMarketDealerPool(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketDealerPoolsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketEntityMember**
```swift
    open class func updateVaultMarketEntityMember(id: String, memberId: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: change a member's role, limits or sub-accounts. The last admin cannot be demoted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let memberId = "memberId_example" // String | 

// Admin: change a member's role, limits or sub-accounts. The last admin cannot be demoted.
VaultMarketsAPI.updateVaultMarketEntityMember(id: id, memberId: memberId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **memberId** | **String** |  | 

### Return type

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketEntitySubaccountLimit**
```swift
    open class func updateVaultMarketEntitySubaccountLimit(id: String, subId: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: set a sub-account's limits (per-order notional, units per key, gross, net, leverage), held to the entity's caps. `limits: null` clears them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let subId = "subId_example" // String | 

// Admin: set a sub-account's limits (per-order notional, units per key, gross, net, leverage), held to the entity's caps. `limits: null` clears them.
VaultMarketsAPI.updateVaultMarketEntitySubaccountLimit(id: id, subId: subId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **subId** | **String** |  | 

### Return type

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketEntityUsdElection**
```swift
    open class func updateVaultMarketEntityUsdElection(id: String, completion: @escaping (_ data: GetVaultMarketEntityByIdResponse?, _ error: Error?) -> Void)
```

Admin: elect USD for the entity (`usdOnly`). Its sub-accounts then post collateral in USD only and pay every fee in USD, and any CBX reward paid to one of them is converted to USD by the custodian in that account. Audited; it can be turned off again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Admin: elect USD for the entity (`usdOnly`). Its sub-accounts then post collateral in USD only and pay every fee in USD, and any CBX reward paid to one of them is converted to USD by the custodian in that account. Audited; it can be turned off again.
VaultMarketsAPI.updateVaultMarketEntityUsdElection(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketEntityByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketFollowCopyWatch**
```swift
    open class func updateVaultMarketFollowCopyWatch(handle: String, completion: @escaping (_ data: DeleteVaultMarketFollowCopyWatchResponse?, _ error: Error?) -> Void)
```

Copy-watch a collector who shares bids and asks: you get an alert when they rest a new one. It never places an order for you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Copy-watch a collector who shares bids and asks: you get an alert when they rest a new one. It never places an order for you.
VaultMarketsAPI.updateVaultMarketFollowCopyWatch(handle: handle) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteVaultMarketFollowCopyWatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketFollowSharing**
```swift
    open class func updateVaultMarketFollowSharing(completion: @escaping (_ data: GetVaultMarketFollowSharingResponse?, _ error: Error?) -> Void)
```

Turn sharing switches on or off (`isPublic`, `showBuys`, `deposits`, `sales`, `hallLoans`, `orders`, `leaderboard`). A switch shows only what happens after it goes on; all but the profile itself need the profile public.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn sharing switches on or off (`isPublic`, `showBuys`, `deposits`, `sales`, `hallLoans`, `orders`, `leaderboard`). A switch shows only what happens after it goes on; all but the profile itself need the profile public.
VaultMarketsAPI.updateVaultMarketFollowSharing() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketFollowSharingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketHomeUnit**
```swift
    open class func updateVaultMarketHomeUnit(completion: @escaping (_ data: UpdateVaultMarketHomeUnitResponse?, _ error: Error?) -> Void)
```

Show exactly these vault units in your Crossly World home: { units: [{ vaultItemId, visitors }] }. Units left out come out of their cases; units already standing stay where they are; new ones go into a free display-case or shelf slot, else a glass case of their own along a wall. visitors: true lets people who may enter your home see that unit (default false: only you). Returns placed, unplaced (no free case: the home is full), refused (with why) and the desk. Display only: nothing moves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Show exactly these vault units in your Crossly World home: { units: [{ vaultItemId, visitors }] }. Units left out come out of their cases; units already standing stay where they are; new ones go into a free display-case or shelf slot, else a glass case of their own along a wall. visitors: true lets people who may enter your home see that unit (default false: only you). Returns placed, unplaced (no free case: the home is full), refused (with why) and the desk. Display only: nothing moves.
VaultMarketsAPI.updateVaultMarketHomeUnit() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**UpdateVaultMarketHomeUnitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketIndex**
```swift
    open class func updateVaultMarketIndex(slug: String, completion: @escaping (_ data: GetVaultMarketIndexResponse?, _ error: Error?) -> Void)
```

Rename, re-weight, share or change the keys of an index of your own; its level carries on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Rename, re-weight, share or change the keys of an index of your own; its level carries on.
VaultMarketsAPI.updateVaultMarketIndex(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetVaultMarketIndexResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketLendingElection**
```swift
    open class func updateVaultMarketLendingElection(completion: @escaping (_ data: GetVaultMarketLendingElectionResponse?, _ error: Error?) -> Void)
```

Change your lender election (applies to loans opened after the change). Needs lending.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change your lender election (applies to loans opened after the change). Needs lending.
VaultMarketsAPI.updateVaultMarketLendingElection() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketLendingElectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketMmMmp**
```swift
    open class func updateVaultMarketMmMmp(completion: @escaping (_ data: GetVaultMarketMmMmpResponse?, _ error: Error?) -> Void)
```

Set market-maker protection: N units or $X filled on your quotes within T seconds pulls every quote and freezes quoting for a set time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set market-maker protection: N units or $X filled on your quotes within T seconds pulls every quote and freezes quoting for a set time.
VaultMarketsAPI.updateVaultMarketMmMmp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketMmMmpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketMode**
```swift
    open class func updateVaultMarketMode(completion: @escaping (_ data: GetVaultMarketModeResponse?, _ error: Error?) -> Void)
```

Choose your Vault Markets mode: `mode` simple or pro. Remembered for you on the web and in the app. A display preference only: it places nothing and moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Choose your Vault Markets mode: `mode` simple or pro. Remembered for you on the web and in the app. A display preference only: it places nothing and moves no money.
VaultMarketsAPI.updateVaultMarketMode() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketModeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketOfferAlert**
```swift
    open class func updateVaultMarketOfferAlert(completion: @escaping (_ data: UpdateVaultMarketOfferAlertResponse?, _ error: Error?) -> Void)
```

Set (or clear with null) the bid price that should always notify you on a key you hold, and mute or unmute offer notices on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set (or clear with null) the bid price that should always notify you on a key you hold, and mute or unmute offer notices on it.
VaultMarketsAPI.updateVaultMarketOfferAlert() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**UpdateVaultMarketOfferAlertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketPaperLeaderboard**
```swift
    open class func updateVaultMarketPaperLeaderboard(completion: @escaping (_ data: UpdateVaultMarketPaperLeaderboardResponse?, _ error: Error?) -> Void)
```

Join or leave the weekly paper leaderboard. Joining needs a display name (2 to 24 letters, numbers, spaces, dots, dashes or underscores), never your real name. Returns `{ optIn, displayName }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Join or leave the weekly paper leaderboard. Joining needs a display name (2 to 24 letters, numbers, spaces, dots, dashes or underscores), never your real name. Returns `{ optIn, displayName }`.
VaultMarketsAPI.updateVaultMarketPaperLeaderboard() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**UpdateVaultMarketPaperLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketPositionExit**
```swift
    open class func updateVaultMarketPositionExit(id: String, completion: @escaping (_ data: UpdateVaultMarketPositionExitResponse?, _ error: Error?) -> Void)
```

Set a position's take-profit / stop-loss: a long is closed, a short covered, when the last trade reaches one. Both null clears them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a position's take-profit / stop-loss: a long is closed, a short covered, when the last trade reaches one. Both null clears them.
VaultMarketsAPI.updateVaultMarketPositionExit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**UpdateVaultMarketPositionExitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketPriceWidget**
```swift
    open class func updateVaultMarketPriceWidget(id: String, completion: @escaping (_ data: ListVaultMarketPriceWidgetsItem?, _ error: Error?) -> Void)
```

Change a widget: name, range, layout, theme, affiliate code (null for none) or allowed sites. The market or index it shows never changes: make a new widget for another.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change a widget: name, range, layout, theme, affiliate code (null for none) or allowed sites. The market or index it shows never changes: make a new widget for another.
VaultMarketsAPI.updateVaultMarketPriceWidget(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketPriceWidgetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketProfile**
```swift
    open class func updateVaultMarketProfile(completion: @escaping (_ data: GetVaultMarketProfileResponse?, _ error: Error?) -> Void)
```

Turn your public vault profile on or off (`isPublic`) and whether followers see your new buys (`showBuys`). It shows weights by market, never dollars.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn your public vault profile on or off (`isPublic`) and whether followers see your new buys (`showBuys`). It shows weights by market, never dollars.
VaultMarketsAPI.updateVaultMarketProfile() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketRecurring**
```swift
    open class func updateVaultMarketRecurring(id: String, completion: @escaping (_ data: ListVaultMarketRecurringItem?, _ error: Error?) -> Void)
```

Change a recurring buy's schedule, caps, cards or auto-lend, or pause / resume it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change a recurring buy's schedule, caps, cards or auto-lend, or pause / resume it.
VaultMarketsAPI.updateVaultMarketRecurring(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**ListVaultMarketRecurringItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketSetGoal**
```swift
    open class func updateVaultMarketSetGoal(id: String, completion: @escaping (_ data: GetVaultMarketSetGoalResponse?, _ error: Error?) -> Void)
```

Change what a piece must be to count (condition, grade mode, grade). Refused while a basket bid works: cancel it first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change what a piece must be to count (condition, grade mode, grade). Refused while a basket bid works: cancel it first.
VaultMarketsAPI.updateVaultMarketSetGoal(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**GetVaultMarketSetGoalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketShareCard**
```swift
    open class func updateVaultMarketShareCard(id: UUID, completion: @escaping (_ data: ListVaultMarketShareCardsItem?, _ error: Error?) -> Void)
```

Show or hide the dollar amounts on one of your share cards (`showAmounts`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Show or hide the dollar amounts on one of your share cards (`showAmounts`).
VaultMarketsAPI.updateVaultMarketShareCard(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListVaultMarketShareCardsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketSupplyDeposit**
```swift
    open class func updateVaultMarketSupplyDeposit(id: String, completion: @escaping (_ data: UpdateVaultMarketSupplyDepositResponse?, _ error: Error?) -> Void)
```

Change a deposit's toggles: `autoListBps` (list at that share of the mark once stored; null = do not) and `lendWhenIdle`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change a deposit's toggles: `autoListBps` (list at that share of the mark once stored; null = do not) and `lendWhenIdle`.
VaultMarketsAPI.updateVaultMarketSupplyDeposit(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**UpdateVaultMarketSupplyDepositResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketSupplyRoundUp**
```swift
    open class func updateVaultMarketSupplyRoundUp(completion: @escaping (_ data: GetVaultMarketSupplyRoundUpResponse?, _ error: Error?) -> Void)
```

Set the round-up: `shareBps` (1%-50%) of each payout released to you adds to a budget; when it covers the cheapest vault unit on `bookKey`, one unit is bought with your saved card, never above the budget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the round-up: `shareBps` (1%-50%) of each payout released to you adds to a budget; when it covers the cheapest vault unit on `bookKey`, one unit is bought with your saved card, never above the budget.
VaultMarketsAPI.updateVaultMarketSupplyRoundUp() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetVaultMarketSupplyRoundUpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketTodBeneficiary**
```swift
    open class func updateVaultMarketTodBeneficiary(completion: @escaping (_ data: UpdateVaultMarketTodBeneficiaryResponse?, _ error: Error?) -> Void)
```

Replace your beneficiary list (keep an id to edit one): full name, contact (email or @username), relationship, and share in basis points; shares add up to 10000. Returns `{ beneficiaries, removed }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Replace your beneficiary list (keep an id to edit one): full name, contact (email or @username), relationship, and share in basis points; shares add up to 10000. Returns `{ beneficiaries, removed }`.
VaultMarketsAPI.updateVaultMarketTodBeneficiary() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**UpdateVaultMarketTodBeneficiaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketTodDesignation**
```swift
    open class func updateVaultMarketTodDesignation(completion: @escaping (_ data: UpdateVaultMarketTodDesignationResponse?, _ error: Error?) -> Void)
```

Leave one of your units to one beneficiary (beneficiaryId null clears it; the unit then follows the shares). Returns `{ vaultItemId, beneficiaryId }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Leave one of your units to one beneficiary (beneficiaryId null clears it; the unit then follows the shares). Returns `{ vaultItemId, beneficiaryId }`.
VaultMarketsAPI.updateVaultMarketTodDesignation() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**UpdateVaultMarketTodDesignationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketWorldRoomVaultGate**
```swift
    open class func updateVaultMarketWorldRoomVaultGate(id: String, completion: @escaping (_ data: UpdateVaultMarketWorldRoomVaultGateResponse?, _ error: Error?) -> Void)
```

Set the vault-holder door on your own room (its collection rooms follow): visitors must hold minValueCents (cents, at reliable A/B marks) and/or minUnits units in the Crossly vault, mode any (either) or all (both), optionally only one product (scope kind product, ref the catalogue product id), bullion family (bullion, the family slug) or category (category, the slug). Send null to open it again. Returns `{ gate }`. Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set the vault-holder door on your own room (its collection rooms follow): visitors must hold minValueCents (cents, at reliable A/B marks) and/or minUnits units in the Crossly vault, mode any (either) or all (both), optionally only one product (scope kind product, ref the catalogue product id), bullion family (bullion, the family slug) or category (category, the slug). Send null to open it again. Returns `{ gate }`. Moves no money.
VaultMarketsAPI.updateVaultMarketWorldRoomVaultGate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

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

**UpdateVaultMarketWorldRoomVaultGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVaultMarketWorldSpaceVaultGate**
```swift
    open class func updateVaultMarketWorldSpaceVaultGate(slug: String, completion: @escaping (_ data: UpdateVaultMarketWorldRoomVaultGateResponse?, _ error: Error?) -> Void)
```

Set the vault-holder door on a Space you host: the same rule as a room (minValueCents at reliable marks and/or minUnits, mode, optional scope). Send null to open it again. Returns `{ gate }`. Moves no money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Set the vault-holder door on a Space you host: the same rule as a room (minValueCents at reliable marks and/or minUnits, mode, optional scope). Send null to open it again. Returns `{ gate }`. Moves no money.
VaultMarketsAPI.updateVaultMarketWorldSpaceVaultGate(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateVaultMarketWorldRoomVaultGateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

