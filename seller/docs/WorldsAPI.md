# WorldsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperience**](WorldsAPI.md#createworldexperience) | **POST** /v1/worlds/experiences | Create an experience with a start place (no version yet). Counts against the plan&#39;s experience limit.
[**createWorldExperienceAccess**](WorldsAPI.md#createworldexperienceaccess) | **POST** /v1/worlds/experiences/{experienceId}/access | Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).
[**createWorldExperienceAlertAck**](WorldsAPI.md#createworldexperiencealertack) | **POST** /v1/worlds/experiences/{experienceId}/alerts/{alertId}/ack | Acknowledge an alert.
[**createWorldExperienceAnalyticQuery**](WorldsAPI.md#createworldexperienceanalyticquery) | **POST** /v1/worlds/experiences/{experienceId}/analytics/query | Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.
[**createWorldExperienceArchive**](WorldsAPI.md#createworldexperiencearchive) | **POST** /v1/worlds/experiences/{experienceId}/archive | Archive: closes it, drains its servers, frees its plan slot; data is kept.
[**createWorldExperienceBan**](WorldsAPI.md#createworldexperienceban) | **POST** /v1/worlds/experiences/{experienceId}/bans | Ban a player from your experience: { sub, duration (seconds, null &#x3D; permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.
[**createWorldExperienceClose**](WorldsAPI.md#createworldexperienceclose) | **POST** /v1/worlds/experiences/{experienceId}/close | Make the experience private again (owner-only joins).
[**createWorldExperienceConfigRollback**](WorldsAPI.md#createworldexperienceconfigrollback) | **POST** /v1/worlds/experiences/{experienceId}/configs/rollback | Instant rollback: an earlier version becomes the newest one.
[**createWorldExperienceEvent**](WorldsAPI.md#createworldexperienceevent) | **POST** /v1/worlds/experiences/{experienceId}/events | Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.
[**createWorldExperienceEventCancel**](WorldsAPI.md#createworldexperienceeventcancel) | **POST** /v1/worlds/experiences/{experienceId}/events/{eventId}/cancel | Cancel a scheduled event, or end a live one now.
[**createWorldExperienceExperiment**](WorldsAPI.md#createworldexperienceexperiment) | **POST** /v1/worlds/experiences/{experienceId}/experiments | Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout &#x3D; 100), targeting, a primary metric and guardrails, minimum 7 days.
[**createWorldExperienceExperimentShip**](WorldsAPI.md#createworldexperienceexperimentship) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/ship | Ship a variant: its values become the base config for everyone and the experiment ends.
[**createWorldExperienceExperimentStart**](WorldsAPI.md#createworldexperienceexperimentstart) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/start | Start: running servers begin assigning players by their per-experience id.
[**createWorldExperienceExperimentStop**](WorldsAPI.md#createworldexperienceexperimentstop) | **POST** /v1/worlds/experiences/{experienceId}/experiments/{experimentId}/stop | Stop: every player sees the base config again.
[**createWorldExperienceJoin**](WorldsAPI.md#createworldexperiencejoin) | **POST** /v1/worlds/experiences/{experienceId}/join | Join as the token&#39;s owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.
[**createWorldExperienceModerationAppeal**](WorldsAPI.md#createworldexperiencemoderationappeal) | **POST** /v1/worlds/experiences/{experienceId}/moderation/appeals | Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.
[**createWorldExperienceOpen**](WorldsAPI.md#createworldexperienceopen) | **POST** /v1/worlds/experiences/{experienceId}/open | Open the experience to players (needs a published start place).
[**createWorldExperiencePlace**](WorldsAPI.md#createworldexperienceplace) | **POST** /v1/worlds/experiences/{experienceId}/places | Add a place (at most 10 per experience in P1).
[**createWorldExperiencePlaceCheck**](WorldsAPI.md#createworldexperienceplacecheck) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/checks | Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.
[**createWorldExperiencePlacePublish**](WorldsAPI.md#createworldexperienceplacepublish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/publishes | Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.
[**createWorldExperiencePlaceStart**](WorldsAPI.md#createworldexperienceplacestart) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/start | Make this the start place (where a plain join lands).
[**createWorldExperiencePlaceTest**](WorldsAPI.md#createworldexperienceplacetest) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/test | Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.
[**createWorldExperiencePlaceVersion**](WorldsAPI.md#createworldexperienceplaceversion) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions | Upload a version bundle (crossly-worlds-project/1). Not live until published.
[**createWorldExperiencePlaceVersionPublish**](WorldsAPI.md#createworldexperienceplaceversionpublish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/publish | Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.
[**createWorldExperiencePlaceVersionRollback**](WorldsAPI.md#createworldexperienceplaceversionrollback) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/rollback | Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.
[**createWorldExperiencePlaytester**](WorldsAPI.md#createworldexperienceplaytester) | **POST** /v1/worlds/experiences/{experienceId}/playtesters | Add a playtester by Crossly handle (max 200 per game).
[**createWorldExperiencePublishCancel**](WorldsAPI.md#createworldexperiencepublishcancel) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/cancel | Give up a publish that is not live.
[**createWorldExperiencePublishHalt**](WorldsAPI.md#createworldexperiencepublishhalt) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/halt | Stop a rollout: new joins go back to the current version.
[**createWorldExperiencePublishRollout**](WorldsAPI.md#createworldexperiencepublishrollout) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/rollout | Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.
[**createWorldExperiencePublishSubmit**](WorldsAPI.md#createworldexperiencepublishsubmit) | **POST** /v1/worlds/experiences/{experienceId}/publishes/{requestId}/submit | Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.
[**createWorldExperienceReservedServer**](WorldsAPI.md#createworldexperiencereservedserver) | **POST** /v1/worlds/experiences/{experienceId}/reserved-servers | An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.
[**createWorldExperienceRestore**](WorldsAPI.md#createworldexperiencerestore) | **POST** /v1/worlds/experiences/{experienceId}/restore | Restore an archived game, or a deleted one within 30 days; it comes back private.
[**createWorldExperienceServerShutdown**](WorldsAPI.md#createworldexperienceservershutdown) | **POST** /v1/worlds/experiences/{experienceId}/servers/shutdown | Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).
[**createWorldExperienceTransferRequest**](WorldsAPI.md#createworldexperiencetransferrequest) | **POST** /v1/worlds/experiences/{experienceId}/transfer-requests | Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.
[**createWorldMatureVerify**](WorldsAPI.md#createworldmatureverify) | **POST** /v1/worlds/mature/verify | Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.
[**createWorldParentalAccept**](WorldsAPI.md#createworldparentalaccept) | **POST** /v1/worlds/parental/accept | Accept a child&#39;s invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.
[**createWorldParentalChildrenPin**](WorldsAPI.md#createworldparentalchildrenpin) | **POST** /v1/worlds/parental/children/{childId}/pin | Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.
[**createWorldParentalChildrenUnlink**](WorldsAPI.md#createworldparentalchildrenunlink) | **POST** /v1/worlds/parental/children/{childId}/unlink | Remove the parent link (and its limits) with your PIN: { pin }.
[**createWorldParentalInvite**](WorldsAPI.md#createworldparentalinvite) | **POST** /v1/worlds/parental/invite | An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.
[**createWorldRatingCompute**](WorldsAPI.md#createworldratingcompute) | **POST** /v1/worlds/rating/compute | Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.
[**createWorldReport**](WorldsAPI.md#createworldreport) | **POST** /v1/worlds/reports | Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.
[**createWorldTransferRequestAccept**](WorldsAPI.md#createworldtransferrequestaccept) | **POST** /v1/worlds/transfer-requests/{requestId}/accept | Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.
[**createWorldTransferRequestCancel**](WorldsAPI.md#createworldtransferrequestcancel) | **POST** /v1/worlds/transfer-requests/{requestId}/cancel | Cancel a transfer request you sent while it waits.
[**createWorldTransferRequestDecline**](WorldsAPI.md#createworldtransferrequestdecline) | **POST** /v1/worlds/transfer-requests/{requestId}/decline | Decline a transfer asked of you; nothing changes.
[**deleteWorldExperience**](WorldsAPI.md#deleteworldexperience) | **DELETE** /v1/worlds/experiences/{experienceId} | Delete a game (a tombstone, restorable for 30 days). Body { confirmName } &#x3D; the game&#39;s name.
[**deleteWorldExperienceBan**](WorldsAPI.md#deleteworldexperienceban) | **DELETE** /v1/worlds/experiences/{experienceId}/bans/{sub} | Lift your experience&#39;s ban on a player. Bans placed by Crossly safety are lifted only by appeal.
[**deleteWorldExperiencePlaytester**](WorldsAPI.md#deleteworldexperienceplaytester) | **DELETE** /v1/worlds/experiences/{experienceId}/playtesters/{userId} | Remove a playtester.
[**deleteWorldParentalInvite**](WorldsAPI.md#deleteworldparentalinvite) | **DELETE** /v1/worlds/parental/invite | Withdraw a pending parent invite.
[**getWorldChart**](WorldsAPI.md#getworldchart) | **GET** /v1/worlds/charts/{chart} | A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre&#x3D; cuts it to one genre. Organic only: nothing paid.
[**getWorldDiscoverExperience**](WorldsAPI.md#getworlddiscoverexperience) | **GET** /v1/worlds/discover/experiences/{key} | An experience&#39;s thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:&lt;id&gt;, classic:&lt;id&gt;, tcg:&lt;game&gt;, cards:&lt;game&gt;.
[**getWorldDiscoverRow**](WorldsAPI.md#getworlddiscoverrow) | **GET** /v1/worlds/discover/rows | The Play hub&#39;s rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New &amp; Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \&quot;Sponsored\&quot;, never in the first two rows or a row&#39;s first two places.
[**getWorldExperience**](WorldsAPI.md#getworldexperience) | **GET** /v1/worlds/experiences/{experienceId} | One of your experiences with its places, live CCU and server count.
[**getWorldExperienceAccessLimit**](WorldsAPI.md#getworldexperienceaccesslimit) | **GET** /v1/worlds/experiences/{experienceId}/access-limits | The game&#39;s crew-only and country limits, and the owner&#39;s crew.
[**getWorldExperienceAlertSetting**](WorldsAPI.md#getworldexperiencealertsetting) | **GET** /v1/worlds/experiences/{experienceId}/alerts/settings | Alert rules (threshold, on/off, inbox, webhook) and quiet hours.
[**getWorldExperienceAnalytic**](WorldsAPI.md#getworldexperienceanalytic) | **GET** /v1/worlds/experiences/{experienceId}/analytics/{report} | An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from&#x3D;&amp;to&#x3D; (YYYY-MM-DD), retention ?segment&#x3D;, funnels ?funnel&#x3D;, economy ?currency&#x3D;.
[**getWorldExperienceBan**](WorldsAPI.md#getworldexperienceban) | **GET** /v1/worlds/experiences/{experienceId}/bans/{sub} | The live ban on one player, or 404.
[**getWorldExperienceChatSetting**](WorldsAPI.md#getworldexperiencechatsetting) | **GET** /v1/worlds/experiences/{experienceId}/chat-settings | The game&#39;s text chat setting and filter level.
[**getWorldExperienceConfig**](WorldsAPI.md#getworldexperienceconfig) | **GET** /v1/worlds/experiences/{experienceId}/configs | The remote config document ({ values, rules }) and its version.
[**getWorldExperienceExperiment**](WorldsAPI.md#getworldexperienceexperiment) | **GET** /v1/worlds/experiences/{experienceId}/experiments/{experimentId} | Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.
[**getWorldExperienceMaturity**](WorldsAPI.md#getworldexperiencematurity) | **GET** /v1/worlds/experiences/{experienceId}/maturity | The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.
[**getWorldExperienceModeration**](WorldsAPI.md#getworldexperiencemoderation) | **GET** /v1/worlds/experiences/{experienceId}/moderation | Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.
[**getWorldExperienceModerationAppeal**](WorldsAPI.md#getworldexperiencemoderationappeal) | **GET** /v1/worlds/experiences/{experienceId}/moderation/appeals | What you can appeal on your game and every appeal of it: data.targets (Crossly&#39;s actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer&#39;s note).
[**getWorldExperiencePlaceDraft**](WorldsAPI.md#getworldexperienceplacedraft) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/draft | The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.
[**getWorldExperiencePublish**](WorldsAPI.md#getworldexperiencepublish) | **GET** /v1/worlds/experiences/{experienceId}/publishes/{requestId} | One publish with its review state and rollout.
[**getWorldExperienceShop**](WorldsAPI.md#getworldexperienceshop) | **GET** /v1/worlds/experiences/{experienceId}/shop | An open experience&#39;s way back to commerce: its creator&#39;s shop and how many live listings it has.
[**getWorldExperienceShowcase**](WorldsAPI.md#getworldexperienceshowcase) | **GET** /v1/worlds/experiences/{experienceId}/showcase | The listings the game&#39;s page showcases, and the owner&#39;s live Crossly listings that can be picked.
[**getWorldFriendPlaying**](WorldsAPI.md#getworldfriendplaying) | **GET** /v1/worlds/friends/playing | Your friends (mutual follows) and where each is playing right now, with the link that joins them.
[**getWorldGameByGame**](WorldsAPI.md#getworldgamebygame) | **GET** /v1/worlds/games/{game} | A game&#39;s page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.
[**getWorldGameMine**](WorldsAPI.md#getworldgamemine) | **GET** /v1/worlds/games/mine/{gameId} | A game&#39;s summary: status, timeline, the sub-pages you may open, health and next steps.
[**getWorldGameMineAssetsUsed**](WorldsAPI.md#getworldgamemineassetsused) | **GET** /v1/worlds/games/mine/{gameId}/assets-used | Everything a game&#39;s published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place&#39;s current version; a Classic game its latest reviewed package version.
[**getWorldGameServer**](WorldsAPI.md#getworldgameserver) | **GET** /v1/worlds/games/{game}/servers | A Crossly Carnival game&#39;s public servers that are up: players, max, whether a stranger still fits, your friends on each (friends&#39; servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.
[**getWorldLinkCardGame**](WorldsAPI.md#getworldlinkcardgame) | **GET** /v1/worlds/links/card-game/{game} | Where to play a card game: Crossly&#39;s own game, its Commons tables, and creator worlds that tag it.
[**getWorldLinkListing**](WorldsAPI.md#getworldlinklisting) | **GET** /v1/worlds/links/listing/{slug} | \&quot;Try it in Crossly Carnival\&quot;: open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.
[**getWorldLinkSeller**](WorldsAPI.md#getworldlinkseller) | **GET** /v1/worlds/links/seller/{username} | \&quot;Games by this seller\&quot;: the seller&#39;s open games, best first.
[**getWorldMature**](WorldsAPI.md#getworldmature) | **GET** /v1/worlds/mature | Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.
[**getWorldMePref**](WorldsAPI.md#getworldmepref) | **GET** /v1/worlds/me/prefs | Your Crossly Carnival choices (whether games may see your Crossly wallet address).
[**getWorldParentalChildren**](WorldsAPI.md#getworldparentalchildren) | **GET** /v1/worlds/parental/children/{childId} | One linked account with ?days&#x3D; (1-90) of playtime per experience.
[**getWorldParentalMe**](WorldsAPI.md#getworldparentalme) | **GET** /v1/worlds/parental/me | This account&#39;s parent link: none, pending (an invite is out) or active (the parent&#39;s name and the limits they set).
[**getWorldPlaza**](WorldsAPI.md#getworldplaza) | **GET** /v1/worlds/plaza | The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new &amp; rising row, the featured stage&#39;s editorial pick and four chart boards, with players now and friends inside.
[**getWorldPolicyMe**](WorldsAPI.md#getworldpolicyme) | **GET** /v1/worlds/policy/me | What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \&quot;no\&quot;.
[**getWorldRatingQuestionnaire**](WorldsAPI.md#getworldratingquestionnaire) | **GET** /v1/worlds/rating/questionnaire | The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.
[**getWorldSearch**](WorldsAPI.md#getworldsearch) | **GET** /v1/worlds/search | Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.
[**getWorldTransferRequest**](WorldsAPI.md#getworldtransferrequest) | **GET** /v1/worlds/transfer-requests/{requestId} | One ownership transfer request (only its two people can read it), with the actions you may take.
[**getWorldTransparency**](WorldsAPI.md#getworldtransparency) | **GET** /v1/worlds/transparency/{month} | One month&#39;s transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.
[**listWorldAppeals**](WorldsAPI.md#listworldappeals) | **GET** /v1/worlds/appeals | Your appeals and their decisions.
[**listWorldExperienceAlerts**](WorldsAPI.md#listworldexperiencealerts) | **GET** /v1/worlds/experiences/{experienceId}/alerts | Alerts that fired, newest first.
[**listWorldExperienceAudit**](WorldsAPI.md#listworldexperienceaudit) | **GET** /v1/worlds/experiences/{experienceId}/audit | The live-ops audit log: every config, experiment, event and alert change, who made it, when.
[**listWorldExperienceBans**](WorldsAPI.md#listworldexperiencebans) | **GET** /v1/worlds/experiences/{experienceId}/bans | Players banned from your experience (by pairwise sub), oldest first (cursor).
[**listWorldExperienceConfigVersions**](WorldsAPI.md#listworldexperienceconfigversions) | **GET** /v1/worlds/experiences/{experienceId}/configs/versions | Config history, newest first: who changed which keys, when.
[**listWorldExperienceEvents**](WorldsAPI.md#listworldexperienceevents) | **GET** /v1/worlds/experiences/{experienceId}/events | Scheduled and live events (?includeEnded&#x3D;true for history).
[**listWorldExperienceExperiments**](WorldsAPI.md#listworldexperienceexperiments) | **GET** /v1/worlds/experiences/{experienceId}/experiments | A/B experiments, newest first, with their live verdict.
[**listWorldExperienceModerationReports**](WorldsAPI.md#listworldexperiencemoderationreports) | **GET** /v1/worlds/experiences/{experienceId}/moderation/reports | Reports about your experience, newest first (cursor). Reporter identity, account ids and other players&#39; words are removed.
[**listWorldExperiencePlacePublishes**](WorldsAPI.md#listworldexperienceplacepublishes) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/publishes | Publishes of a place, newest first: state, checks, rating, access, review, rollout.
[**listWorldExperiencePlaceVersions**](WorldsAPI.md#listworldexperienceplaceversions) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions | Version history of a place, newest first; &#x60;current&#x60; marks the live one.
[**listWorldExperiencePlaces**](WorldsAPI.md#listworldexperienceplaces) | **GET** /v1/worlds/experiences/{experienceId}/places | The places of an experience, start place first.
[**listWorldExperiencePlaytesters**](WorldsAPI.md#listworldexperienceplaytesters) | **GET** /v1/worlds/experiences/{experienceId}/playtesters | People who may join while the game is private.
[**listWorldExperienceServers**](WorldsAPI.md#listworldexperienceservers) | **GET** /v1/worlds/experiences/{experienceId}/servers | Live servers: place, version, region, players, health.
[**listWorldExperiences**](WorldsAPI.md#listworldexperiences) | **GET** /v1/worlds/experiences | Your experiences, newest first; cursor-paged (?cursor&#x3D;&amp;limit&#x3D;).
[**listWorldFavorites**](WorldsAPI.md#listworldfavorites) | **GET** /v1/worlds/favorites | Your favourite experiences that are still open, newest first.
[**listWorldGameMine**](WorldsAPI.md#listworldgamemine) | **GET** /v1/worlds/games/mine | Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&amp;status&amp;engine&amp;genre&amp;template&amp;owner&amp;flag&amp;sort; sort&#x3D;revenue &#x3D; highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).
[**listWorldParentalChildren**](WorldsAPI.md#listworldparentalchildren) | **GET** /v1/worlds/parental/children | Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.
[**listWorldRecent**](WorldsAPI.md#listworldrecent) | **GET** /v1/worlds/recent | Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).
[**listWorldRegions**](WorldsAPI.md#listworldregions) | **GET** /v1/worlds/regions | Live server regions with a probe URL each: GET it a few times, send the round trips as &#x60;pings&#x60; with the join to land in the nearest region.
[**listWorldShopListings**](WorldsAPI.md#listworldshoplistings) | **GET** /v1/worlds/shop-listings | Your live Crossly listings a game can show and sell (shop objects bind to their id).
[**listWorldTransferRequests**](WorldsAPI.md#listworldtransferrequests) | **GET** /v1/worlds/transfer-requests | Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&amp;status&amp;experienceId).
[**listWorldTransparency**](WorldsAPI.md#listworldtransparency) | **GET** /v1/worlds/transparency | Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).
[**updateWorldExperience**](WorldsAPI.md#updateworldexperience) | **PATCH** /v1/worlds/experiences/{experienceId} | Edit name, description, genre, rating or icon.
[**updateWorldExperienceAccessLimit**](WorldsAPI.md#updateworldexperienceaccesslimit) | **PUT** /v1/worlds/experiences/{experienceId}/access-limits | Limit who can play: { crewOnly } (only members of the owner&#39;s crew), { countryMode: all|allow|block, countries: [&#39;US&#39;, ...] }. The owner and team are never limited.
[**updateWorldExperienceAlertSetting**](WorldsAPI.md#updateworldexperiencealertsetting) | **PUT** /v1/worlds/experiences/{experienceId}/alerts/settings | Change alert rules and quiet hours.
[**updateWorldExperienceChatSetting**](WorldsAPI.md#updateworldexperiencechatsetting) | **PUT** /v1/worlds/experiences/{experienceId}/chat-settings | Turn text chat off or use the strict filter for everyone (never looser than the platform).
[**updateWorldExperienceConfig**](WorldsAPI.md#updateworldexperienceconfig) | **PUT** /v1/worlds/experiences/{experienceId}/configs | Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).
[**updateWorldExperienceConfigValue**](WorldsAPI.md#updateworldexperienceconfigvalue) | **PATCH** /v1/worlds/experiences/{experienceId}/configs/values | Set and/or remove individual config keys.
[**updateWorldExperienceEvent**](WorldsAPI.md#updateworldexperienceevent) | **PATCH** /v1/worlds/experiences/{experienceId}/events/{eventId} | Reschedule or change a scheduled event; a live event may only move its end.
[**updateWorldExperienceExperiment**](WorldsAPI.md#updateworldexperienceexperiment) | **PATCH** /v1/worlds/experiences/{experienceId}/experiments/{experimentId} | Edit a draft (a running experiment may only rename or reword).
[**updateWorldExperienceMaturity**](WorldsAPI.md#updateworldexperiencematurity) | **PUT** /v1/worlds/experiences/{experienceId}/maturity | Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).
[**updateWorldExperiencePlace**](WorldsAPI.md#updateworldexperienceplace) | **PATCH** /v1/worlds/experiences/{experienceId}/places/{placeId} | Place settings: name, max players (1-50), fill target, social slots, empty shutdown.
[**updateWorldExperiencePlaceDraft**](WorldsAPI.md#updateworldexperienceplacedraft) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/draft | Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.
[**updateWorldExperiencePlaceVersionNote**](WorldsAPI.md#updateworldexperienceplaceversionnote) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/versions/{versionId}/notes | Edit a release version&#39;s changelog (the game page&#39;s What&#39;s new): { notes } up to 2000 characters.
[**updateWorldExperiencePublish**](WorldsAPI.md#updateworldexperiencepublish) | **PATCH** /v1/worlds/experiences/{experienceId}/publishes/{requestId} | Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.
[**updateWorldExperienceShowcase**](WorldsAPI.md#updateworldexperienceshowcase) | **PUT** /v1/worlds/experiences/{experienceId}/showcase | Set the showcased listings: { listingIds } (Crossly shop slugs of the owner&#39;s live listings, max 12, in order).
[**updateWorldFavorite**](WorldsAPI.md#updateworldfavorite) | **PUT** /v1/worlds/favorites | Favourite or un-favourite an experience (idempotent).
[**updateWorldMature**](WorldsAPI.md#updateworldmature) | **PUT** /v1/worlds/mature | Switch \&quot;Show Mature experiences\&quot; on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.
[**updateWorldMePref**](WorldsAPI.md#updateworldmepref) | **PUT** /v1/worlds/me/prefs | Set your Crossly Carnival choices.
[**updateWorldParentalChildren**](WorldsAPI.md#updateworldparentalchildren) | **PATCH** /v1/worlds/parental/children/{childId} | Change a linked account&#39;s limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 &#x3D; no purchases, null &#x3D; no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.
[**updateWorldVote**](WorldsAPI.md#updateworldvote) | **PUT** /v1/worlds/votes | Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.


# **createWorldExperience**
```swift
    open class func createWorldExperience(completion: @escaping (_ data: CreateWorldExperienceResponse?, _ error: Error?) -> Void)
```

Create an experience with a start place (no version yet). Counts against the plan's experience limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create an experience with a start place (no version yet). Counts against the plan's experience limit.
WorldsAPI.createWorldExperience() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceAccess**
```swift
    open class func createWorldExperienceAccess(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Who can play: private, friends, unlisted or public (public/unlisted need a reviewed publish).
WorldsAPI.createWorldExperienceAccess(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceAlertAck**
```swift
    open class func createWorldExperienceAlertAck(experienceId: String, alertId: String, completion: @escaping (_ data: CreateWorldExperienceAlertAckResponse?, _ error: Error?) -> Void)
```

Acknowledge an alert.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let alertId = "alertId_example" // String | 

// Acknowledge an alert.
WorldsAPI.createWorldExperienceAlertAck(experienceId: experienceId, alertId: alertId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **alertId** | **String** |  | 

### Return type

**CreateWorldExperienceAlertAckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceAnalyticQuery**
```swift
    open class func createWorldExperienceAnalyticQuery(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceAnalyticQueryResponse?, _ error: Error?) -> Void)
```

Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Query one custom event over ≤ 31 days: count, sum, avg or players, by day or hour, optionally grouped by a field. Groups under 50 players are suppressed.
WorldsAPI.createWorldExperienceAnalyticQuery(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperienceAnalyticQueryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceArchive**
```swift
    open class func createWorldExperienceArchive(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Archive: closes it, drains its servers, frees its plan slot; data is kept.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Archive: closes it, drains its servers, frees its plan slot; data is kept.
WorldsAPI.createWorldExperienceArchive(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceBan**
```swift
    open class func createWorldExperienceBan(experienceId: String, completion: @escaping (_ data: GetWorldExperienceBanResponse?, _ error: Error?) -> Void)
```

Ban a player from your experience: { sub, duration (seconds, null = permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Ban a player from your experience: { sub, duration (seconds, null = permanent), reason, displayReason?, applyToAlts? }. Enforced at join and on every running server.
WorldsAPI.createWorldExperienceBan(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceClose**
```swift
    open class func createWorldExperienceClose(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Make the experience private again (owner-only joins).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Make the experience private again (owner-only joins).
WorldsAPI.createWorldExperienceClose(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceConfigRollback**
```swift
    open class func createWorldExperienceConfigRollback(experienceId: String, completion: @escaping (_ data: WorldExperienceConfigResponse?, _ error: Error?) -> Void)
```

Instant rollback: an earlier version becomes the newest one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Instant rollback: an earlier version becomes the newest one.
WorldsAPI.createWorldExperienceConfigRollback(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceEvent**
```swift
    open class func createWorldExperienceEvent(experienceId: String, completion: @escaping (_ data: WorldExperienceEventResponse?, _ error: Error?) -> Void)
```

Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Schedule a live event: start and end, config values while live, an optional Messaging topic the platform publishes to at start and end.
WorldsAPI.createWorldExperienceEvent(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceEventCancel**
```swift
    open class func createWorldExperienceEventCancel(experienceId: String, eventId: String, completion: @escaping (_ data: WorldExperienceEventResponse?, _ error: Error?) -> Void)
```

Cancel a scheduled event, or end a live one now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let eventId = "eventId_example" // String | 

// Cancel a scheduled event, or end a live one now.
WorldsAPI.createWorldExperienceEventCancel(experienceId: experienceId, eventId: eventId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperiment**
```swift
    open class func createWorldExperienceExperiment(experienceId: String, completion: @escaping (_ data: WorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout = 100), targeting, a primary metric and guardrails, minimum 7 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Create a draft experiment: 2–5 variants of config values with traffic weights (+ holdout = 100), targeting, a primary metric and guardrails, minimum 7 days.
WorldsAPI.createWorldExperienceExperiment(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperimentShip**
```swift
    open class func createWorldExperienceExperimentShip(experienceId: String, experimentId: String, completion: @escaping (_ data: WorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Ship a variant: its values become the base config for everyone and the experiment ends.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let experimentId = "experimentId_example" // String | 

// Ship a variant: its values become the base config for everyone and the experiment ends.
WorldsAPI.createWorldExperienceExperimentShip(experienceId: experienceId, experimentId: experimentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **experimentId** | **String** |  | 

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperimentStart**
```swift
    open class func createWorldExperienceExperimentStart(experienceId: String, experimentId: String, completion: @escaping (_ data: WorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Start: running servers begin assigning players by their per-experience id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let experimentId = "experimentId_example" // String | 

// Start: running servers begin assigning players by their per-experience id.
WorldsAPI.createWorldExperienceExperimentStart(experienceId: experienceId, experimentId: experimentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **experimentId** | **String** |  | 

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperimentStop**
```swift
    open class func createWorldExperienceExperimentStop(experienceId: String, experimentId: String, completion: @escaping (_ data: WorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Stop: every player sees the base config again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let experimentId = "experimentId_example" // String | 

// Stop: every player sees the base config again.
WorldsAPI.createWorldExperienceExperimentStop(experienceId: experienceId, experimentId: experimentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **experimentId** | **String** |  | 

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceJoin**
```swift
    open class func createWorldExperienceJoin(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceJoinResponse?, _ error: Error?) -> Void)
```

Join as the token's owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Join as the token's owner: a server and a 60-second single-use ticket for wss …/v1/realtime/worlds/{serverId}. 202 while a new server boots.
WorldsAPI.createWorldExperienceJoin(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperienceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceModerationAppeal**
```swift
    open class func createWorldExperienceModerationAppeal(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceModerationAppealResponse?, _ error: Error?) -> Void)
```

Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Appeal a moderation decision on your game within 6 months (183 days): { kind: action | game | version | asset, targetId (from GET …/moderation/appeals targets), reason (20-4000 characters), evidence?: up to 5 https links }. The older shape { actionId, statement } still appeals an action. One open appeal per decision; a different reviewer answers and you are notified.
WorldsAPI.createWorldExperienceModerationAppeal(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperienceModerationAppealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceOpen**
```swift
    open class func createWorldExperienceOpen(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Open the experience to players (needs a published start place).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Open the experience to players (needs a published start place).
WorldsAPI.createWorldExperienceOpen(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlace**
```swift
    open class func createWorldExperiencePlace(experienceId: String, completion: @escaping (_ data: WorldExperiencePlaceResponse?, _ error: Error?) -> Void)
```

Add a place (at most 10 per experience in P1).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Add a place (at most 10 per experience in P1).
WorldsAPI.createWorldExperiencePlace(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceCheck**
```swift
    open class func createWorldExperiencePlaceCheck(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceCheckResponse?, _ error: Error?) -> Void)
```

Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Run the publish checks (script lint, budgets, shop-object listings) on a project. Writes nothing.
WorldsAPI.createWorldExperiencePlaceCheck(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlacePublish**
```swift
    open class func createWorldExperiencePlacePublish(experienceId: String, placeId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Step 1: run checks and freeze a version (the saved draft, or an uploaded versionId). Blocking problems answer 400 with the list.
WorldsAPI.createWorldExperiencePlacePublish(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStart**
```swift
    open class func createWorldExperiencePlaceStart(experienceId: String, placeId: String, completion: @escaping (_ data: WorldExperiencePlaceResponse?, _ error: Error?) -> Void)
```

Make this the start place (where a plain join lands).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Make this the start place (where a plain join lands).
WorldsAPI.createWorldExperiencePlaceStart(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceTest**
```swift
    open class func createWorldExperiencePlaceTest(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceTestResponse?, _ error: Error?) -> Void)
```

Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Cloud playtest: a private test version from the saved draft, joined on a fleet server (owner only, never live). 202 while it boots.
WorldsAPI.createWorldExperiencePlaceTest(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceVersion**
```swift
    open class func createWorldExperiencePlaceVersion(experienceId: String, placeId: String, completion: @escaping (_ data: WorldExperiencePlaceVersionResponse?, _ error: Error?) -> Void)
```

Upload a version bundle (crossly-worlds-project/1). Not live until published.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Upload a version bundle (crossly-worlds-project/1). Not live until published.
WorldsAPI.createWorldExperiencePlaceVersion(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceVersionPublish**
```swift
    open class func createWorldExperiencePlaceVersionPublish(experienceId: String, placeId: String, versionId: String, completion: @escaping (_ data: WorldExperiencePlaceVersionResponse?, _ error: Error?) -> Void)
```

Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let versionId = "versionId_example" // String | 

// Make a version current (publish or roll back). New joins land on it; older servers drain as they empty.
WorldsAPI.createWorldExperiencePlaceVersionPublish(experienceId: experienceId, placeId: placeId, versionId: versionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceVersionRollback**
```swift
    open class func createWorldExperiencePlaceVersionRollback(experienceId: String, placeId: String, versionId: String, completion: @escaping (_ data: WorldExperiencePlaceVersionResponse?, _ error: Error?) -> Void)
```

Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let versionId = "versionId_example" // String | 

// Make an earlier reviewed version current again. Unreviewed versions go through …/publishes.
WorldsAPI.createWorldExperiencePlaceVersionRollback(experienceId: experienceId, placeId: placeId, versionId: versionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

**WorldExperiencePlaceVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaytester**
```swift
    open class func createWorldExperiencePlaytester(experienceId: String, completion: @escaping (_ data: CreateWorldExperiencePlaytesterResponse?, _ error: Error?) -> Void)
```

Add a playtester by Crossly handle (max 200 per game).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Add a playtester by Crossly handle (max 200 per game).
WorldsAPI.createWorldExperiencePlaytester(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperiencePlaytesterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePublishCancel**
```swift
    open class func createWorldExperiencePublishCancel(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Give up a publish that is not live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// Give up a publish that is not live.
WorldsAPI.createWorldExperiencePublishCancel(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePublishHalt**
```swift
    open class func createWorldExperiencePublishHalt(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Stop a rollout: new joins go back to the current version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// Stop a rollout: new joins go back to the current version.
WorldsAPI.createWorldExperiencePublishHalt(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePublishRollout**
```swift
    open class func createWorldExperiencePublishRollout(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// Step 7: serve the approved version to percent (1–100) of new joins; 100 makes it current. Crash-heavy rollouts halt automatically.
WorldsAPI.createWorldExperiencePublishRollout(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePublishSubmit**
```swift
    open class func createWorldExperiencePublishSubmit(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// Step 6: moderation. First publishes and script changes go to a person (24 h SLA); layout-only and private publishes are approved automatically.
WorldsAPI.createWorldExperiencePublishSubmit(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceReservedServer**
```swift
    open class func createWorldExperienceReservedServer(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceReservedServerResponse?, _ error: Error?) -> Void)
```

An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// An access code for a reserved server of a place (teleports, matches, tournaments). The code is shown once.
WorldsAPI.createWorldExperienceReservedServer(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperienceReservedServerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceRestore**
```swift
    open class func createWorldExperienceRestore(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Restore an archived game, or a deleted one within 30 days; it comes back private.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Restore an archived game, or a deleted one within 30 days; it comes back private.
WorldsAPI.createWorldExperienceRestore(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceServerShutdown**
```swift
    open class func createWorldExperienceServerShutdown(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceServerShutdownResponse?, _ error: Error?) -> Void)
```

Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Shut down servers: mode soft (default) teleports players to fresh servers of the current version first; hard stops now. scope all | outdated (only servers not on a served version).
WorldsAPI.createWorldExperienceServerShutdown(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**CreateWorldExperienceServerShutdownResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceTransferRequest**
```swift
    open class func createWorldExperienceTransferRequest(experienceId: String, completion: @escaping (_ data: WorldResponse2?, _ error: Error?) -> Void)
```

Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Ask another Crossly account (handle or email) to take over a 3D game you own. One waiting request per game; it expires after 14 days.
WorldsAPI.createWorldExperienceTransferRequest(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMatureVerify**
```swift
    open class func createWorldMatureVerify(completion: @escaping (_ data: CreateWorldMatureVerifyResponse?, _ error: Error?) -> Void)
```

Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start the ID check Mature needs (Stripe Identity: photo ID + selfie; the date of birth is read off the ID). Returns a hosted URL and client secret, or alreadyVerified.
WorldsAPI.createWorldMatureVerify() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWorldMatureVerifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldParentalAccept**
```swift
    open class func createWorldParentalAccept(completion: @escaping (_ data: WorldParentalResponse?, _ error: Error?) -> Void)
```

Accept a child's invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Accept a child's invite as the parent: { code, pin }. The parent must be an ID-verified adult (18+ by the date of birth on the ID). The PIN protects every later change.
WorldsAPI.createWorldParentalAccept() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldParentalChildrenPin**
```swift
    open class func createWorldParentalChildrenPin(childId: String, completion: @escaping (_ data: CreateWorldParentalChildrenPinResponse?, _ error: Error?) -> Void)
```

Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let childId = "childId_example" // String | 

// Change the parent PIN: { pin, newPin } (4-8 digits). Five wrong PINs lock changes for 15 minutes.
WorldsAPI.createWorldParentalChildrenPin(childId: childId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childId** | **String** |  | 

### Return type

**CreateWorldParentalChildrenPinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldParentalChildrenUnlink**
```swift
    open class func createWorldParentalChildrenUnlink(childId: String, completion: @escaping (_ data: CreateWorldParentalChildrenUnlinkResponse?, _ error: Error?) -> Void)
```

Remove the parent link (and its limits) with your PIN: { pin }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let childId = "childId_example" // String | 

// Remove the parent link (and its limits) with your PIN: { pin }.
WorldsAPI.createWorldParentalChildrenUnlink(childId: childId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childId** | **String** |  | 

### Return type

**CreateWorldParentalChildrenUnlinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldParentalInvite**
```swift
    open class func createWorldParentalInvite(completion: @escaping (_ data: CreateWorldParentalInviteResponse?, _ error: Error?) -> Void)
```

An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// An under-18 account asks for a parent: a one-time code (72 hours) the parent enters while signed in to their own account. Replaces any pending code.
WorldsAPI.createWorldParentalInvite() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWorldParentalInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldRatingCompute**
```swift
    open class func createWorldRatingCompute(completion: @escaping (_ data: CreateWorldRatingComputeResponse?, _ error: Error?) -> Void)
```

Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rate a set of questionnaire answers exactly as publishing does: { answers } → rating (null when refused), reasons, content descriptors, interactive notices and refusals.
WorldsAPI.createWorldRatingCompute() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWorldRatingComputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldReport**
```swift
    open class func createWorldReport(completion: @escaping (_ data: CreateWorldReportResponse?, _ error: Error?) -> Void)
```

Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Report a player (targetSub), the experience, an object (targetInstanceId) or a chat line (chatLineId). Crossly attaches the server, place version and its own chat log; you send ids only.
WorldsAPI.createWorldReport() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateWorldReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldTransferRequestAccept**
```swift
    open class func createWorldTransferRequestAccept(requestId: String, completion: @escaping (_ data: WorldResponse2?, _ error: Error?) -> Void)
```

Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestId = "requestId_example" // String | 

// Accept a transfer asked of you: the game becomes yours now. Earnings already credited stay with the previous owner; new sales pay you.
WorldsAPI.createWorldTransferRequestAccept(requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String** |  | 

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldTransferRequestCancel**
```swift
    open class func createWorldTransferRequestCancel(requestId: String, completion: @escaping (_ data: WorldResponse2?, _ error: Error?) -> Void)
```

Cancel a transfer request you sent while it waits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestId = "requestId_example" // String | 

// Cancel a transfer request you sent while it waits.
WorldsAPI.createWorldTransferRequestCancel(requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String** |  | 

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldTransferRequestDecline**
```swift
    open class func createWorldTransferRequestDecline(requestId: String, completion: @escaping (_ data: WorldResponse2?, _ error: Error?) -> Void)
```

Decline a transfer asked of you; nothing changes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestId = "requestId_example" // String | 

// Decline a transfer asked of you; nothing changes.
WorldsAPI.createWorldTransferRequestDecline(requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String** |  | 

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperience**
```swift
    open class func deleteWorldExperience(experienceId: String, completion: @escaping (_ data: DeleteWorldExperienceResponse?, _ error: Error?) -> Void)
```

Delete a game (a tombstone, restorable for 30 days). Body { confirmName } = the game's name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Delete a game (a tombstone, restorable for 30 days). Body { confirmName } = the game's name.
WorldsAPI.deleteWorldExperience(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**DeleteWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceBan**
```swift
    open class func deleteWorldExperienceBan(experienceId: String, sub: String, completion: @escaping (_ data: DeleteWorldExperienceBanResponse?, _ error: Error?) -> Void)
```

Lift your experience's ban on a player. Bans placed by Crossly safety are lifted only by appeal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let sub = "sub_example" // String | 

// Lift your experience's ban on a player. Bans placed by Crossly safety are lifted only by appeal.
WorldsAPI.deleteWorldExperienceBan(experienceId: experienceId, sub: sub) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **sub** | **String** |  | 

### Return type

**DeleteWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperiencePlaytester**
```swift
    open class func deleteWorldExperiencePlaytester(experienceId: String, userId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove a playtester.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let userId = "userId_example" // String | 

// Remove a playtester.
WorldsAPI.deleteWorldExperiencePlaytester(experienceId: experienceId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **userId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldParentalInvite**
```swift
    open class func deleteWorldParentalInvite(completion: @escaping (_ data: DeleteDaoProposalResponse?, _ error: Error?) -> Void)
```

Withdraw a pending parent invite.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Withdraw a pending parent invite.
WorldsAPI.deleteWorldParentalInvite() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**DeleteDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldChart**
```swift
    open class func getWorldChart(chart: String, completion: @escaping (_ data: GetWorldChartResponse?, _ error: Error?) -> Void)
```

A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre= cuts it to one genre. Organic only: nothing paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let chart = "chart_example" // String | 

// A chart: top-playing (players now), trending (this week vs last, retention-weighted), top-rated (Wilson lower bound of thumbs up, 10+ votes), new-rising, friends, most-favorited; ?genre= cuts it to one genre. Organic only: nothing paid.
WorldsAPI.getWorldChart(chart: chart) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chart** | **String** |  | 

### Return type

**GetWorldChartResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldDiscoverExperience**
```swift
    open class func getWorldDiscoverExperience(key: String, completion: @escaping (_ data: WorldResponse3?, _ error: Error?) -> Void)
```

An experience's thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:<id>, classic:<id>, tcg:<game>, cards:<game>.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let key = "key_example" // String | 

// An experience's thumbs up/down, favourites, your vote and favourite, and whether you have played enough to vote (10 minutes). key: worlds:<id>, classic:<id>, tcg:<game>, cards:<game>.
WorldsAPI.getWorldDiscoverExperience(key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String** |  | 

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldDiscoverRow**
```swift
    open class func getWorldDiscoverRow(completion: @escaping (_ data: GetWorldDiscoverRowResponse?, _ error: Error?) -> Void)
```

The Play hub's rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New & Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \"Sponsored\", never in the first two rows or a row's first two places.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Play hub's rows for you: Continue playing, Friends are playing, Recommended for you, Featured (editorial, first-party capped), Top Playing, Trending, New & Rising, Top Rated, Made in Carnival Studio, Shop the world, card games, Classic games and genre rows. At most one tile is paid, always labelled \"Sponsored\", never in the first two rows or a row's first two places.
WorldsAPI.getWorldDiscoverRow() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldDiscoverRowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperience**
```swift
    open class func getWorldExperience(experienceId: String, completion: @escaping (_ data: GetWorldExperienceResponse?, _ error: Error?) -> Void)
```

One of your experiences with its places, live CCU and server count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// One of your experiences with its places, live CCU and server count.
WorldsAPI.getWorldExperience(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceAccessLimit**
```swift
    open class func getWorldExperienceAccessLimit(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAccessLimitResponse?, _ error: Error?) -> Void)
```

The game's crew-only and country limits, and the owner's crew.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The game's crew-only and country limits, and the owner's crew.
WorldsAPI.getWorldExperienceAccessLimit(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceAccessLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceAlertSetting**
```swift
    open class func getWorldExperienceAlertSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAlertSettingResponse?, _ error: Error?) -> Void)
```

Alert rules (threshold, on/off, inbox, webhook) and quiet hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Alert rules (threshold, on/off, inbox, webhook) and quiet hours.
WorldsAPI.getWorldExperienceAlertSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceAlertSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceAnalytic**
```swift
    open class func getWorldExperienceAnalytic(experienceId: String, report: String, completion: @escaping (_ data: GetWorldExperienceAnalyticResponse?, _ error: Error?) -> Void)
```

An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from=&to= (YYYY-MM-DD), retention ?segment=, funnels ?funnel=, economy ?currency=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let report = "report_example" // String | 

// An analytics report: overview, engagement, retention, monetization, funnels, economy, performance, custom or costs (fleet CPU-minutes, egress, estimated cost). ?from=&to= (YYYY-MM-DD), retention ?segment=, funnels ?funnel=, economy ?currency=.
WorldsAPI.getWorldExperienceAnalytic(experienceId: experienceId, report: report) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **report** | **String** |  | 

### Return type

**GetWorldExperienceAnalyticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceBan**
```swift
    open class func getWorldExperienceBan(experienceId: String, sub: String, completion: @escaping (_ data: GetWorldExperienceBanResponse?, _ error: Error?) -> Void)
```

The live ban on one player, or 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let sub = "sub_example" // String | 

// The live ban on one player, or 404.
WorldsAPI.getWorldExperienceBan(experienceId: experienceId, sub: sub) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **sub** | **String** |  | 

### Return type

**GetWorldExperienceBanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceChatSetting**
```swift
    open class func getWorldExperienceChatSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceChatSettingResponse?, _ error: Error?) -> Void)
```

The game's text chat setting and filter level.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The game's text chat setting and filter level.
WorldsAPI.getWorldExperienceChatSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceChatSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceConfig**
```swift
    open class func getWorldExperienceConfig(experienceId: String, completion: @escaping (_ data: WorldExperienceConfigResponse?, _ error: Error?) -> Void)
```

The remote config document ({ values, rules }) and its version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The remote config document ({ values, rules }) and its version.
WorldsAPI.getWorldExperienceConfig(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceExperiment**
```swift
    open class func getWorldExperienceExperiment(experienceId: String, experimentId: String, completion: @escaping (_ data: GetWorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let experimentId = "experimentId_example" // String | 

// Results per variant: n, mean, lift, fixed and always-valid 95% intervals, the verdict and a sample-size estimate.
WorldsAPI.getWorldExperienceExperiment(experienceId: experienceId, experimentId: experimentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **experimentId** | **String** |  | 

### Return type

**GetWorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMaturity**
```swift
    open class func getWorldExperienceMaturity(experienceId: String, completion: @escaping (_ data: GetWorldExperienceMaturityResponse?, _ error: Error?) -> Void)
```

The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The content maturity questionnaire: questions, answers, the published rating and any rating waiting for the next publish.
WorldsAPI.getWorldExperienceMaturity(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceMaturityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceModeration**
```swift
    open class func getWorldExperienceModeration(experienceId: String, completion: @escaping (_ data: GetWorldExperienceModerationResponse?, _ error: Error?) -> Void)
```

Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Moderation status of your experience: holds (unlisted / taken down), the latest review, the automated scan, strikes, trusted-lane status, open reports and live bans.
WorldsAPI.getWorldExperienceModeration(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceModerationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceModerationAppeal**
```swift
    open class func getWorldExperienceModerationAppeal(experienceId: String, completion: @escaping (_ data: GetWorldExperienceModerationAppealResponse?, _ error: Error?) -> Void)
```

What you can appeal on your game and every appeal of it: data.targets (Crossly's actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer's note).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// What you can appeal on your game and every appeal of it: data.targets (Crossly's actions, a moderation hold, rejected versions, blocked assets; each with appealableUntil and its latest appeal) and data.appeals (newest first: kind, status open | upheld | overturned, reason, evidence, the reviewer's note).
WorldsAPI.getWorldExperienceModerationAppeal(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceModerationAppealResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceDraft**
```swift
    open class func getWorldExperiencePlaceDraft(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceDraftResponse?, _ error: Error?) -> Void)
```

The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// The Studio draft of a place ({ world, place }, revision). Falls back to the current version, or an empty place.
WorldsAPI.getWorldExperiencePlaceDraft(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePublish**
```swift
    open class func getWorldExperiencePublish(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

One publish with its review state and rollout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// One publish with its review state and rollout.
WorldsAPI.getWorldExperiencePublish(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceShop**
```swift
    open class func getWorldExperienceShop(experienceId: String, completion: @escaping (_ data: GetWorldExperienceShopResponse?, _ error: Error?) -> Void)
```

An open experience's way back to commerce: its creator's shop and how many live listings it has.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// An open experience's way back to commerce: its creator's shop and how many live listings it has.
WorldsAPI.getWorldExperienceShop(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceShopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceShowcase**
```swift
    open class func getWorldExperienceShowcase(experienceId: String, completion: @escaping (_ data: GetWorldExperienceShowcaseResponse?, _ error: Error?) -> Void)
```

The listings the game's page showcases, and the owner's live Crossly listings that can be picked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The listings the game's page showcases, and the owner's live Crossly listings that can be picked.
WorldsAPI.getWorldExperienceShowcase(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceShowcaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldFriendPlaying**
```swift
    open class func getWorldFriendPlaying(completion: @escaping (_ data: GetWorldFriendPlayingResponse?, _ error: Error?) -> Void)
```

Your friends (mutual follows) and where each is playing right now, with the link that joins them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your friends (mutual follows) and where each is playing right now, with the link that joins them.
WorldsAPI.getWorldFriendPlaying() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldFriendPlayingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameByGame**
```swift
    open class func getWorldGameByGame(game: String, completion: @escaping (_ data: GetWorldGameByGameResponse?, _ error: Error?) -> Void)
```

A game's page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// A game's page, as the /games launcher shows it: the tile (players now, thumbs-up %, friends inside), description, tags, creator (Crossly for its own), rating with its content descriptors, visits, created and updated, release notes, gallery, what it sells (bought through Crossly checkout) and the Crossly World app link. :game is a Worlds experience id or any experience key.
WorldsAPI.getWorldGameByGame(game: game) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game** | **String** |  | 

### Return type

**GetWorldGameByGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameMine**
```swift
    open class func getWorldGameMine(gameId: String, completion: @escaping (_ data: GetWorldGameMineResponse?, _ error: Error?) -> Void)
```

A game's summary: status, timeline, the sub-pages you may open, health and next steps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let gameId = "gameId_example" // String | 

// A game's summary: status, timeline, the sub-pages you may open, health and next steps.
WorldsAPI.getWorldGameMine(gameId: gameId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **String** |  | 

### Return type

**GetWorldGameMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameMineAssetsUsed**
```swift
    open class func getWorldGameMineAssetsUsed(gameId: String, completion: @escaping (_ data: GetWorldGameMineAssetsUsedResponse?, _ error: Error?) -> Void)
```

Everything a game's published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place's current version; a Classic game its latest reviewed package version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let gameId = "gameId_example" // String | 

// Everything a game's published build ships (Assets used): models, sounds, images, scripts, Toolbox assets and other files, each with the places that ship it. A 3D world reads each place's current version; a Classic game its latest reviewed package version.
WorldsAPI.getWorldGameMineAssetsUsed(gameId: gameId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **String** |  | 

### Return type

**GetWorldGameMineAssetsUsedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameServer**
```swift
    open class func getWorldGameServer(game: String, completion: @escaping (_ data: GetWorldGameServerResponse?, _ error: Error?) -> Void)
```

A Crossly Carnival game's public servers that are up: players, max, whether a stranger still fits, your friends on each (friends' servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// A Crossly Carnival game's public servers that are up: players, max, whether a stranger still fits, your friends on each (friends' servers first, then the fullest with room); and the private servers you pay for. Join one with POST /v1/worlds/experiences/:id/join { serverId }.
WorldsAPI.getWorldGameServer(game: game) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game** | **String** |  | 

### Return type

**GetWorldGameServerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldLinkCardGame**
```swift
    open class func getWorldLinkCardGame(game: String, completion: @escaping (_ data: WorldLinkResponse?, _ error: Error?) -> Void)
```

Where to play a card game: Crossly's own game, its Commons tables, and creator worlds that tag it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Where to play a card game: Crossly's own game, its Commons tables, and creator worlds that tag it.
WorldsAPI.getWorldLinkCardGame(game: game) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game** | **String** |  | 

### Return type

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldLinkListing**
```swift
    open class func getWorldLinkListing(slug: String, completion: @escaping (_ data: WorldLinkResponse?, _ error: Error?) -> Void)
```

\"Try it in Crossly Carnival\": open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// \"Try it in Crossly Carnival\": open games whose live version shows this Crossly listing (its shop slug), then other games by the same seller. Links only: a sale is attributed to a game only through in-world touches its server reports.
WorldsAPI.getWorldLinkListing(slug: slug) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldLinkSeller**
```swift
    open class func getWorldLinkSeller(username: String, completion: @escaping (_ data: WorldLinkResponse?, _ error: Error?) -> Void)
```

\"Games by this seller\": the seller's open games, best first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let username = "username_example" // String | 

// \"Games by this seller\": the seller's open games, best first.
WorldsAPI.getWorldLinkSeller(username: username) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldMature**
```swift
    open class func getWorldMature(completion: @escaping (_ data: GetWorldMatureResponse?, _ error: Error?) -> Void)
```

Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Mature (17+) for this account: eligible or not, the steps still to take in order (birth month, ID check, opt-in; region, parental controls and safety holds are final), and the ID age check status.
WorldsAPI.getWorldMature() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldMatureResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldMePref**
```swift
    open class func getWorldMePref(completion: @escaping (_ data: GetWorldMePrefResponse?, _ error: Error?) -> Void)
```

Your Crossly Carnival choices (whether games may see your Crossly wallet address).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly Carnival choices (whether games may see your Crossly wallet address).
WorldsAPI.getWorldMePref() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldMePrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldParentalChildren**
```swift
    open class func getWorldParentalChildren(childId: String, completion: @escaping (_ data: WorldParentalResponse?, _ error: Error?) -> Void)
```

One linked account with ?days= (1-90) of playtime per experience.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let childId = "childId_example" // String | 

// One linked account with ?days= (1-90) of playtime per experience.
WorldsAPI.getWorldParentalChildren(childId: childId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childId** | **String** |  | 

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldParentalMe**
```swift
    open class func getWorldParentalMe(completion: @escaping (_ data: GetWorldParentalMeResponse?, _ error: Error?) -> Void)
```

This account's parent link: none, pending (an invite is out) or active (the parent's name and the limits they set).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// This account's parent link: none, pending (an invite is out) or active (the parent's name and the limits they set).
WorldsAPI.getWorldParentalMe() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldParentalMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlaza**
```swift
    open class func getWorldPlaza(completion: @escaping (_ data: GetWorldPlazaResponse?, _ error: Error?) -> Void)
```

The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new & rising row, the featured stage's editorial pick and four chart boards, with players now and friends inside.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Carnival Plaza district: the twelve-portal ring (a sponsored portal can only take the last slot, labelled), the new & rising row, the featured stage's editorial pick and four chart boards, with players now and friends inside.
WorldsAPI.getWorldPlaza() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldPlazaResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPolicyMe**
```swift
    open class func getWorldPolicyMe(completion: @escaping (_ data: GetWorldPolicyMeResponse?, _ error: Error?) -> Void)
```

What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \"no\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What this account may do in experiences, by age and region: chat level, purchases, paid random items, trading, links, ads, contests, rating ceiling — with the reason for each \"no\".
WorldsAPI.getWorldPolicyMe() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldPolicyMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldRatingQuestionnaire**
```swift
    open class func getWorldRatingQuestionnaire(completion: @escaping (_ data: GetWorldRatingQuestionnaireResponse?, _ error: Error?) -> Void)
```

The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The content-rating questionnaire (IARC-aligned): every question and choice, the three ratings (Everyone, Teen 13+, Mature 17+), what is never allowed, and the regions where Mature is restricted.
WorldsAPI.getWorldRatingQuestionnaire() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldRatingQuestionnaireResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldSearch**
```swift
    open class func getWorldSearch(completion: @escaping (_ data: GetWorldSearchResponse?, _ error: Error?) -> Void)
```

Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search experiences by title, creator, tags and genre (typo-tolerant, synonyms such as obby / obstacle). Filters: genre, rating (everyone keeps to Everyone), device, players (one server holds at least N), minThumbs (percent), live, friends. No results suggests a chart.
WorldsAPI.getWorldSearch() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldTransferRequest**
```swift
    open class func getWorldTransferRequest(requestId: String, completion: @escaping (_ data: WorldResponse2?, _ error: Error?) -> Void)
```

One ownership transfer request (only its two people can read it), with the actions you may take.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestId = "requestId_example" // String | 

// One ownership transfer request (only its two people can read it), with the actions you may take.
WorldsAPI.getWorldTransferRequest(requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String** |  | 

### Return type

**WorldResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldTransparency**
```swift
    open class func getWorldTransparency(month: String, completion: @escaping (_ data: GetWorldTransparencyResponse?, _ error: Error?) -> Void)
```

One month's transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 

// One month's transparency report (YYYY-MM): reports by reason and source, decisions and median time to decide, actions by kind and issuer, appeals and overturn rate, publish reviews, second reviews of creator bans.
WorldsAPI.getWorldTransparency(month: month) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldTransparencyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldAppeals**
```swift
    open class func listWorldAppeals(completion: @escaping (_ data: ListWorldAppealsResponse?, _ error: Error?) -> Void)
```

Your appeals and their decisions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your appeals and their decisions.
WorldsAPI.listWorldAppeals() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldAppealsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceAlerts**
```swift
    open class func listWorldExperienceAlerts(experienceId: String, completion: @escaping (_ data: ListWorldExperienceAlertsResponse?, _ error: Error?) -> Void)
```

Alerts that fired, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Alerts that fired, newest first.
WorldsAPI.listWorldExperienceAlerts(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceAlertsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceAudit**
```swift
    open class func listWorldExperienceAudit(experienceId: String, completion: @escaping (_ data: ListWorldExperienceAuditResponse?, _ error: Error?) -> Void)
```

The live-ops audit log: every config, experiment, event and alert change, who made it, when.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The live-ops audit log: every config, experiment, event and alert change, who made it, when.
WorldsAPI.listWorldExperienceAudit(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceAuditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceBans**
```swift
    open class func listWorldExperienceBans(experienceId: String, completion: @escaping (_ data: ListWorldExperienceBansResponse?, _ error: Error?) -> Void)
```

Players banned from your experience (by pairwise sub), oldest first (cursor).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Players banned from your experience (by pairwise sub), oldest first (cursor).
WorldsAPI.listWorldExperienceBans(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceBansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceConfigVersions**
```swift
    open class func listWorldExperienceConfigVersions(experienceId: String, completion: @escaping (_ data: ListWorldExperienceConfigVersionsResponse?, _ error: Error?) -> Void)
```

Config history, newest first: who changed which keys, when.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Config history, newest first: who changed which keys, when.
WorldsAPI.listWorldExperienceConfigVersions(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceConfigVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceEvents**
```swift
    open class func listWorldExperienceEvents(experienceId: String, completion: @escaping (_ data: ListWorldExperienceEventsResponse?, _ error: Error?) -> Void)
```

Scheduled and live events (?includeEnded=true for history).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Scheduled and live events (?includeEnded=true for history).
WorldsAPI.listWorldExperienceEvents(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceExperiments**
```swift
    open class func listWorldExperienceExperiments(experienceId: String, completion: @escaping (_ data: ListWorldExperienceExperimentsResponse?, _ error: Error?) -> Void)
```

A/B experiments, newest first, with their live verdict.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// A/B experiments, newest first, with their live verdict.
WorldsAPI.listWorldExperienceExperiments(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceExperimentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceModerationReports**
```swift
    open class func listWorldExperienceModerationReports(experienceId: String, completion: @escaping (_ data: ListWorldExperienceModerationReportsResponse?, _ error: Error?) -> Void)
```

Reports about your experience, newest first (cursor). Reporter identity, account ids and other players' words are removed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Reports about your experience, newest first (cursor). Reporter identity, account ids and other players' words are removed.
WorldsAPI.listWorldExperienceModerationReports(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceModerationReportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlacePublishes**
```swift
    open class func listWorldExperiencePlacePublishes(experienceId: String, placeId: String, completion: @escaping (_ data: ListWorldExperiencePlacePublishesResponse?, _ error: Error?) -> Void)
```

Publishes of a place, newest first: state, checks, rating, access, review, rollout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Publishes of a place, newest first: state, checks, rating, access, review, rollout.
WorldsAPI.listWorldExperiencePlacePublishes(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**ListWorldExperiencePlacePublishesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlaceVersions**
```swift
    open class func listWorldExperiencePlaceVersions(experienceId: String, placeId: String, completion: @escaping (_ data: ListWorldExperiencePlaceVersionsResponse?, _ error: Error?) -> Void)
```

Version history of a place, newest first; `current` marks the live one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Version history of a place, newest first; `current` marks the live one.
WorldsAPI.listWorldExperiencePlaceVersions(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**ListWorldExperiencePlaceVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlaces**
```swift
    open class func listWorldExperiencePlaces(experienceId: String, completion: @escaping (_ data: ListWorldExperiencePlacesResponse?, _ error: Error?) -> Void)
```

The places of an experience, start place first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The places of an experience, start place first.
WorldsAPI.listWorldExperiencePlaces(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperiencePlacesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlaytesters**
```swift
    open class func listWorldExperiencePlaytesters(experienceId: String, completion: @escaping (_ data: ListWorldExperiencePlaytestersResponse?, _ error: Error?) -> Void)
```

People who may join while the game is private.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// People who may join while the game is private.
WorldsAPI.listWorldExperiencePlaytesters(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperiencePlaytestersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceServers**
```swift
    open class func listWorldExperienceServers(experienceId: String, completion: @escaping (_ data: ListWorldExperienceServersResponse?, _ error: Error?) -> Void)
```

Live servers: place, version, region, players, health.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Live servers: place, version, region, players, health.
WorldsAPI.listWorldExperienceServers(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**ListWorldExperienceServersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiences**
```swift
    open class func listWorldExperiences(completion: @escaping (_ data: ListWorldExperiencesResponse?, _ error: Error?) -> Void)
```

Your experiences, newest first; cursor-paged (?cursor=&limit=).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your experiences, newest first; cursor-paged (?cursor=&limit=).
WorldsAPI.listWorldExperiences() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldExperiencesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldFavorites**
```swift
    open class func listWorldFavorites(completion: @escaping (_ data: ListWorldRecentResponse?, _ error: Error?) -> Void)
```

Your favourite experiences that are still open, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your favourite experiences that are still open, newest first.
WorldsAPI.listWorldFavorites() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldGameMine**
```swift
    open class func listWorldGameMine(completion: @escaping (_ data: ListWorldGameMineResponse?, _ error: Error?) -> Void)
```

Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&status&engine&genre&template&owner&flag&sort; sort=revenue = highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every game you own or collaborate on, 3D worlds and Classic, filtered (?q&status&engine&genre&template&owner&flag&sort; sort=revenue = highest earning first). Each row carries revenueCents: your creator-ledger earnings from it in USD cents (null for Classic).
WorldsAPI.listWorldGameMine() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldGameMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldParentalChildren**
```swift
    open class func listWorldParentalChildren(completion: @escaping (_ data: ListWorldParentalChildrenResponse?, _ error: Error?) -> Void)
```

Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Accounts you are the linked parent of: limits (max rating, chat, monthly spend), spend this month, and the last 7 days of playtime per experience.
WorldsAPI.listWorldParentalChildren() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldParentalChildrenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldRecent**
```swift
    open class func listWorldRecent(completion: @escaping (_ data: ListWorldRecentResponse?, _ error: Error?) -> Void)
```

Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Continue playing: what you played in the last 90 days that is still open, newest first (from what the servers recorded).
WorldsAPI.listWorldRecent() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldRegions**
```swift
    open class func listWorldRegions(completion: @escaping (_ data: ListWorldRegionsResponse?, _ error: Error?) -> Void)
```

Live server regions with a probe URL each: GET it a few times, send the round trips as `pings` with the join to land in the nearest region.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live server regions with a probe URL each: GET it a few times, send the round trips as `pings` with the join to land in the nearest region.
WorldsAPI.listWorldRegions() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldRegionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldShopListings**
```swift
    open class func listWorldShopListings(completion: @escaping (_ data: ListWorldShopListingsResponse?, _ error: Error?) -> Void)
```

Your live Crossly listings a game can show and sell (shop objects bind to their id).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your live Crossly listings a game can show and sell (shop objects bind to their id).
WorldsAPI.listWorldShopListings() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldShopListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldTransferRequests**
```swift
    open class func listWorldTransferRequests(completion: @escaping (_ data: ListWorldTransferRequestsResponse?, _ error: Error?) -> Void)
```

Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&status&experienceId).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ownership transfer requests you were asked (incoming) or sent (outgoing), newest first (?direction&status&experienceId).
WorldsAPI.listWorldTransferRequests() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldTransferRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldTransparency**
```swift
    open class func listWorldTransparency(completion: @escaping (_ data: ListWorldTransparencyResponse?, _ error: Error?) -> Void)
```

Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Published monthly transparency reports, newest first: reports received and actions taken, by type (counts only).
WorldsAPI.listWorldTransparency() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorldTransparencyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperience**
```swift
    open class func updateWorldExperience(experienceId: String, completion: @escaping (_ data: WorldExperienceResponse?, _ error: Error?) -> Void)
```

Edit name, description, genre, rating or icon.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Edit name, description, genre, rating or icon.
WorldsAPI.updateWorldExperience(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceAccessLimit**
```swift
    open class func updateWorldExperienceAccessLimit(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAccessLimitResponse?, _ error: Error?) -> Void)
```

Limit who can play: { crewOnly } (only members of the owner's crew), { countryMode: all|allow|block, countries: ['US', ...] }. The owner and team are never limited.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Limit who can play: { crewOnly } (only members of the owner's crew), { countryMode: all|allow|block, countries: ['US', ...] }. The owner and team are never limited.
WorldsAPI.updateWorldExperienceAccessLimit(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceAccessLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceAlertSetting**
```swift
    open class func updateWorldExperienceAlertSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAlertSettingResponse?, _ error: Error?) -> Void)
```

Change alert rules and quiet hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Change alert rules and quiet hours.
WorldsAPI.updateWorldExperienceAlertSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceAlertSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceChatSetting**
```swift
    open class func updateWorldExperienceChatSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceChatSettingResponse?, _ error: Error?) -> Void)
```

Turn text chat off or use the strict filter for everyone (never looser than the platform).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Turn text chat off or use the strict filter for everyone (never looser than the platform).
WorldsAPI.updateWorldExperienceChatSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**GetWorldExperienceChatSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceConfig**
```swift
    open class func updateWorldExperienceConfig(experienceId: String, completion: @escaping (_ data: WorldExperienceConfigResponse?, _ error: Error?) -> Void)
```

Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Save the whole config document. Running servers get it within seconds (ConfigService.Changed). baseVersion guards against overwriting a newer save (409).
WorldsAPI.updateWorldExperienceConfig(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceConfigValue**
```swift
    open class func updateWorldExperienceConfigValue(experienceId: String, completion: @escaping (_ data: WorldExperienceConfigResponse?, _ error: Error?) -> Void)
```

Set and/or remove individual config keys.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Set and/or remove individual config keys.
WorldsAPI.updateWorldExperienceConfigValue(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceEvent**
```swift
    open class func updateWorldExperienceEvent(experienceId: String, eventId: String, completion: @escaping (_ data: WorldExperienceEventResponse?, _ error: Error?) -> Void)
```

Reschedule or change a scheduled event; a live event may only move its end.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let eventId = "eventId_example" // String | 

// Reschedule or change a scheduled event; a live event may only move its end.
WorldsAPI.updateWorldExperienceEvent(experienceId: experienceId, eventId: eventId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**WorldExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceExperiment**
```swift
    open class func updateWorldExperienceExperiment(experienceId: String, experimentId: String, completion: @escaping (_ data: WorldExperienceExperimentResponse?, _ error: Error?) -> Void)
```

Edit a draft (a running experiment may only rename or reword).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let experimentId = "experimentId_example" // String | 

// Edit a draft (a running experiment may only rename or reword).
WorldsAPI.updateWorldExperienceExperiment(experienceId: experienceId, experimentId: experimentId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **experimentId** | **String** |  | 

### Return type

**WorldExperienceExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceMaturity**
```swift
    open class func updateWorldExperienceMaturity(experienceId: String, completion: @escaping (_ data: UpdateWorldExperienceMaturityResponse?, _ error: Error?) -> Void)
```

Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Answer the questionnaire: { answers }. A stricter rating applies now; a looser or first Mature rating waits for the next reviewed publish (takesEffect).
WorldsAPI.updateWorldExperienceMaturity(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldExperienceMaturityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlace**
```swift
    open class func updateWorldExperiencePlace(experienceId: String, placeId: String, completion: @escaping (_ data: WorldExperiencePlaceResponse?, _ error: Error?) -> Void)
```

Place settings: name, max players (1-50), fill target, social slots, empty shutdown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Place settings: name, max players (1-50), fill target, social slots, empty shutdown.
WorldsAPI.updateWorldExperiencePlace(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**WorldExperiencePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlaceDraft**
```swift
    open class func updateWorldExperiencePlaceDraft(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceDraftResponse?, _ error: Error?) -> Void)
```

Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Save the draft. baseRevision is the revision you loaded (0 for none); a newer save elsewhere answers 409 draft_conflict.
WorldsAPI.updateWorldExperiencePlaceDraft(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlaceVersionNote**
```swift
    open class func updateWorldExperiencePlaceVersionNote(experienceId: String, placeId: String, versionId: String, completion: @escaping (_ data: UpdateWorldExperiencePlaceVersionNoteResponse?, _ error: Error?) -> Void)
```

Edit a release version's changelog (the game page's What's new): { notes } up to 2000 characters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let versionId = "versionId_example" // String | 

// Edit a release version's changelog (the game page's What's new): { notes } up to 2000 characters.
WorldsAPI.updateWorldExperiencePlaceVersionNote(experienceId: experienceId, placeId: placeId, versionId: versionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **placeId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

**UpdateWorldExperiencePlaceVersionNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePublish**
```swift
    open class func updateWorldExperiencePublish(experienceId: String, requestId: String, completion: @escaping (_ data: WorldExperienceResponse2?, _ error: Error?) -> Void)
```

Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let requestId = "requestId_example" // String | 

// Steps 2–5: details, rating questionnaire answers, access (private | friends | unlisted | public), money review acknowledgement.
WorldsAPI.updateWorldExperiencePublish(experienceId: experienceId, requestId: requestId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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
 **requestId** | **String** |  | 

### Return type

**WorldExperienceResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceShowcase**
```swift
    open class func updateWorldExperienceShowcase(experienceId: String, completion: @escaping (_ data: UpdateWorldExperienceShowcaseResponse?, _ error: Error?) -> Void)
```

Set the showcased listings: { listingIds } (Crossly shop slugs of the owner's live listings, max 12, in order).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Set the showcased listings: { listingIds } (Crossly shop slugs of the owner's live listings, max 12, in order).
WorldsAPI.updateWorldExperienceShowcase(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
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

**UpdateWorldExperienceShowcaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldFavorite**
```swift
    open class func updateWorldFavorite(completion: @escaping (_ data: WorldResponse3?, _ error: Error?) -> Void)
```

Favourite or un-favourite an experience (idempotent).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Favourite or un-favourite an experience (idempotent).
WorldsAPI.updateWorldFavorite() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldMature**
```swift
    open class func updateWorldMature(completion: @escaping (_ data: GetWorldMatureResponse?, _ error: Error?) -> Void)
```

Switch \"Show Mature experiences\" on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Switch \"Show Mature experiences\" on or off: { showMature }. On is refused while a final step blocks (too young, region, parental controls, safety hold); it never skips the ID check.
WorldsAPI.updateWorldMature() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldMatureResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldMePref**
```swift
    open class func updateWorldMePref(completion: @escaping (_ data: GetWorldMePrefResponse?, _ error: Error?) -> Void)
```

Set your Crossly Carnival choices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set your Crossly Carnival choices.
WorldsAPI.updateWorldMePref() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorldMePrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldParentalChildren**
```swift
    open class func updateWorldParentalChildren(childId: String, completion: @escaping (_ data: WorldParentalResponse?, _ error: Error?) -> Void)
```

Change a linked account's limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 = no purchases, null = no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let childId = "childId_example" // String | 

// Change a linked account's limits with your PIN: { pin, settings: { maxRating: everyone|teen, chat: on|friends|off, monthlySpendLimitCents (0 = no purchases, null = no limit) } }. Enforced server-side at join, chat, the purchase prompt and checkout.
WorldsAPI.updateWorldParentalChildren(childId: childId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **childId** | **String** |  | 

### Return type

**WorldParentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldVote**
```swift
    open class func updateWorldVote(completion: @escaping (_ data: WorldResponse3?, _ error: Error?) -> Void)
```

Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Thumbs up, down, or null to withdraw: one vote per player per experience, counted only after 10 minutes of play (403 vote_needs_playtime before). A light ranking signal.
WorldsAPI.updateWorldVote() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**WorldResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

