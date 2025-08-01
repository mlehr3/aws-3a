tags:: AWS-CF
date-created:: [[2024-Q4]]

	- *[Origins](AWS-CF-Origin) store the original version of files served by the distribution.*
	  id:: 675112e3-6492-4bde-9061-1e2af3364bbc
	- ---
	- #### Configuration
		- *Origins can be a bucket, instance, load balancer, an external server, or point to Route 53.*
		- *Origin Groups increase availability and fault tolerance by grouping a primary and secondary origin together.*
		  id:: 6737a610-b341-4a3d-87fc-d7b022279136
	- ---
	- #### Origin Definition
	  collapsed:: true
		- *Domain Name*: the address to the origin
		  collapsed:: true
			- e.g. `awsexamplebucket.s3.amazonaws.com`
		- *Origin Path*: the path at the specified address
		- **Configurations**:
			- *S3OriginConfig*
			  collapsed:: true
				- Amazon S3
			- *CustomOriginConfig* (everything else)
				- AWS Elemental MediaStore Container
				- Application Load Balancer
				- Lambda Function URL
				- HTTP Server (EC2 or other custom origin)
				- CloudFront Origins Group
	- #### Origin Groups
	  collapsed:: true
		- Fall to secondary origin based on [[HTTP-Response-Codes]]
		- **Response Code Options**:
			- 400, 403, 404, 416, 500, 502, 503, 504
		- CloudFront will only failover with GET, HEAD, & OPTIONS Requests
	- #### Origin Security
	  id:: 673b71f3-0880-43e1-84c5-f886d96b9260
		- *Origin Access Control (OAC)*
		  id:: 673b6d5d-4bdc-4e1a-ad8b-05cc9566cc48
		  collapsed:: true
			- Ensures that an S3 Bucket can only be accessed through CloudFront and not through S3 URLs
			  collapsed:: true
				- *Enhanced Security Practices*:
					- short term credentials
					- resource-based policies
					- frequent **credential rotations**
					- protects against **confused deputy problem** attacks
					  collapsed:: true
						- where an entity that doesn't have permission to perform an action can coerce a more-privileged entity to perform the action
					- comprehensive **HTTP methods** support
					  collapsed:: true
						- GET, PUT, POST, PATCH, DELETE, OPTIONS, HEAD
					- supports downloading and uploading S3 objects encrypted with **SSE-KMS**
					- supports accessing S3 in **all AWS regions**
			- Image | OAC Architecture Diagram
				- ![image.png](../assets/image_1731947904915_0.png)
			- Example | CloudFront OAC Bucket Policy
				- ```json
				  {
				    "Sid": "OAC",
				    "Effect": "Allow",
				    "Principal": {
				      "Service": "cloudfront.amazonaws.com"
				    },
				    "Action": "s3:GetObject",
				    "Resource": "arn:aws:s3:::<S3 Bucket Name>/*",
				    "Condition": {
				      "StringEquals": {
				        "AWS:SourceArn": "arn:aws:cloudfront:::123456789012:distribution/<CloudFront Dist ID>"
				      }
				    }
				  }
				  ```
		- *Origin Shield*
		  id:: 673b6f6d-c37d-45f2-b3d8-9011dfa81902
			- Additional layer in CF caching infrastructure that helps minimize origin load, improve it's availability, and reduce its operating costs
			- *Benefits*
			  collapsed:: true
				- Better cache hit ratio
				- Reduced origin load
				- Better network performance
			- Image | CloudFront Network Architecture Diagram with and without Origin Shield
			  collapsed:: true
				- ![image.png](../assets/image_1731948517758_0.png)
		- Origin Access Identity (OAI) *Legacy*
		  collapsed:: true
			- Ensures that an S3 Bucket can only be accessed through CloudFront and not directly over the internet
			- Special CloudFront User
			- ![image.png](../assets/image_1731946646496_0.png)
			- Example | CloudFront OAI Policy
				- ```json
				  {
				    "Sid": "OAI",
				    "Effect": "Allow",
				    "Principal": {
				      "AWS": "arn:aws:iam:cloudfront:user/CloudFront Origin Access Identity <Origin access identity ID"
				    },
				    "Action": "s3:GetObject",
				    "Resource": "arn:aws:s3:::<S3 Bucket Name>/*"
				  }
				  ```
			- *Limitations*:
				- No support for granular policy configurations
				- Does not sign HTTP & HTTPS requests that use the POST method in AWS regions that require AWS SigV4
				- Does not integrate with SSE-KMS
				- Regions Pre Dec 2022