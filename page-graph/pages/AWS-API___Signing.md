tags:: AWS-API
date-created:: [[2024-Q4]]
-
- Automatically signed via the CLI or SDK, use those!!
-
- Why do we need Request Signing? #card #AWS-API/Signing #AWS-SAA
  collapsed:: true
	- Prevents data tampering
	- Verifies the identity of the requester
- Requests that don't need to be signed #card #AWS-API/Signing #AWS-SAA
  collapsed:: true
	- Anonymous requests to Amazon S3
	- Some API operations to STS e.g. AssumeRoleWithWebIdentity
-
- AWS Signature Version 4 #card #AWS-API/Signing 
  desc:: Andrew Brown has never had to use this
  collapsed:: true
	- Graphic:
		- ![image.png](../assets/image_1729087350033_0.png)
	- The Secret Access Key is used to? #card #AWS-API/Signing #AWS-SAA
		- Create the signing request
		- Not sign the request
	- Process to Sign can change by the request type
		- **Authorization Header** (the most common)
		- A Post Request
		- Query Parameters
		  collapsed:: true
			- ```
			  https://s3.amazonaws.com/examplebucket/test.txt
			  ?X-Amz-Algorithm=AWS4-HMAC-SHA256
			  &X-Amz-Credential=<your-access-key-id>/20130721/us-...
			  &X-Amz-Date=20130721T201207Z
			  &X-Amz-Expires=86400
			  &X-Amz-SignedHeaders=host
			  &X-Amz-Signature=<signature-value>
			  ```
-
- Signature Version 2 is Deprecated