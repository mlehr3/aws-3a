tags:: AWS-S3, AWS-CLI

- Available `aws` commands
	- aws s3 #card
	  tags:: S3-CLI, SAA
	  collapsed:: true
		- High level way to work with S3 buckets and objects
		- Good for day to day use
		- Use s3api for bash scripts
	- aws s3api #card
	  tags:: S3-CLI, SAA
	  collapsed:: true
		- Low level way to work with S3 buckets and objects
		- Good for using with scripts since you have more control
		- better named commands
		  id:: 65f4774a-e8f2-4b83-9137-f618ba519d94
		- Querying
		  collapsed:: true
			- Use JMES Path https://jmespath.org/
			- LATER [[2024-06]] learn how to use query and filter
				- using `--output table` or `--output text`
					- for better viewing
	- aws s3control #card
	  tags:: S3-CLI, SAA
	  collapsed:: true
		- Managing S3 access points
		- S3 outposts buckets
		- S3 batch operations
		- Storage Lens
	- aws s3outposts #card
	  tags:: S3-CLI, SAA
	  collapsed:: true
		- Manage endpoints for S3 outposts
- S3 Bucket Request Styles:
  tags:: S3-CLI, API,
  collapsed:: true
	- Virtual hosted-style requests
	- Path-style requests (Will be discontinued in the future)
	- Difference
		- ![image.png](../assets/image_1710520551996_0.png)
	- Set AWS CLI to globally use virtual hosted style:
		- ```bash
		  aws configure set s3.addressing-style virtual
		  ```
- Dualstack Endpoints:
  tags:: S3-CLI, IPV6, IPV4
  collapsed:: true
	- Accessing Amazon S3 API
	- Graphic:
	  collapsed:: true
		- ![image.png](../assets/image_1710520776701_0.png)
		-