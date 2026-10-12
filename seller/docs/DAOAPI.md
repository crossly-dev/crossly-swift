# DAOAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDaoProposal**](DAOAPI.md#createdaoproposal) | **POST** /v1/dao/proposals | Raise a proposal. Starts as a draft.
[**createDaoProposalFinalise**](DAOAPI.md#createdaoproposalfinalise) | **POST** /v1/dao/proposals/{id}/finalise | Close a proposal whose window has passed and record the outcome.
[**createDaoProposalOpen**](DAOAPI.md#createdaoproposalopen) | **POST** /v1/dao/proposals/{id}/open | Put your draft to a vote. Snapshots voting power.
[**createDaoProposalVeto**](DAOAPI.md#createdaoproposalveto) | **POST** /v1/dao/proposals/{id}/veto | Operator block. There is no matching power to PASS.
[**createDaoProposalVote**](DAOAPI.md#createdaoproposalvote) | **POST** /v1/dao/proposals/{id}/vote | Cast or change a vote while the window is open.
[**deleteDaoProposal**](DAOAPI.md#deletedaoproposal) | **DELETE** /v1/dao/proposals/{id} | Withdraw your own DRAFT.
[**getDaoProposalTally**](DAOAPI.md#getdaoproposaltally) | **GET** /v1/dao/proposals/{id}/tally | The live count.
[**listDaoProposals**](DAOAPI.md#listdaoproposals) | **GET** /v1/dao/proposals | The proposal queue.


# **createDaoProposal**
```swift
    open class func createDaoProposal(completion: @escaping (_ data: CreateDaoProposalResponse?, _ error: Error?) -> Void)
```

Raise a proposal. Starts as a draft.

Requires staked CBX above `minProposeWeight`, and one in-flight proposal at a time. The limits bound a denial of ATTENTION rather than of service — attention is the resource a DAO actually runs on. `beneficiaryKind` is a CLOSED set and there is deliberately no stakers, holders, airdrop or distribution option. A proposal whose beneficiaries are the voters would be a self-payment, and a distribution decided by its own recipients is a dividend whatever it is called. The DAO decides WHAT to fund, never WHO gets paid. A `policy` proposal requests no funds and must omit the amount; every other kind must supply one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Raise a proposal. Starts as a draft.
DAOAPI.createDaoProposal() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**CreateDaoProposalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDaoProposalFinalise**
```swift
    open class func createDaoProposalFinalise(id: String, completion: @escaping (_ data: CreateDaoProposalFinaliseResponse?, _ error: Error?) -> Void)
```

Close a proposal whose window has passed and record the outcome.

Normally unnecessary — the hourly sweep does it. Exposed so a result can be published immediately after a window closes rather than waiting for a tick. FINALISING RECORDS AN OUTCOME AND NOTHING ELSE. A passed proposal sets a status; disbursing still requires a campaign with a preview and a human approval, and there is no endpoint here that can move value.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close a proposal whose window has passed and record the outcome.
DAOAPI.createDaoProposalFinalise(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateDaoProposalFinaliseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDaoProposalOpen**
```swift
    open class func createDaoProposalOpen(id: String, completion: @escaping (_ data: CreateDaoProposalOpenResponse?, _ error: Error?) -> Void)
```

Put your draft to a vote. Snapshots voting power.

ONLY THE PROPOSER may open their own draft. Opening puts something to a binding vote in somebody's name, and authorship and that decision both belong to them. Opening writes a per-subject voting-power snapshot and freezes the quorum denominator. Nothing recomputes either afterwards, which is what stops acquire-vote-sell. Refuses when nobody holds enough staked CBX to vote — opening then would guarantee a failed quorum, waste a week and read as the feature being broken.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Put your draft to a vote. Snapshots voting power.
DAOAPI.createDaoProposalOpen(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateDaoProposalOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDaoProposalVeto**
```swift
    open class func createDaoProposalVeto(id: String, completion: @escaping (_ data: CreateDaoProposalVetoResponse?, _ error: Error?) -> Void)
```

Operator block. There is no matching power to PASS.

DELIBERATELY ASYMMETRIC. A veto exists for the illegal and the ruinous — funding something unlawful, or emptying the pool in a week. A power to pass would make every vote advisory theatre, because the outcome would always be whatever the operator preferred. An operator who can only say no cannot manufacture an outcome. The reason is MANDATORY and stored: an unexplained veto is indistinguishable from disliking the result, which is exactly what would destroy confidence in the mechanism. Expect it to be read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Operator block. There is no matching power to PASS.
DAOAPI.createDaoProposalVeto(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateDaoProposalVetoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDaoProposalVote**
```swift
    open class func createDaoProposalVote(id: String, completion: @escaping (_ data: CreateDaoProposalVoteResponse?, _ error: Error?) -> Void)
```

Cast or change a vote while the window is open.

Weight comes from the snapshot taken when the proposal opened, so staking afterwards grants no vote on it. Changing your mind is an UPDATE, not a second vote — a unique index makes double-counting impossible even if this logic were wrong. ABSTAIN counts toward turnout and not toward approval, which is the whole reason to offer it: it lets you help a proposal clear quorum without taking a side.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cast or change a vote while the window is open.
DAOAPI.createDaoProposalVote(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**CreateDaoProposalVoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteDaoProposal**
```swift
    open class func deleteDaoProposal(id: String, completion: @escaping (_ data: DeleteDaoProposalResponse?, _ error: Error?) -> Void)
```

Withdraw your own DRAFT.

Drafts only. Withdrawing an OPEN proposal would discard votes already cast, which is the proposer overruling the electorate — the thing the whole mechanism exists to prevent. An open proposal runs its window and gets a result. This exists so the one-in-flight limit is not a trap: without it a typo would lock somebody out of governance until the draft expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Withdraw your own DRAFT.
DAOAPI.deleteDaoProposal(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
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

# **getDaoProposalTally**
```swift
    open class func getDaoProposalTally(id: String, completion: @escaping (_ data: GetDaoProposalTallyResponse?, _ error: Error?) -> Void)
```

The live count.

`turnoutBps` is cast power over the frozen total, and counts abstentions. `approvalBps` is FOR over decisive votes, and does not. A proposal that misses quorum reports `expired` rather than `rejected` when finalised — \"nobody turned up\" and \"the room said no\" are different outcomes and a proposer deserves to know which happened.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The live count.
DAOAPI.getDaoProposalTally(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

**GetDaoProposalTallyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDaoProposals**
```swift
    open class func listDaoProposals(completion: @escaping (_ data: ListDaoProposalsResponse?, _ error: Error?) -> Void)
```

The proposal queue.

Staked CBX decides what the events pool funds. Voting power is size x tenure — the same weighting the earn multiplier uses — and it is SNAPSHOTTED when a proposal opens, so staking after seeing one grants no vote on it. `totalVotingPower` is the frozen quorum denominator; recomputing it would let somebody move the bar after votes were cast. Amounts are strings of base units.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The proposal queue.
DAOAPI.listDaoProposals() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListDaoProposalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

