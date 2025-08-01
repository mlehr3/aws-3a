tags:: AWS-CF, CF-Caching
date-created:: [[2024-Q4]]
	- *[CloudFront Cache Policies]([[AWS-CF-CachePolicy]]) control what is included in the [Cache Key](((673b50e0-de58-489b-8ce5-6731f0992ecd))) and adds them to [Origin Requests]([[AWS-CF-Origin-Request]]).*
	  id:: 675362da-1351-4c1d-80bc-3468df5cdcba
	-
	- ---
	- Automatically includes Cache Key items in
		- URL Query Strings, HTTP Headers, Cookies
	- #### AWS Managed Cache Policies #AWS-SAA
		- Amplify
		- CachingDisabled
		- CachingOptimized
		- CachingOptimizedForUncompressedObjects
		  collapsed:: true
			- ![image.png](../assets/image_1731940957136_0.png)
		- Elemental-MediaPackage
	- #### Creating a Custom Cache policy
		- **TTL Settings**:
		  collapsed:: true
			- `MinTTL`: minimum time to hold a file in the cache
			- `MaxTTL`: maximum time to hold a file in the cache
			- `DefaultTTL`: defualt time to hold a file in the cache
			- If all values are 0 CloudFront Caching is Disabled
		- **Cache Key Settings**:
		  collapsed:: true
			- `HeadersConfig`: Which headers are a part of the cache key
			- `CookiesConfig`: Which cookies are a part of the cache key
			- `QueryStringConfig`: Which query string params are a part of the cache key
			- Compression Support: What compression format is part of the cache key
		- Example | Custom Cache Policy
		  ref:: ExamPro/AWS Developer Associate/CloudFront/Caching Policy
		  collapsed:: true
			- ```json
			  {
			    	"Name": "MyCustomCachePolicy",
			    	"Comment": "Example cache policy for specific content",
			    	"DefaultTTL": 86400,
			    	"MaxTTL": 31536000,
			    	"MinTTL": 60,
			    	"ParametersInCacheKeyAndForwardedToOrigin": {
			        	"EnableAcceptEncodingGzip": true,
			        	"EnableAcceptEncodingBrotli": false,
			        	"HeadersConfig": {
			            	"HeaderBehavior": "whitelist",
			            	"Headers": {
			                	"Quantity": 2,
			                	"Items": [
			                    	"Origin",
			                    	"Access-Control-Request-Headers"
			                  ]
			              }
			          },
			        	"CookiesConfig": {"CookieBehavior": "none"},
			        	"QueryStringsConfig": {"QueryStringBehavior": "all"}
			      }
			  }
			  ```