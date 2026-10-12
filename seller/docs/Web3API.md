# Web3API

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWeb3Alert**](Web3API.md#createweb3alert) | **POST** /v1/web3/alerts | Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below &#x60;price&#x60; (the chain&#39;s native coin). Setting it again moves the price.
[**createWeb3Auction**](Web3API.md#createweb3auction) | **POST** /v1/web3/auctions | Start an English auction on a token in your linked wallet: &#x60;reserve&#x60; is the opening bid in the chain&#39;s native coin, &#x60;hours&#x60; its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.
[**createWeb3AuctionCancel**](Web3API.md#createweb3auctioncancel) | **POST** /v1/web3/auctions/{id}/cancel | Call off your auction while it has no bids.
[**createWeb3CreatorClaim**](Web3API.md#createweb3creatorclaim) | **POST** /v1/web3/creator/claims | Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns &#x60;{ chain, contract }&#x60;.
[**createWeb3Crosslist**](Web3API.md#createweb3crosslist) | **POST** /v1/web3/crosslist | Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.
[**createWeb3DropRemind**](Web3API.md#createweb3dropremind) | **POST** /v1/web3/drops/{id}/remind | Turn the 15-minute reminder for a drop on, or off if it already is. Returns &#x60;{ remindMe }&#x60;.
[**createWeb3Favorite**](Web3API.md#createweb3favorite) | **POST** /v1/web3/favorites | Favourite an NFT, or unfavourite it if it already is. Returns &#x60;{ favorited }&#x60;.
[**createWeb3Launch**](Web3API.md#createweb3launch) | **POST** /v1/web3/launches | Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.
[**createWeb3LaunchAirdrop**](Web3API.md#createweb3launchairdrop) | **POST** /v1/web3/launches/{id}/airdrop | Plan an airdrop (one free NFT each, up to 500) to &#x60;addresses&#x60; and/or the holders of &#x60;holdersOf&#x60;. Returns the transactions for the owner wallet; no payment moves.
[**createWeb3LaunchArt**](Web3API.md#createweb3launchart) | **POST** /v1/web3/launches/{id}/art | Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns &#x60;{ count }&#x60;.
[**createWeb3LaunchConfirmDeploy**](Web3API.md#createweb3launchconfirmdeploy) | **POST** /v1/web3/launches/{id}/confirm-deploy | Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.
[**createWeb3LaunchFollowCreator**](Web3API.md#createweb3launchfollowcreator) | **POST** /v1/web3/launches/{id}/follow-creator | Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns &#x60;{ following }&#x60;.
[**createWeb3LaunchReveal**](Web3API.md#createweb3launchreveal) | **POST** /v1/web3/launches/{id}/reveal | Reveal the art: one random offset maps every token to its asset for good. Returns &#x60;{ revealedAt }&#x60;.
[**createWeb3Order**](Web3API.md#createweb3order) | **POST** /v1/web3/orders | Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.
[**createWeb3OrderCancel**](Web3API.md#createweb3ordercancel) | **POST** /v1/web3/orders/{chain}/{hash}/cancel | Take one of your orders out of the Crossly book.
[**createWeb3OrderFulfillmentBatch**](Web3API.md#createweb3orderfulfillmentbatch) | **POST** /v1/web3/orders/fulfillment-batch | Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.
[**createWeb3Phygital**](Web3API.md#createweb3phygital) | **POST** /v1/web3/phygitals | Make an NFT you hold redeemable for one of your physical inventory items.
[**createWeb3PhygitalRedeem**](Web3API.md#createweb3phygitalredeem) | **POST** /v1/web3/phygitals/{id}/redeem | Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.
[**createWeb3PhygitalRedemptionShip**](Web3API.md#createweb3phygitalredemptionship) | **POST** /v1/web3/phygitals/redemptions/{id}/ship | Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.
[**createWeb3RaribleDraft**](Web3API.md#createweb3raribledraft) | **POST** /v1/web3/rarible/draft | Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible&#39;s transfer proxy is approved.
[**createWeb3RaribleListing**](Web3API.md#createweb3rariblelisting) | **POST** /v1/web3/rarible/listings | Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.
[**createWeb3SolanaListTx**](Web3API.md#createweb3solanalisttx) | **POST** /v1/web3/solana/{marketplace}/list-tx | Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.
[**createWeb3SolanaListing**](Web3API.md#createweb3solanalisting) | **POST** /v1/web3/solana/{marketplace}/listings | Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).
[**createWeb3SolanaOffer**](Web3API.md#createweb3solanaoffer) | **POST** /v1/web3/solana/offers | Record a sent bid; it is recorded only once its trade state exists on chain.
[**createWeb3SolanaOfferAcceptTx**](Web3API.md#createweb3solanaofferaccepttx) | **POST** /v1/web3/solana/offers/{hash}/accept-tx | Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).
[**createWeb3SolanaOfferCancelTx**](Web3API.md#createweb3solanaoffercanceltx) | **POST** /v1/web3/solana/offers/{hash}/cancel-tx | Build the cancel of your bid: the SOL your other bids do not need comes back.
[**createWeb3SolanaOfferConfirm**](Web3API.md#createweb3solanaofferconfirm) | **POST** /v1/web3/solana/offers/{hash}/confirm | Apply a sent accept or cancel once the chain shows the bid closed.
[**createWeb3SolanaOfferTx**](Web3API.md#createweb3solanaoffertx) | **POST** /v1/web3/solana/offers/tx | Build a bid on a Solana NFT on Crossly&#39;s book for your linked wallet to sign; the SOL goes into your Auction House escrow.
[**createWeb3SolanaOrderBuyTx**](Web3API.md#createweb3solanaorderbuytx) | **POST** /v1/web3/solana/orders/{hash}/buy-tx | Build the unsigned transaction that buys a Solana listing (price capped at the listed price).
[**createWeb3SolanaOrderConfirm**](Web3API.md#createweb3solanaorderconfirm) | **POST** /v1/web3/solana/orders/{hash}/confirm | Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).
[**createWeb3SolanaOrderDelistTx**](Web3API.md#createweb3solanaorderdelisttx) | **POST** /v1/web3/solana/orders/{hash}/delist-tx | Build the unsigned transaction that takes your Solana listing down.
[**createWeb3SolanaTensorBidAcceptTx**](Web3API.md#createweb3solanatensorbidaccepttx) | **POST** /v1/web3/solana/tensor-bids/accept-tx | Build the transaction that sells your NFT into a Tensor bid, never below &#x60;minLamports&#x60;.
[**createWeb3SolanaTensorBidCancelTx**](Web3API.md#createweb3solanatensorbidcanceltx) | **POST** /v1/web3/solana/tensor-bids/cancel-tx | Build the transaction that cancels your Tensor bid.
[**createWeb3SolanaTensorBidPlaceTx**](Web3API.md#createweb3solanatensorbidplacetx) | **POST** /v1/web3/solana/tensor-bids/place-tx | Build a Tensor collection bid (or trait bid with &#x60;trait&#x60;) for your Solana wallet to sign. Price in lamports.
[**createWeb3TokenRefresh**](Web3API.md#createweb3tokenrefresh) | **POST** /v1/web3/tokens/{chain}/{contract}/{tokenId}/refresh | Re-read a token&#39;s metadata from the chain&#39;s provider (name, traits, image — a new image is copied to Crossly&#39;s CDN). Once per token per 10 minutes.
[**createWeb3Transaction**](Web3API.md#createweb3transaction) | **POST** /v1/web3/transactions | Apply a Seaport transaction&#39;s fills and cancels to the Crossly book (read from the receipt).
[**createWeb3WalletChallenge**](Web3API.md#createweb3walletchallenge) | **POST** /v1/web3/wallets/challenge | Start linking a wallet: returns the message the wallet must sign.
[**createWeb3WalletSync**](Web3API.md#createweb3walletsync) | **POST** /v1/web3/wallets/{id}/sync | Import a linked wallet&#39;s NFTs into inventory; archives ones that have left the wallet.
[**createWeb3WalletVerify**](Web3API.md#createweb3walletverify) | **POST** /v1/web3/wallets/verify | Finish linking a wallet with its signature over the challenge message.
[**deleteWeb3Alert**](Web3API.md#deleteweb3alert) | **DELETE** /v1/web3/alerts/{id} | Delete a price alert.
[**deleteWeb3HolderPerk**](Web3API.md#deleteweb3holderperk) | **DELETE** /v1/web3/holder-perks/{id} | Remove a holder perk. Returns &#x60;{ ok }&#x60;.
[**deleteWeb3Launch**](Web3API.md#deleteweb3launch) | **DELETE** /v1/web3/launches/{id} | Delete a launch draft that never went live. Returns &#x60;{ ok }&#x60;.
[**deleteWeb3LaunchFollowCreator**](Web3API.md#deleteweb3launchfollowcreator) | **DELETE** /v1/web3/launches/{id}/follow-creator | Stop following the creator of a launch. Returns &#x60;{ following }&#x60;.
[**deleteWeb3MarketplaceKey**](Web3API.md#deleteweb3marketplacekey) | **DELETE** /v1/web3/marketplace-keys/{marketplace} | Remove your own key for a marketplace; Crossly&#39;s key is used again.
[**deleteWeb3Wallet**](Web3API.md#deleteweb3wallet) | **DELETE** /v1/web3/wallets/{id} | Unlink a wallet. Its NFTs stay in inventory but stop syncing.
[**getWeb3Auction**](Web3API.md#getweb3auction) | **GET** /v1/web3/auctions/{chain}/{contract}/{tokenId} | A token&#39;s live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.
[**getWeb3Browse**](Web3API.md#getweb3browse) | **GET** /v1/web3/browse | The Web3 directory&#39;s categories and chains, with how many collections each holds.
[**getWeb3Collection**](Web3API.md#getweb3collection) | **GET** /v1/web3/collections/{chain}/{contract} | A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).
[**getWeb3CollectionDepth**](Web3API.md#getweb3collectiondepth) | **GET** /v1/web3/collections/{chain}/{contract}/depth | A collection&#39;s Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.
[**getWeb3CollectionInsight**](Web3API.md#getweb3collectioninsight) | **GET** /v1/web3/collections/{chain}/{contract}/insights | On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.
[**getWeb3CollectionItem**](Web3API.md#getweb3collectionitem) | **GET** /v1/web3/collections/{chain}/{contract}/items | A collection&#39;s NFTs: filter by traits (repeat trait&#x3D;Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.
[**getWeb3CollectionTrait**](Web3API.md#getweb3collectiontrait) | **GET** /v1/web3/collections/{chain}/{contract}/traits | Every trait type and value in a collection, with how many tokens have each.
[**getWeb3CollectionTraitToken**](Web3API.md#getweb3collectiontraittoken) | **GET** /v1/web3/collections/{chain}/{contract}/trait-tokens | Token ids in a collection with one trait — what a trait offer commits to.
[**getWeb3Collector**](Web3API.md#getweb3collector) | **GET** /v1/web3/collector | Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.
[**getWeb3Creator**](Web3API.md#getweb3creator) | **GET** /v1/web3/creator/{chain}/{contract} | A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).
[**getWeb3CrosslistQuote**](Web3API.md#getweb3crosslistquote) | **GET** /v1/web3/crosslist/quote | Each marketplace&#39;s terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.
[**getWeb3Featured**](Web3API.md#getweb3featured) | **GET** /v1/web3/featured | The NFT home&#39;s featured collections: chosen by Crossly, else the hottest.
[**getWeb3Inventory**](Web3API.md#getweb3inventory) | **GET** /v1/web3/inventory/{itemId} | The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).
[**getWeb3LaunchAllowlistRootTx**](Web3API.md#getweb3launchallowlistroottx) | **GET** /v1/web3/launches/{id}/allowlist/root-tx | The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): &#x60;{ chain, from, to, data }&#x60;.
[**getWeb3LaunchDeployTx**](Web3API.md#getweb3launchdeploytx) | **GET** /v1/web3/launches/{id}/deploy-tx | The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns &#x60;{ chain, from, data }&#x60;.
[**getWeb3LaunchTool**](Web3API.md#getweb3launchtool) | **GET** /v1/web3/launches/{id}/tools | A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.
[**getWeb3OrderFulfillment**](Web3API.md#getweb3orderfulfillment) | **GET** /v1/web3/orders/{chain}/{hash}/fulfillment | The signed order a taker passes to Seaport, after re-checking it can still fill.
[**getWeb3Phygital**](Web3API.md#getweb3phygital) | **GET** /v1/web3/phygitals/{chain}/{contract}/{tokenId} | A token&#39;s phygital: the physical item it can be redeemed for, and whether it has been.
[**getWeb3Phygital2**](Web3API.md#getweb3phygital2) | **GET** /v1/web3/phygitals | Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.
[**getWeb3Portfolio**](Web3API.md#getweb3portfolio) | **GET** /v1/web3/portfolio | Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.
[**getWeb3PortfolioTax**](Web3API.md#getweb3portfoliotax) | **GET** /v1/web3/portfolio/tax | One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).
[**getWeb3Profile**](Web3API.md#getweb3profile) | **GET** /v1/web3/profiles/{address} | A wallet&#39;s public profile: NFTs held, open Crossly listings, and activity.
[**getWeb3Resolve**](Web3API.md#getweb3resolve) | **GET** /v1/web3/resolve/{chain}/{slug} | A collection&#39;s chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).
[**getWeb3SolanaCollectionTensorBid**](Web3API.md#getweb3solanacollectiontensorbid) | **GET** /v1/web3/solana/collections/{collection}/tensor-bids | A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.
[**getWeb3Token**](Web3API.md#getweb3token) | **GET** /v1/web3/tokens/{chain}/{contract}/{tokenId} | One NFT: metadata, traits, owner, open listings and offers, activity.
[**listWeb3Activity**](Web3API.md#listweb3activity) | **GET** /v1/web3/activity | Listings, offers, sales and cancels in the Crossly book, newest first.
[**listWeb3Alerts**](Web3API.md#listweb3alerts) | **GET** /v1/web3/alerts | Your NFT price alerts, with the cheapest open Crossly listing each one covers now.
[**listWeb3Approvals**](Web3API.md#listweb3approvals) | **GET** /v1/web3/approvals | Your collections the OpenSea conduit is approved to move, per linked wallet.
[**listWeb3Auctions**](Web3API.md#listweb3auctions) | **GET** /v1/web3/auctions | Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.
[**listWeb3BrowseCollections**](Web3API.md#listweb3browsecollections) | **GET** /v1/web3/browse/collections | Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.
[**listWeb3BrowseTokens**](Web3API.md#listweb3browsetokens) | **GET** /v1/web3/browse/tokens | Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.
[**listWeb3Bundles**](Web3API.md#listweb3bundles) | **GET** /v1/web3/bundles | Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.
[**listWeb3CollectionHistory**](Web3API.md#listweb3collectionhistory) | **GET** /v1/web3/collections/{chain}/{contract}/history | Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).
[**listWeb3Collections**](Web3API.md#listweb3collections) | **GET** /v1/web3/collections | Collections ranked by 30-day Crossly volume, with floor and listed count.
[**listWeb3CreatorCollections**](Web3API.md#listweb3creatorcollections) | **GET** /v1/web3/creator/collections | Collections you are the creator of: your launches, and contracts you claimed by owning them.
[**listWeb3Drops**](Web3API.md#listweb3drops) | **GET** /v1/web3/drops | Upcoming and live NFT drops (curated mints on the creator&#39;s own page), soonest first, with whether you asked to be reminded.
[**listWeb3HolderPerks**](Web3API.md#listweb3holderperks) | **GET** /v1/web3/holder-perks | Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.
[**listWeb3Launches**](Web3API.md#listweb3launches) | **GET** /v1/web3/launches | Your launchpad collections (drafts and live), newest first, with minted count and phase.
[**listWeb3Listings**](Web3API.md#listweb3listings) | **GET** /v1/web3/listings | Open NFT listings in the Crossly book — the cheapest per token.
[**listWeb3MarketplaceKeys**](Web3API.md#listweb3marketplacekeys) | **GET** /v1/web3/marketplace-keys | Your own marketplace API keys (last four characters only) and whether Crossly&#39;s key covers each marketplace.
[**listWeb3Nfts**](Web3API.md#listweb3nfts) | **GET** /v1/web3/nfts | List the NFTs in your inventory, imported from your linked wallets.
[**listWeb3Orders**](Web3API.md#listweb3orders) | **GET** /v1/web3/orders | Your orders in the Crossly book (listings and offers), any status.
[**listWeb3Purchases**](Web3API.md#listweb3purchases) | **GET** /v1/web3/purchases | NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.
[**listWeb3Rankings**](Web3API.md#listweb3rankings) | **GET** /v1/web3/rankings | Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.
[**listWeb3Reserved**](Web3API.md#listweb3reserved) | **GET** /v1/web3/reserved | Private listings reserved for one of your linked wallets — only you can see or buy them.
[**listWeb3Sales**](Web3API.md#listweb3sales) | **GET** /v1/web3/sales | The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with &#x60;before&#x60;.
[**listWeb3Search**](Web3API.md#listweb3search) | **GET** /v1/web3/search | Find collections by contract address (every chain) or by name.
[**listWeb3SearchTokens**](Web3API.md#listweb3searchtokens) | **GET** /v1/web3/search/tokens | Find tokens by collection name and number: &#39;pudgy 42&#39;, &#39;Bored Ape #1234&#39;.
[**listWeb3Wallets**](Web3API.md#listweb3wallets) | **GET** /v1/web3/wallets | List your verified, linked wallets (EVM and Solana).
[**listWeb3Watchlist**](Web3API.md#listweb3watchlist) | **GET** /v1/web3/watchlist | Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.
[**updateWeb3HolderPerk**](Web3API.md#updateweb3holderperk) | **PUT** /v1/web3/holder-perks | Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.
[**updateWeb3LaunchAllowlist**](Web3API.md#updateweb3launchallowlist) | **PUT** /v1/web3/launches/{id}/allowlist | Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back &#x60;rootTx&#x60;, the setAllowlistRoot transaction for the owner wallet.
[**updateWeb3MarketplaceKey**](Web3API.md#updateweb3marketplacekey) | **PUT** /v1/web3/marketplace-keys/{marketplace} | Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.


# **createWeb3Alert**
```swift
    open class func createWeb3Alert(completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below `price` (the chain's native coin). Setting it again moves the price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set a price alert on a token, or on a whole collection without tokenId: you are notified when one is listed at or below `price` (the chain's native coin). Setting it again moves the price.
Web3API.createWeb3Alert() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Auction**
```swift
    open class func createWeb3Auction(completion: @escaping (_ data: CreateWeb3AuctionResponse?, _ error: Error?) -> Void)
```

Start an English auction on a token in your linked wallet: `reserve` is the opening bid in the chain's native coin, `hours` its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start an English auction on a token in your linked wallet: `reserve` is the opening bid in the chain's native coin, `hours` its length (1–720). Bids must rise 5%; a late bid extends the end by 10 minutes.
Web3API.createWeb3Auction() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3AuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3AuctionCancel**
```swift
    open class func createWeb3AuctionCancel(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Call off your auction while it has no bids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Call off your auction while it has no bids.
Web3API.createWeb3AuctionCancel(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **createWeb3CreatorClaim**
```swift
    open class func createWeb3CreatorClaim(completion: @escaping (_ data: CreateWeb3CreatorClaimResponse?, _ error: Error?) -> Void)
```

Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns `{ chain, contract }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Claim an EVM collection as its creator: its owner() must be one of your verified wallets. Returns `{ chain, contract }`.
Web3API.createWeb3CreatorClaim() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3CreatorClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Crosslist**
```swift
    open class func createWeb3Crosslist(completion: @escaping (_ data: CreateWeb3CrosslistResponse?, _ error: Error?) -> Void)
```

Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Submit signed Seaport listings for several marketplaces at once (crossly, opensea); results per marketplace.
Web3API.createWeb3Crosslist() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3CrosslistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3DropRemind**
```swift
    open class func createWeb3DropRemind(id: String, completion: @escaping (_ data: CreateWeb3DropRemindResponse?, _ error: Error?) -> Void)
```

Turn the 15-minute reminder for a drop on, or off if it already is. Returns `{ remindMe }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Turn the 15-minute reminder for a drop on, or off if it already is. Returns `{ remindMe }`.
Web3API.createWeb3DropRemind(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3DropRemindResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Favorite**
```swift
    open class func createWeb3Favorite(completion: @escaping (_ data: CreateWeb3FavoriteResponse?, _ error: Error?) -> Void)
```

Favourite an NFT, or unfavourite it if it already is. Returns `{ favorited }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Favourite an NFT, or unfavourite it if it already is. Returns `{ favorited }`.
Web3API.createWeb3Favorite() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3FavoriteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Launch**
```swift
    open class func createWeb3Launch(completion: @escaping (_ data: ListWeb3LaunchesItem?, _ error: Error?) -> Void)
```

Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Draft a launchpad collection: name, symbol, supply, mint price (wei of the chain’s native currency), schedule, optional holder phase and royalty. Crossly takes 5% of each mint inside the contract.
Web3API.createWeb3Launch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3LaunchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3LaunchAirdrop**
```swift
    open class func createWeb3LaunchAirdrop(id: String, completion: @escaping (_ data: CreateWeb3LaunchAirdropResponse?, _ error: Error?) -> Void)
```

Plan an airdrop (one free NFT each, up to 500) to `addresses` and/or the holders of `holdersOf`. Returns the transactions for the owner wallet; no payment moves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Plan an airdrop (one free NFT each, up to 500) to `addresses` and/or the holders of `holdersOf`. Returns the transactions for the owner wallet; no payment moves.
Web3API.createWeb3LaunchAirdrop(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3LaunchAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3LaunchArt**
```swift
    open class func createWeb3LaunchArt(id: String, completion: @escaping (_ data: CreateWeb3LaunchArtResponse?, _ error: Error?) -> Void)
```

Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns `{ count }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Append per-token art (image URL, name, traits), up to the supply, before the reveal. Returns `{ count }`.
Web3API.createWeb3LaunchArt(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3LaunchArtResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3LaunchConfirmDeploy**
```swift
    open class func createWeb3LaunchConfirmDeploy(id: String, completion: @escaping (_ data: ListWeb3LaunchesItem?, _ error: Error?) -> Void)
```

Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Confirm a sent deploy transaction: the contract must be the Crossly launch contract with this draft’s settings; it then goes live.
Web3API.createWeb3LaunchConfirmDeploy(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**ListWeb3LaunchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3LaunchFollowCreator**
```swift
    open class func createWeb3LaunchFollowCreator(id: String, completion: @escaping (_ data: CreateWeb3LaunchFollowCreatorResponse?, _ error: Error?) -> Void)
```

Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns `{ following }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Follow the creator of a launch: their launches are announced to you, and again when each opens. Returns `{ following }`.
Web3API.createWeb3LaunchFollowCreator(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3LaunchFollowCreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3LaunchReveal**
```swift
    open class func createWeb3LaunchReveal(id: String, completion: @escaping (_ data: CreateWeb3LaunchRevealResponse?, _ error: Error?) -> Void)
```

Reveal the art: one random offset maps every token to its asset for good. Returns `{ revealedAt }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Reveal the art: one random offset maps every token to its asset for good. Returns `{ revealedAt }`.
Web3API.createWeb3LaunchReveal(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3LaunchRevealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Order**
```swift
    open class func createWeb3Order(completion: @escaping (_ data: CreateWeb3OrderResponse?, _ error: Error?) -> Void)
```

Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Place a signed Seaport 1.6 order (listing, offer or collection offer) in the Crossly book.
Web3API.createWeb3Order() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3OrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3OrderCancel**
```swift
    open class func createWeb3OrderCancel(chain: String, hash: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Take one of your orders out of the Crossly book.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let hash = "hash_example" // String | 

// Take one of your orders out of the Crossly book.
Web3API.createWeb3OrderCancel(chain: chain, hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **hash** | **String** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3OrderFulfillmentBatch**
```swift
    open class func createWeb3OrderFulfillmentBatch(completion: @escaping (_ data: CreateWeb3OrderFulfillmentBatchResponse?, _ error: Error?) -> Void)
```

Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Fulfilments for sweeping several listings in one Seaport transaction; unfillable ones are skipped with a reason.
Web3API.createWeb3OrderFulfillmentBatch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3OrderFulfillmentBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Phygital**
```swift
    open class func createWeb3Phygital(completion: @escaping (_ data: CreateWeb3PhygitalResponse?, _ error: Error?) -> Void)
```

Make an NFT you hold redeemable for one of your physical inventory items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Make an NFT you hold redeemable for one of your physical inventory items.
Web3API.createWeb3Phygital() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3PhygitalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3PhygitalRedeem**
```swift
    open class func createWeb3PhygitalRedeem(id: String, completion: @escaping (_ data: CreateWeb3PhygitalRedeemResponse?, _ error: Error?) -> Void)
```

Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Redeem a phygital you hold (checked on-chain) for its physical item, with a shipping address. Once per phygital.
Web3API.createWeb3PhygitalRedeem(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3PhygitalRedeemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3PhygitalRedemptionShip**
```swift
    open class func createWeb3PhygitalRedemptionShip(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark a redemption shipped with its carrier and tracking number; the redeemer is notified.
Web3API.createWeb3PhygitalRedemptionShip(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **createWeb3RaribleDraft**
```swift
    open class func createWeb3RaribleDraft(completion: @escaping (_ data: CreateWeb3RaribleDraftResponse?, _ error: Error?) -> Void)
```

Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible's transfer proxy is approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Draft a Rarible V2 listing for an NFT in your linked wallet: the EIP-712 order to sign and whether Rarible's transfer proxy is approved.
Web3API.createWeb3RaribleDraft() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3RaribleDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3RaribleListing**
```swift
    open class func createWeb3RaribleListing(completion: @escaping (_ data: OrderHashResponse?, _ error: Error?) -> Void)
```

Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Submit a signed Rarible V2 listing: the signature is verified, then the order is posted to Rarible and recorded.
Web3API.createWeb3RaribleListing() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaListTx**
```swift
    open class func createWeb3SolanaListTx(marketplace: Marketplace_createWeb3SolanaListTx, completion: @escaping (_ data: CreateWeb3SolanaListTxResponse?, _ error: Error?) -> Void)
```

Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let marketplace = "marketplace_example" // String | 

// Build an unsigned listing transaction on the Crossly book, Tensor or Magic Eden for a Solana NFT in your linked wallet.
Web3API.createWeb3SolanaListTx(marketplace: marketplace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace** | **String** |  | 

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaListing**
```swift
    open class func createWeb3SolanaListing(marketplace: Marketplace_createWeb3SolanaListing, completion: @escaping (_ data: OrderHashResponse?, _ error: Error?) -> Void)
```

Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let marketplace = "marketplace_example" // String | 

// Record a Crossly-book, Tensor or Magic Eden listing your wallet sent (read back from the chain first).
Web3API.createWeb3SolanaListing(marketplace: marketplace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace** | **String** |  | 

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOffer**
```swift
    open class func createWeb3SolanaOffer(completion: @escaping (_ data: OrderHashResponse?, _ error: Error?) -> Void)
```

Record a sent bid; it is recorded only once its trade state exists on chain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Record a sent bid; it is recorded only once its trade state exists on chain.
Web3API.createWeb3SolanaOffer() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**OrderHashResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOfferAcceptTx**
```swift
    open class func createWeb3SolanaOfferAcceptTx(hash: String, completion: @escaping (_ data: CreateWeb3SolanaListTxResponse?, _ error: Error?) -> Void)
```

Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Build the sale into a bid from your linked wallet that holds the NFT (sell + execute_sale, one transaction).
Web3API.createWeb3SolanaOfferAcceptTx(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOfferCancelTx**
```swift
    open class func createWeb3SolanaOfferCancelTx(hash: String, completion: @escaping (_ data: CreateWeb3SolanaListTxResponse?, _ error: Error?) -> Void)
```

Build the cancel of your bid: the SOL your other bids do not need comes back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Build the cancel of your bid: the SOL your other bids do not need comes back.
Web3API.createWeb3SolanaOfferCancelTx(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOfferConfirm**
```swift
    open class func createWeb3SolanaOfferConfirm(hash: String, completion: @escaping (_ data: CreateWeb3SolanaOfferConfirmResponse?, _ error: Error?) -> Void)
```

Apply a sent accept or cancel once the chain shows the bid closed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Apply a sent accept or cancel once the chain shows the bid closed.
Web3API.createWeb3SolanaOfferConfirm(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaOfferConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOfferTx**
```swift
    open class func createWeb3SolanaOfferTx(completion: @escaping (_ data: CreateWeb3SolanaOfferTxResponse?, _ error: Error?) -> Void)
```

Build a bid on a Solana NFT on Crossly's book for your linked wallet to sign; the SOL goes into your Auction House escrow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Build a bid on a Solana NFT on Crossly's book for your linked wallet to sign; the SOL goes into your Auction House escrow.
Web3API.createWeb3SolanaOfferTx() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaOfferTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOrderBuyTx**
```swift
    open class func createWeb3SolanaOrderBuyTx(hash: String, completion: @escaping (_ data: CreateWeb3SolanaOrderBuyTxResponse?, _ error: Error?) -> Void)
```

Build the unsigned transaction that buys a Solana listing (price capped at the listed price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Build the unsigned transaction that buys a Solana listing (price capped at the listed price).
Web3API.createWeb3SolanaOrderBuyTx(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaOrderBuyTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOrderConfirm**
```swift
    open class func createWeb3SolanaOrderConfirm(hash: String, completion: @escaping (_ data: CreateWeb3SolanaOfferConfirmResponse?, _ error: Error?) -> Void)
```

Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Apply a sent Solana buy or delist to the book (the transaction is read back from the chain).
Web3API.createWeb3SolanaOrderConfirm(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaOfferConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaOrderDelistTx**
```swift
    open class func createWeb3SolanaOrderDelistTx(hash: String, completion: @escaping (_ data: CreateWeb3SolanaListTxResponse?, _ error: Error?) -> Void)
```

Build the unsigned transaction that takes your Solana listing down.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let hash = "hash_example" // String | 

// Build the unsigned transaction that takes your Solana listing down.
Web3API.createWeb3SolanaOrderDelistTx(hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String** |  | 

### Return type

**CreateWeb3SolanaListTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaTensorBidAcceptTx**
```swift
    open class func createWeb3SolanaTensorBidAcceptTx(completion: @escaping (_ data: CreateWeb3SolanaTensorBidPlaceTxResponse?, _ error: Error?) -> Void)
```

Build the transaction that sells your NFT into a Tensor bid, never below `minLamports`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Build the transaction that sells your NFT into a Tensor bid, never below `minLamports`.
Web3API.createWeb3SolanaTensorBidAcceptTx() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaTensorBidCancelTx**
```swift
    open class func createWeb3SolanaTensorBidCancelTx(completion: @escaping (_ data: CreateWeb3SolanaTensorBidPlaceTxResponse?, _ error: Error?) -> Void)
```

Build the transaction that cancels your Tensor bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Build the transaction that cancels your Tensor bid.
Web3API.createWeb3SolanaTensorBidCancelTx() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3SolanaTensorBidPlaceTx**
```swift
    open class func createWeb3SolanaTensorBidPlaceTx(completion: @escaping (_ data: CreateWeb3SolanaTensorBidPlaceTxResponse?, _ error: Error?) -> Void)
```

Build a Tensor collection bid (or trait bid with `trait`) for your Solana wallet to sign. Price in lamports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Build a Tensor collection bid (or trait bid with `trait`) for your Solana wallet to sign. Price in lamports.
Web3API.createWeb3SolanaTensorBidPlaceTx() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3SolanaTensorBidPlaceTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3TokenRefresh**
```swift
    open class func createWeb3TokenRefresh(chain: String, contract: String, tokenId: String, completion: @escaping (_ data: CreateWeb3TokenRefreshResponse?, _ error: Error?) -> Void)
```

Re-read a token's metadata from the chain's provider (name, traits, image — a new image is copied to Crossly's CDN). Once per token per 10 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 
let tokenId = "tokenId_example" // String | 

// Re-read a token's metadata from the chain's provider (name, traits, image — a new image is copied to Crossly's CDN). Once per token per 10 minutes.
Web3API.createWeb3TokenRefresh(chain: chain, contract: contract, tokenId: tokenId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **tokenId** | **String** |  | 

### Return type

**CreateWeb3TokenRefreshResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3Transaction**
```swift
    open class func createWeb3Transaction(completion: @escaping (_ data: CreateWeb3TransactionResponse?, _ error: Error?) -> Void)
```

Apply a Seaport transaction's fills and cancels to the Crossly book (read from the receipt).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Apply a Seaport transaction's fills and cancels to the Crossly book (read from the receipt).
Web3API.createWeb3Transaction() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3TransactionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3WalletChallenge**
```swift
    open class func createWeb3WalletChallenge(completion: @escaping (_ data: CreateWeb3WalletChallengeResponse?, _ error: Error?) -> Void)
```

Start linking a wallet: returns the message the wallet must sign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start linking a wallet: returns the message the wallet must sign.
Web3API.createWeb3WalletChallenge() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3WalletChallengeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3WalletSync**
```swift
    open class func createWeb3WalletSync(id: String, completion: @escaping (_ data: CreateWeb3WalletSyncResponse?, _ error: Error?) -> Void)
```

Import a linked wallet's NFTs into inventory; archives ones that have left the wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Import a linked wallet's NFTs into inventory; archives ones that have left the wallet.
Web3API.createWeb3WalletSync(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3WalletSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWeb3WalletVerify**
```swift
    open class func createWeb3WalletVerify(completion: @escaping (_ data: CreateWeb3WalletVerifyResponse?, _ error: Error?) -> Void)
```

Finish linking a wallet with its signature over the challenge message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Finish linking a wallet with its signature over the challenge message.
Web3API.createWeb3WalletVerify() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWeb3WalletVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWeb3Alert**
```swift
    open class func deleteWeb3Alert(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a price alert.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a price alert.
Web3API.deleteWeb3Alert(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **deleteWeb3HolderPerk**
```swift
    open class func deleteWeb3HolderPerk(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Remove a holder perk. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Remove a holder perk. Returns `{ ok }`.
Web3API.deleteWeb3HolderPerk(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **deleteWeb3Launch**
```swift
    open class func deleteWeb3Launch(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a launch draft that never went live. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a launch draft that never went live. Returns `{ ok }`.
Web3API.deleteWeb3Launch(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **deleteWeb3LaunchFollowCreator**
```swift
    open class func deleteWeb3LaunchFollowCreator(id: String, completion: @escaping (_ data: CreateWeb3LaunchFollowCreatorResponse?, _ error: Error?) -> Void)
```

Stop following the creator of a launch. Returns `{ following }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stop following the creator of a launch. Returns `{ following }`.
Web3API.deleteWeb3LaunchFollowCreator(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateWeb3LaunchFollowCreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWeb3MarketplaceKey**
```swift
    open class func deleteWeb3MarketplaceKey(marketplace: Marketplace_deleteWeb3MarketplaceKey, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove your own key for a marketplace; Crossly's key is used again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let marketplace = "marketplace_example" // String | 

// Remove your own key for a marketplace; Crossly's key is used again.
Web3API.deleteWeb3MarketplaceKey(marketplace: marketplace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWeb3Wallet**
```swift
    open class func deleteWeb3Wallet(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Unlink a wallet. Its NFTs stay in inventory but stop syncing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Unlink a wallet. Its NFTs stay in inventory but stop syncing.
Web3API.deleteWeb3Wallet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **getWeb3Auction**
```swift
    open class func getWeb3Auction(chain: String, contract: String, tokenId: String, completion: @escaping (_ data: GetWeb3AuctionResponse?, _ error: Error?) -> Void)
```

A token's live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 
let tokenId = "tokenId_example" // String | 

// A token's live (or latest) auction: reserve, end, top bid, bid count and the minimum next bid.
Web3API.getWeb3Auction(chain: chain, contract: contract, tokenId: tokenId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **tokenId** | **String** |  | 

### Return type

**GetWeb3AuctionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Browse**
```swift
    open class func getWeb3Browse(completion: @escaping (_ data: GetWeb3BrowseResponse?, _ error: Error?) -> Void)
```

The Web3 directory's categories and chains, with how many collections each holds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Web3 directory's categories and chains, with how many collections each holds.
Web3API.getWeb3Browse() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3BrowseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Collection**
```swift
    open class func getWeb3Collection(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionResponse?, _ error: Error?) -> Void)
```

A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// A collection: metadata and Crossly stats (floor, listed, volume, best collection offer).
Web3API.getWeb3Collection(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CollectionDepth**
```swift
    open class func getWeb3CollectionDepth(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionDepthResponse?, _ error: Error?) -> Void)
```

A collection's Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// A collection's Crossly order book by price level — asks cheapest first, bids dearest first, with running totals — and the floor of every trait value.
Web3API.getWeb3CollectionDepth(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionDepthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CollectionInsight**
```swift
    open class func getWeb3CollectionInsight(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionInsightResponse?, _ error: Error?) -> Void)
```

On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// On-chain insights for a collection: holders, trait counts across the whole collection, recent transfers and a 30-day activity series.
Web3API.getWeb3CollectionInsight(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionInsightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CollectionItem**
```swift
    open class func getWeb3CollectionItem(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionItemResponse?, _ error: Error?) -> Void)
```

A collection's NFTs: filter by traits (repeat trait=Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// A collection's NFTs: filter by traits (repeat trait=Type:Value; OR within a type, AND across), search by name or token id, sort by id, rarity or Crossly price. Whole-collection once indexed.
Web3API.getWeb3CollectionItem(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CollectionTrait**
```swift
    open class func getWeb3CollectionTrait(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionTraitResponse?, _ error: Error?) -> Void)
```

Every trait type and value in a collection, with how many tokens have each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// Every trait type and value in a collection, with how many tokens have each.
Web3API.getWeb3CollectionTrait(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionTraitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CollectionTraitToken**
```swift
    open class func getWeb3CollectionTraitToken(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CollectionTraitTokenResponse?, _ error: Error?) -> Void)
```

Token ids in a collection with one trait — what a trait offer commits to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// Token ids in a collection with one trait — what a trait offer commits to.
Web3API.getWeb3CollectionTraitToken(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CollectionTraitTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Collector**
```swift
    open class func getWeb3Collector(completion: @escaping (_ data: GetWeb3CollectorResponse?, _ error: Error?) -> Void)
```

Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your collector perks: how many different NFTs you bought through Crossly, your Collector pin tier, relist rewards paid, and each NFT you still hold with the Bought on Crossly mark.
Web3API.getWeb3Collector() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3CollectorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Creator**
```swift
    open class func getWeb3Creator(chain: String, contract: String, completion: @escaping (_ data: GetWeb3CreatorResponse?, _ error: Error?) -> Void)
```

A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// A collection’s creator dashboard: sales by marketplace and day, estimated royalties, holders, and for a launch the mint revenue and what is waiting to be withdrawn (wei of the chain’s native currency).
Web3API.getWeb3Creator(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWeb3CreatorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3CrosslistQuote**
```swift
    open class func getWeb3CrosslistQuote(completion: @escaping (_ data: GetWeb3CrosslistQuoteResponse?, _ error: Error?) -> Void)
```

Each marketplace's terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Each marketplace's terms for listing a token: Crossly fee, OpenSea required fees and zone, Tensor availability.
Web3API.getWeb3CrosslistQuote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3CrosslistQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Featured**
```swift
    open class func getWeb3Featured(completion: @escaping (_ data: GetWeb3FeaturedResponse?, _ error: Error?) -> Void)
```

The NFT home's featured collections: chosen by Crossly, else the hottest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The NFT home's featured collections: chosen by Crossly, else the hottest.
Web3API.getWeb3Featured() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3FeaturedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Inventory**
```swift
    open class func getWeb3Inventory(itemId: String, completion: @escaping (_ data: GetWeb3InventoryResponse?, _ error: Error?) -> Void)
```

The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let itemId = "itemId_example" // String | 

// The NFT behind an inventory item: its token, wallet, and open listings on every marketplace (null if it is not an NFT).
Web3API.getWeb3Inventory(itemId: itemId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** |  | 

### Return type

**GetWeb3InventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3LaunchAllowlistRootTx**
```swift
    open class func getWeb3LaunchAllowlistRootTx(id: String, completion: @escaping (_ data: GetWeb3LaunchAllowlistRootTxResponse?, _ error: Error?) -> Void)
```

The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): `{ chain, from, to, data }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The setAllowlistRoot transaction for the allowlist Crossly holds (EVM, live): `{ chain, from, to, data }`.
Web3API.getWeb3LaunchAllowlistRootTx(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**GetWeb3LaunchAllowlistRootTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3LaunchDeployTx**
```swift
    open class func getWeb3LaunchDeployTx(id: String, completion: @escaping (_ data: GetWeb3LaunchDeployTxResponse?, _ error: Error?) -> Void)
```

The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns `{ chain, from, data }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The contract-creation transaction for the draft: send it from the owner wallet, then confirm it. Returns `{ chain, from, data }`.
Web3API.getWeb3LaunchDeployTx(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**GetWeb3LaunchDeployTxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3LaunchTool**
```swift
    open class func getWeb3LaunchTool(id: String, completion: @escaping (_ data: GetWeb3LaunchToolResponse?, _ error: Error?) -> Void)
```

A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A launch’s creator tools: allowlist size and root (and whether the contract has it yet), uploaded art and reveal, supply minted.
Web3API.getWeb3LaunchTool(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**GetWeb3LaunchToolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3OrderFulfillment**
```swift
    open class func getWeb3OrderFulfillment(chain: String, hash: String, completion: @escaping (_ data: GetWeb3OrderFulfillmentResponse?, _ error: Error?) -> Void)
```

The signed order a taker passes to Seaport, after re-checking it can still fill.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let hash = "hash_example" // String | 

// The signed order a taker passes to Seaport, after re-checking it can still fill.
Web3API.getWeb3OrderFulfillment(chain: chain, hash: hash) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **hash** | **String** |  | 

### Return type

**GetWeb3OrderFulfillmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Phygital**
```swift
    open class func getWeb3Phygital(chain: String, contract: String, tokenId: String, completion: @escaping (_ data: GetWeb3PhygitalResponse?, _ error: Error?) -> Void)
```

A token's phygital: the physical item it can be redeemed for, and whether it has been.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 
let tokenId = "tokenId_example" // String | 

// A token's phygital: the physical item it can be redeemed for, and whether it has been.
Web3API.getWeb3Phygital(chain: chain, contract: contract, tokenId: tokenId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **tokenId** | **String** |  | 

### Return type

**GetWeb3PhygitalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Phygital2**
```swift
    open class func getWeb3Phygital2(completion: @escaping (_ data: GetWeb3Phygital2Response?, _ error: Error?) -> Void)
```

Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Phygitals you linked (with each redemption and its shipping address) and ones you redeemed.
Web3API.getWeb3Phygital2() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3Phygital2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Portfolio**
```swift
    open class func getWeb3Portfolio(completion: @escaping (_ data: GetWeb3PortfolioResponse?, _ error: Error?) -> Void)
```

Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your NFTs with value (Crossly floor, else recent sales) and cost (what a linked wallet paid), realised sales, and USD totals at each day’s coin price.
Web3API.getWeb3Portfolio() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3PortfolioResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3PortfolioTax**
```swift
    open class func getWeb3PortfolioTax(completion: @escaping (_ data: GetWeb3PortfolioTaxResponse?, _ error: Error?) -> Void)
```

One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// One calendar year of NFT disposals from your linked wallets as CSV text: acquired, sold, proceeds, cost basis, gain (coin and USD).
Web3API.getWeb3PortfolioTax() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWeb3PortfolioTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Profile**
```swift
    open class func getWeb3Profile(address: String, completion: @escaping (_ data: GetWeb3ProfileResponse?, _ error: Error?) -> Void)
```

A wallet's public profile: NFTs held, open Crossly listings, and activity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let address = "address_example" // String | 

// A wallet's public profile: NFTs held, open Crossly listings, and activity.
Web3API.getWeb3Profile(address: address) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** |  | 

### Return type

**GetWeb3ProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Resolve**
```swift
    open class func getWeb3Resolve(chain: String, slug: String, completion: @escaping (_ data: GetWeb3ResolveResponse?, _ error: Error?) -> Void)
```

A collection's chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let slug = "slug_example" // String | 

// A collection's chain and contract from its readable URL slug (e.g. eth / boredapeyachtclub).
Web3API.getWeb3Resolve(chain: chain, slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **slug** | **String** |  | 

### Return type

**GetWeb3ResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3SolanaCollectionTensorBid**
```swift
    open class func getWeb3SolanaCollectionTensorBid(collection: String, completion: @escaping (_ data: GetWeb3SolanaCollectionTensorBidResponse?, _ error: Error?) -> Void)
```

A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let collection = "collection_example" // String | 

// A Solana collection’s Tensor bids (collection-wide and by trait), best first; price in lamports. Needs your Tensor key.
Web3API.getWeb3SolanaCollectionTensorBid(collection: collection) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection** | **String** |  | 

### Return type

**GetWeb3SolanaCollectionTensorBidResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWeb3Token**
```swift
    open class func getWeb3Token(chain: String, contract: String, tokenId: String, completion: @escaping (_ data: GetWeb3TokenResponse?, _ error: Error?) -> Void)
```

One NFT: metadata, traits, owner, open listings and offers, activity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 
let tokenId = "tokenId_example" // String | 

// One NFT: metadata, traits, owner, open listings and offers, activity.
Web3API.getWeb3Token(chain: chain, contract: contract, tokenId: tokenId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **tokenId** | **String** |  | 

### Return type

**GetWeb3TokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Activity**
```swift
    open class func listWeb3Activity(completion: @escaping (_ data: ListWeb3ActivityResponse?, _ error: Error?) -> Void)
```

Listings, offers, sales and cancels in the Crossly book, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Listings, offers, sales and cancels in the Crossly book, newest first.
Web3API.listWeb3Activity() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3ActivityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Alerts**
```swift
    open class func listWeb3Alerts(completion: @escaping (_ data: ListWeb3AlertsResponse?, _ error: Error?) -> Void)
```

Your NFT price alerts, with the cheapest open Crossly listing each one covers now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your NFT price alerts, with the cheapest open Crossly listing each one covers now.
Web3API.listWeb3Alerts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3AlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Approvals**
```swift
    open class func listWeb3Approvals(completion: @escaping (_ data: ListWeb3ApprovalsResponse?, _ error: Error?) -> Void)
```

Your collections the OpenSea conduit is approved to move, per linked wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your collections the OpenSea conduit is approved to move, per linked wallet.
Web3API.listWeb3Approvals() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3ApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Auctions**
```swift
    open class func listWeb3Auctions(completion: @escaping (_ data: ListWeb3AuctionsResponse?, _ error: Error?) -> Void)
```

Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live English auctions on the Crossly book, ending soonest first, each with its top bid and the least the next bid can be.
Web3API.listWeb3Auctions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3AuctionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3BrowseCollections**
```swift
    open class func listWeb3BrowseCollections(completion: @escaping (_ data: ListWeb3BrowseCollectionsResponse?, _ error: Error?) -> Void)
```

Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Browse NFT collections by chain, category and name; sort hot (Crossly sales, listings, favourites), new, volume, floor or name.
Web3API.listWeb3BrowseCollections() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3BrowseCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3BrowseTokens**
```swift
    open class func listWeb3BrowseTokens(completion: @escaping (_ data: ListWeb3BrowseTokensResponse?, _ error: Error?) -> Void)
```

Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Hot NFTs: what is for sale on Crossly first, then tokens from the hottest collections.
Web3API.listWeb3BrowseTokens() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3BrowseTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Bundles**
```swift
    open class func listWeb3Bundles(completion: @escaping (_ data: ListWeb3BundlesResponse?, _ error: Error?) -> Void)
```

Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open bundle listings (2–30 NFTs for one price), newest first, by chain or by a contract any item is from.
Web3API.listWeb3Bundles() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3BundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3CollectionHistory**
```swift
    open class func listWeb3CollectionHistory(chain: String, contract: String, completion: @escaping (_ data: ListWeb3CollectionHistoryResponse?, _ error: Error?) -> Void)
```

Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String | 
let contract = "contract_example" // String | 

// Daily floor, sales, volume, holders and listed count for a collection, oldest first (up to 365 days).
Web3API.listWeb3CollectionHistory(chain: chain, contract: contract) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWeb3CollectionHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Collections**
```swift
    open class func listWeb3Collections(completion: @escaping (_ data: ListWeb3CollectionsResponse?, _ error: Error?) -> Void)
```

Collections ranked by 30-day Crossly volume, with floor and listed count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Collections ranked by 30-day Crossly volume, with floor and listed count.
Web3API.listWeb3Collections() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3CollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3CreatorCollections**
```swift
    open class func listWeb3CreatorCollections(completion: @escaping (_ data: ListWeb3CreatorCollectionsResponse?, _ error: Error?) -> Void)
```

Collections you are the creator of: your launches, and contracts you claimed by owning them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Collections you are the creator of: your launches, and contracts you claimed by owning them.
Web3API.listWeb3CreatorCollections() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3CreatorCollectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Drops**
```swift
    open class func listWeb3Drops(completion: @escaping (_ data: ListWeb3DropsResponse?, _ error: Error?) -> Void)
```

Upcoming and live NFT drops (curated mints on the creator's own page), soonest first, with whether you asked to be reminded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Upcoming and live NFT drops (curated mints on the creator's own page), soonest first, with whether you asked to be reminded.
Web3API.listWeb3Drops() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3DropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3HolderPerks**
```swift
    open class func listWeb3HolderPerks(completion: @escaping (_ data: ListWeb3HolderPerksResponse?, _ error: Error?) -> Void)
```

Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your holder perks: percent off your Crossly shop for holders of an NFT collection, best first.
Web3API.listWeb3HolderPerks() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3HolderPerksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Launches**
```swift
    open class func listWeb3Launches(completion: @escaping (_ data: ListWeb3LaunchesResponse?, _ error: Error?) -> Void)
```

Your launchpad collections (drafts and live), newest first, with minted count and phase.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your launchpad collections (drafts and live), newest first, with minted count and phase.
Web3API.listWeb3Launches() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3LaunchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Listings**
```swift
    open class func listWeb3Listings(completion: @escaping (_ data: ListWeb3ListingsResponse?, _ error: Error?) -> Void)
```

Open NFT listings in the Crossly book — the cheapest per token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open NFT listings in the Crossly book — the cheapest per token.
Web3API.listWeb3Listings() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3ListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3MarketplaceKeys**
```swift
    open class func listWeb3MarketplaceKeys(completion: @escaping (_ data: ListWeb3MarketplaceKeysResponse?, _ error: Error?) -> Void)
```

Your own marketplace API keys (last four characters only) and whether Crossly's key covers each marketplace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your own marketplace API keys (last four characters only) and whether Crossly's key covers each marketplace.
Web3API.listWeb3MarketplaceKeys() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3MarketplaceKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Nfts**
```swift
    open class func listWeb3Nfts(chain: Chain_listWeb3Nfts? = nil, walletId: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListWeb3NftsResponse?, _ error: Error?) -> Void)
```

List the NFTs in your inventory, imported from your linked wallets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chain = "chain_example" // String |  (optional)
let walletId = "walletId_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)

// List the NFTs in your inventory, imported from your linked wallets.
Web3API.listWeb3Nfts(chain: chain, walletId: walletId, page: page, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain** | **String** |  | [optional] 
 **walletId** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListWeb3NftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Orders**
```swift
    open class func listWeb3Orders(completion: @escaping (_ data: ListWeb3OrdersResponse?, _ error: Error?) -> Void)
```

Your orders in the Crossly book (listings and offers), any status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your orders in the Crossly book (listings and offers), any status.
Web3API.listWeb3Orders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3OrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Purchases**
```swift
    open class func listWeb3Purchases(completion: @escaping (_ data: ListWeb3PurchasesResponse?, _ error: Error?) -> Void)
```

NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// NFTs your linked wallets bought — on Crossly or any marketplace the chain feed saw — newest first, with price and whether you still hold each.
Web3API.listWeb3Purchases() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3PurchasesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Rankings**
```swift
    open class func listWeb3Rankings(completion: @escaping (_ data: ListWeb3RankingsResponse?, _ error: Error?) -> Void)
```

Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Collections by sales volume over 24h, 7d or 30d, in one coin: the ETH chains together, or Polygon / Solana on their own.
Web3API.listWeb3Rankings() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3RankingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Reserved**
```swift
    open class func listWeb3Reserved(completion: @escaping (_ data: ListWeb3BundlesResponse?, _ error: Error?) -> Void)
```

Private listings reserved for one of your linked wallets — only you can see or buy them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Private listings reserved for one of your linked wallets — only you can see or buy them.
Web3API.listWeb3Reserved() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3BundlesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Sales**
```swift
    open class func listWeb3Sales(completion: @escaping (_ data: ListWeb3SalesResponse?, _ error: Error?) -> Void)
```

The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with `before`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The latest NFT sales across the directory, from the chain (Seaport and Blur) and the Crossly book, newest first; page with `before`.
Web3API.listWeb3Sales() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3SalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Search**
```swift
    open class func listWeb3Search(completion: @escaping (_ data: ListWeb3SearchResponse?, _ error: Error?) -> Void)
```

Find collections by contract address (every chain) or by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Find collections by contract address (every chain) or by name.
Web3API.listWeb3Search() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3SearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3SearchTokens**
```swift
    open class func listWeb3SearchTokens(completion: @escaping (_ data: ListWeb3SearchTokensResponse?, _ error: Error?) -> Void)
```

Find tokens by collection name and number: 'pudgy 42', 'Bored Ape #1234'.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Find tokens by collection name and number: 'pudgy 42', 'Bored Ape #1234'.
Web3API.listWeb3SearchTokens() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3SearchTokensResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Wallets**
```swift
    open class func listWeb3Wallets(completion: @escaping (_ data: ListWeb3WalletsResponse?, _ error: Error?) -> Void)
```

List your verified, linked wallets (EVM and Solana).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your verified, linked wallets (EVM and Solana).
Web3API.listWeb3Wallets() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3WalletsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWeb3Watchlist**
```swift
    open class func listWeb3Watchlist(completion: @escaping (_ data: ListWeb3WatchlistResponse?, _ error: Error?) -> Void)
```

Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your favourited NFTs, with the cheapest open Crossly listing and the last sale of each.
Web3API.listWeb3Watchlist() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3WatchlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWeb3HolderPerk**
```swift
    open class func updateWeb3HolderPerk(completion: @escaping (_ data: ListWeb3HolderPerksItem?, _ error: Error?) -> Void)
```

Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the percent off (100–5000 bps) holders of a collection get across your Crossly shop; one perk per collection.
Web3API.updateWeb3HolderPerk() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWeb3HolderPerksItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWeb3LaunchAllowlist**
```swift
    open class func updateWeb3LaunchAllowlist(id: String, completion: @escaping (_ data: UpdateWeb3LaunchAllowlistResponse?, _ error: Error?) -> Void)
```

Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back `rootTx`, the setAllowlistRoot transaction for the owner wallet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Replace the early-phase allowlist (up to 10,000 wallets). EVM live launches get back `rootTx`, the setAllowlistRoot transaction for the owner wallet.
Web3API.updateWeb3LaunchAllowlist(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**UpdateWeb3LaunchAllowlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWeb3MarketplaceKey**
```swift
    open class func updateWeb3MarketplaceKey(marketplace: Marketplace_updateWeb3MarketplaceKey, completion: @escaping (_ data: ListWeb3MarketplaceKeysItem?, _ error: Error?) -> Void)
```

Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let marketplace = "marketplace_example" // String | 

// Save your own API key for a marketplace (checked against the marketplace first where it can be); stored encrypted.
Web3API.updateWeb3MarketplaceKey(marketplace: marketplace) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **marketplace** | **String** |  | 

### Return type

**ListWeb3MarketplaceKeysItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

