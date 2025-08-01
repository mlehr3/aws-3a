tags:: AWS-CF
date-created:: [[2024-Q4]]
	- *[Origin Request Policies]([[AWS-CF-Origin-Request-Policy]])* allow you to include additional information in [origin requests]([[AWS-CF-Origin-Request]]) without altering the cache key. This can be helpful in maintaining a good cache hit ratio.
	  id:: 675362da-8f8e-4e46-a19e-dfe7e66970f7
	- ---
	- #### AWS Managed Origin Request Policies #AWS-SAA
		- AllViewer
		- AllViewerAndCloudFrontHeaders-2022-06
		- AllViewerExceptHostHeader
		- CORS-CustomOrigin
		- CORS-S3Origin
		- Elemental-MediaTailor-PersonalizedManifests
		- UserAgentRefererHeaders
	- ### Creating a Custom Origin Request Policy
		- **Head Behavior**:
		  collapsed:: true
			- `none`: Excludes all viewer request headers except those specified in a [Cache Policy]([[AWS-CF-CachePolicy]]).
			- `whitelist`: Includes only specified headers in `Headers`.
			- `allViewer`: Includes all headers from viewer requests.
			- `allViewerAndWhitelistCloudFront`: Includes all viewer request headers and additional specified CloudFront headers.
			- `allExcept`: Includes all viewer request headers except those specified in `Headers`.
		- **Cookie Behavior**:
		  collapsed:: true
			- `none`: Excludes all viewer request cookies except those specified in a [Cache Policy]([[AWS-CF-CachePolicy]]).
			- `whitelist`: Includes only specified cookies in `CookieNames`.
			- `all`: Includes all viewer request cookies.
			- `allExcept`: Includes all cookies except those in `CookieNames`.
		- **Query String Behavior**:
		  collapsed:: true
			- `none`: Excludes all viewer request query strings except those specified in a [Cache Policy]([[AWS-CF-CachePolicy]]).
			- `whitelist`: Includes only specified query strings specified in `QueryStringNames`.
			- `all`: Includes all viewer request query strings.
			- `allExcept`: Includes all query strings except those in `QueryStringNames`.
	- Example | Custom Origin Request Policy
	  ref:: ExamPro/AWS Developer Associate/CloudFront/Origin Request Policy
		- ![image.png](../assets/image_1731945032316_0.png){:height 120, :width 206}