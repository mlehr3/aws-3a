filters:: {"aws-cf-viewer-response-headerpolicy" false, "aws-cf-functions" false, "aws-cf-origin-request-policy" false, "aws-cf-viewer-response" false, "aws-cf-caching" false, "aws-cf-origin" false, "aws-cf-origin-request" false, "aws-cf-viewer-request" false, "aws-cf-origin-response" false, "aws-cf-cachepolicy" false}
tags:: Content Delivery Networks, AWS-Networking, AWS
alias:: AWS CloudFront, CloudFront 
date-created:: [[2024-Q4]]
exclude-from-graph-view:: true

	- ((67377a24-ceee-41ae-b9f9-7ba9c5df832d))
	- *As more people hit the cache, performance will improve*
	- ---
	- #### Requests & Responses
	  collapsed:: true
		- ![image.png](../assets/image_1731697206242_0.png)
		- **Viewer Request**: When CloudFront receives a **request** from a **viewer**
		  logseq.order-list-type:: number
		- **Origin Request**: Before CloudFront forwards a **request** to the **origin**
		  logseq.order-list-type:: number
		- **Origin Response**: When CloudFront receives a **response** from the **origin**
		  logseq.order-list-type:: number
		- **Viewer Response**: Before CloudFront returns a **response** to the **viewer**
		  logseq.order-list-type:: number
		- tags:: [[AWS-CF-Viewer-Request]], [[AWS-CF-Viewer-Response]], [[AWS-CF-Origin-Request]], [[AWS-CF-Origin-Response]]
	- #### Configuration
	  collapsed:: true
		- *Geographic Restrictions* prevent users from specific locations from accessing CloudFront content
		  collapsed:: true
			- CF returns an HTTP-Status-Code of 403
			- Geographic Restrictions apply to the entire distribution
			- You provide country codes you want to allow or deny
		- ((675112e3-6492-4bde-9061-1e2af3364bbc))
		  collapsed:: true
			- ((6737a610-b341-4a3d-87fc-d7b022279136))
			- ((673b6d5d-4bdc-4e1a-ad8b-05cc9566cc48))
			- ((673b6f6d-c37d-45f2-b3d8-9011dfa81902))
		- ---
		- ((675362da-1351-4c1d-80bc-3468df5cdcba))
		- ((675362da-8f8e-4e46-a19e-dfe7e66970f7))
		- ((67536f88-aad6-4ab9-9d66-4c815962abef))
		- ---
		- Start with [[CloudFront-Functions]], and go to [[Lambda@Edge Functions]] if you absolutely have to.
	- #### [[AWS-CF-Cache]]
	  id:: 673e20a4-d409-4ef2-a0d1-aa823f317668
	  collapsed:: true
		- *The [CloudFront Cache Key](home) is a unique identifier for every item in the cache to determine if a viewer request results in a [cache hit](home).*
		  id:: 67536576-3bdd-4337-94fa-c5af67507e17
		- *A Cache Hit occurs when a viewer requests an object stored in the cache that matches the cache key of a prior request.*
		  id:: 67536682-1a3c-4da6-a37a-bb6edade9f68
		- ((67536714-7075-4c9a-9536-707c882d6146))
		- Use the [`Create-Invalidation`](((673e212b-101a-4066-9bca-1681184f2d89))) API action to ***invalidate only what you need***
	-
- #### Cards
  id:: 673b52a5-6ffa-4447-8fbe-097a33559988
	- [[card]] | What is the CloudFront Cache Key? | [[SAA]] 
	  id:: 673b50e0-de58-489b-8ce5-6731f0992ecd
	  collapsed:: true
		- ((67536576-3bdd-4337-94fa-c5af67507e17))
	- [[card]] | What results in a Cache Hit for a CloudFront Distribution? | [[SAA]]
	  collapsed:: true
		- ((67536682-1a3c-4da6-a37a-bb6edade9f68))
	- [[card]] | What results in an Origin Request for a CloudFront Distribution? | [[SAA]]
	  id:: 673b56d6-2af2-4e31-9245-187e5c03d7d5
	  collapsed:: true
		- ((67536714-7075-4c9a-9536-707c882d6146))