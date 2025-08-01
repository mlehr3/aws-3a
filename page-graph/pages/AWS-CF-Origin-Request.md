tags:: AWS-CF
date-created:: [[2024-Q4]]
	- *An [Origin Request]([[AWS-CF-Origin-Request]]) occurs when there is a cache miss and so CloudFront reaches out to the origin to retrieve the data.*
	  id:: 67536714-7075-4c9a-9536-707c882d6146
	- ---
	- #### Origin Requests Include
	  collapsed:: true
		- URL Path
		- Request Body (if present)
		- Specific HTTP Headers
			- Host
			- User Agent
			- X-Amx-Cf-Id
		-
	- #### Origin Requests Don't Include (By Default)
	  collapsed:: true
		- URL Query String
		- Cookies
		- All other HTTP Headers
		-
	- #### Cache Key Information (set by cache policy) are automatically included in origin requests
	  collapsed:: true
		- URL Query Strings
		  id:: 673b56b0-db78-46e0-8b25-3527949f6d6a
		- HTTP Headers
		  id:: 673b56b6-6937-4f20-b5a5-7d73ba0af1f4
		- Cookies
		  id:: 673b56bf-a08a-441a-a7fe-e89a53627f21