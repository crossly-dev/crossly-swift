# GetConnectionHealthResponseAnchors

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expected** | **[String]** | What we were looking for. Empty ⇒ this platform is unmonitored. | 
**observations** | [AnyCodable] |  | 
**present** | **[String]** | Name found carrying a non-empty value — the only honest \&quot;logged in\&quot;. | 
**empty** | **[String]** | Name found, value is the empty string. The Whatnot class. | 
**missing** | **[String]** | Name not in the jar at all. | 
**cookieCount** | **Double** |  | 
**observedCookieNames** | **[String]** | Cookie names actually in the jar, truncated. This is the payload that turns \&quot;anchors missing\&quot; into a diagnosis: if the jar holds 30 cookies and none are ours, a rename is the likely story; if it holds three device cookies, the browser is signed out. NAMES ONLY — never values. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


