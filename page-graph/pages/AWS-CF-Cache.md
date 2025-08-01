tags:: AWS-CF, Caching
date-created:: [[2024-Q4]]
	- #### [Cache Invalidation](((673e1777-94c6-4370-bf7d-15a59bb35d95)))
	  id:: 673e212b-101a-4066-9bca-1681184f2d89
		- *invalidating the entire cache can be expensive*
		- Example | CloudFront API Cache Invalidation **Specified Files**
		  collapsed:: true
			- ```shell
			  aws cloudfront create-invalidation \ 
			  --distribution-id EDFBD6EXAMPLE \
			  --paths "/static/global.css" "/static/images/logo.png"
			  ```
		- Example | CloudFront API Cache Invalidation **Batch of Files**
		  collapsed:: true
			- ```shell
			  aws cloudfront create-invalidation \ 
			  --distribution-id EDFBD6EXAMPLE \
			  --invalidation-batch file://invalidation-paths.json
			  ```
			- So it could be a good practice to create this json file with maybe a date/version when pushing to production and running this command to clean up the caches for those old files.
			- ```json
			  {
			    "Paths": {
			      "Quantity": 2,
			      "Items": [
			        "/path/to/object1",
			        "/path/to/object2/*"
			      ]
			    },
			    "CallerReference": "my-request-1"
			  }
			  ```
			- tags:: Django, Caching, CICD
		- Example | CloudFront API Cache Invalidation **ALL**
		  collapsed:: true
			- ```shell
			  aws cloudfront create-invalidation \ 
			  --distribution-id EDFBD6EXAMPLE \
			  --paths "/*"
			  ```