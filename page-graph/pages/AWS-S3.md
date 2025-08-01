id:: 664760fb-5298-4c64-8eee-98947010e5bf
tags:: AWS-Storage, inbox
desc:: unlimited serverless storage service.
use:: file uploads without concern for underlying infrastructure. Not intended for high IOPs.
img:: ![image.png](../assets/image_1708352277995_0.png)

-
- ### Overview
  collapsed:: true
	- Unlimited serverless storage service
	- Global Service
	- Object is stored in key-value pairs with data, metadata, and Unique ID
	- Scales with minimal file or storage limit
	- Supports multiple reads and writes (no locks)
	- File-size: [0 bytes, 5TB]
	- Need Universally unique bucket name
	- Much lower level than OneDrive or Google Drive:
	  collapsed:: true
		- Can not:
			- Easily drag and drop a file into a new folder\
				- Actions: Move
	- Transfer Protocols: http/s, APIs
- ### General Storage Design Principles
  collapsed:: true
	- Data Consistency
	  desc:: Whether the data exactly matches or does not match when data is being kept in two different places
	  collapsed:: true
		- **Strongly Consistent**:
			- Every time you query, you can expect consistent data to be returned with x time (ex. 1 seconds)
			- *We will never return old data, but you will have to wait at least 2 seconds for the query to return*
		- **Eventually Consistent**:
			- When you request data you may get inconsistent data within 2 seconds.
			- *We are giving you whatever data is in the database, you may get new or old data, but if you wait a little bit longer it will generally be up to date.*
		- S3 offers **strong consistency** for all CRUD operations
			- Only available after Jan 2020
		-
		-
	- Object Replication
	  desc:: when you make (copies) of objects into other buckets
	  id:: 666af8d0-469c-4ec3-a923-c6a1f6175168
	  collapsed:: true
		- **Data Redundancy and Durability**: Enhances data protection by storing copies in different locations.
		- **Compliance and Data Residency**: Meets legal and regulatory data storage requirements in specific regions.
		- **Improved Accessibility and Latency**: Reduces latency by replicating data closer to end-users.
		- **Operational Flexibility**: Separates production, backup, and development data sets for various operational needs.
		- **Efficient Data Processing**: Facilitates parallel data processing in regions closer to AWS resources.
		- **Disaster Recovery and Business Continuity**: Ensures business continuity with backup copies in separate locations.
		- **Optimized Costs**: Costs can be reduced by replicating to regions with lower storage pricing.
		- **Cross-Account Replication**: Allows secure data sharing between different AWS accounts.
		- **Versioning and Change Tracking**: Maintains object versions in different buckets for easy rollback and tracking.
		- **Automated Backups and Archiving**: Simplifies and updates backup and archiving processes automatically.
		- ((666af94d-e270-4390-8e39-e10ebd134221))
- ### Application Integration
  collapsed:: true
	- S3 Event Notifications #card 
	  desc:: allows your bucket to notify other AWS Services about s3 event data
	  collapsed:: true
		- tags:: AWS-Application Integration
		- TODO [[someday]] review this in depth
		- Allows for very easy S3 application integration
		- **Notification Events**:
		  collapsed:: true
			- New object created events
			- Object removal events
			- Restore object events
			- Reduced Redundancy Storage (RRS) object lost events
			- Replication events
			- S3 Lifecycle expiration events
			- S3 Lifecycle transition events
			- S3 Intelligent-Tiering automatic archival events
			- Object tagging events
			- Object ACL PUT events
		- **Possible Destination to other AWS Services**
			- [Amazon Simple Notification Service]([[AWS-SNS]])
			- [Amazon Simple Queueing Service]([[AWS-SQS]])
				- FIFO not supported
			- ((6650a8c3-6aa5-406f-ba81-18dbfb5cab60))
			- [AWS EventBridge]([[AWS-EventBridge]])
				- From here it could go about anywhere
		- Designed to be
			- Delivered at least once
			- Delivered in seconds but can sometimes take a minute or longer
	- S3 Interoperability #card
	  tags:: SAA
	  desc:: AWS Services that are intrinsically tied to S3
	  collapsed:: true
		- **Interoperability**: The capability of cloud services to exchange and utilize information seamlessly with each other.
		  collapsed:: true
			- In the context of cloud services
		- **Some common AWS Services that dump data to** S3.
			- ((23865347-0df5-4219-b714-d69bb13d8bb6)): Stores snapshots and backups in S3.
			- ((c3576a24-f7c9-4c66-a9d2-ce9e171940b8)): Backups and data exports to S3.
			- ((65cb7da9-5021-4924-ac0f-543fa0b2cb53)): Stores API call logs in S3.
			- Amazon CloudWatch Logs: Exports logs/metrics to S3.
			- ((6650a8c3-6aa5-406f-ba81-18dbfb5cab60)): Outputs data/logs to S3.
			- ETL results from [[AWS-Glue]] are stored in S3.
			- ((6650a8c2-5403-466b-ad95-13f279ebf61d)): Data streaming to S3.
			- [Amazon Elastic MapReduce]([[AWS-EMR]]) uses S3 for input/output data storage.
			- [Amazon Redshift]([[AWS-Redshift]]): Unloads data to S3.
			- [AWS Data Pipelines]([[AWS-Data-Pipelines]]) move/transforms data to/from S3.
			- [Amazon Athena]([[AWS-Athena]]) outputs query results to S3.
			- AWS IoT Core: Stores IoT data in S3.
	-
- ### Compliance
  collapsed:: true
	- WORM (Write once read many)
		- Storage compliance feature
		- Makes data immutable
- ### Other
  collapsed:: true
	- Amazon S3 Inventory #card
	  desc:: takes inventory of objects in an S3 bucket on a repeating schedule
	  collapsed:: true
		- Audit history of object changes
		- Will output into another S3 Bucket
		- Works with S3 Batch Operations
		- **Frequencies**:
		  collapsed:: true
			- Daily, Weekly
		- **Formats**:
		  collapsed:: true
			- CSV, ORC, Parquet
		- Can specify additional metadata to be included
	- Mountpoint for Amazon S3 #card
	  desc:: mount an S3 bucket to your **Linux** local file system
	  collapsed:: true
		- Open source client to install on linux os
		- **Capabilities / Limitations**:
		  collapsed:: true
			- Can:
				- Read files up to 5 TB
				- list and read existing files
				- create new files.
			- Cannot/does not:
				- modify existing files
				- delete directories
				- support symbolic links
				- support file locking
		- **Can be used in the following Storage Classes**:
		  collapsed:: true
			- S3 Standard
			- ~~S3 Intelligent-Tiering~~
			- S3 Standard IA
			- S3 One-Zone IA
			- Express One-Zone?
			- Reduced Redundancy Storage (RRS)
			- S3 Glacier Instant Retrieval
			- ~~S3 Glacier Flexible Retrieval~~
			- ~~S3 Glacier Deep Archive~~
			- ~~S3 Intelligent-Tiering Archive Access~~
			- ~~S3 Intelligent-Tiering Deep Archive Access~~
		- **How to Use**:
		  collapsed:: true
			- Install Mountpoint
				- ```bash
				  # RPM Example
				  wget https://s3.amazon.aws.com/mountpoint-s3-release/latest/x86_64/mount-s3.rpm
				  sudo yum install ./mount-s3.rpm
				  mount-s3 --version
				  ```
			- Using Mountpoint
				- ```bash
				  # create a folder
				  mkdir ~/mnt
				  
				  # mount the bucket to the folder
				  mount-s3 mybucket ~/mnt
				  
				  # move into directory
				  cd mnt
				  
				  # perform basic operations
				  # eg. cat, ls, pwd
				  
				  # remove mount
				  unmount ~/mnt
				  ```
- #### S3 Storage Lens 
  desc:: storage analysis tool for s3 buckets across your entire **AWS Organization**
  collapsed:: true
	- S3 Storage Lens aggregates metrics and displays the information in the **Account snapshot** as an **interactive dashboard** updated daily
	- ---
	- How much storage you have across your organization
	- Which are the fastest growing buckets and prefixes
	- Identify cost-optimization opportunities
	- Implement data-protection and access-management best practices
	- ---
	- Metrics can be exported as CSV or Parquet to another S3 bucket
	- Usage and metrics can be exported to Amazon CloudWatch
- #### S3 Transfer Acceleration 
  desc:: fast and secure transfer of files over long distances btwn end users and an S3 Bucket
  collapsed:: true
	- Bucket level feature
	- **General**:
		- Uses CloudFront's distributed **Edge Locations** to quickly enter the Amazon Global Network
		- Upload to a distinct endpoint instead of directly to the bucket:
		  collapsed:: true
			- ```
			  https://s3-accelerate.amazonaws.com
			  https://s3-accelerate.dualstack.amazonaws.com
			  ```
		- only supported on **virtual-hosted style requests**
		- Buckets cannot contain periods and must be DNS compliant
		- It can take 20 minutes after Transfer Acceleration is enabled
	- **How to Use**:
		- ```bash
		  # Enable transfer acceleration
		  aws s3api put-bucket-accelerate-configuration \
		  --bucket mybucket \
		  --accelerate-configuration Status=Enabled 
		  
		  # ensure virtual style
		  aws configure set s3.addressing_style virtual
		  
		  # supply s3 transfer acceleration endpoint to each s3 command
		  aws s3 cp file.txt s3://bucketname/keyname \
		  --region ca-central-1
		  --endpoint-url https://s3-accelerate.amazonaws.com
		  
		  # or optionally tel AWS CLI to alwqys use S3 Transfer Accleration endpoint
		  aws configure set default.s3.use_accelerate_endpoint true
		  ```
- ---
- ### AWS S3 Bucket Properties
  collapsed:: true
	- Each S3 bucket has a URI (Uniform Resource Identifier) which is designed for use with CLI instead of ARNs. e.g. `s3://myexamplebucket/photo.jpg`
	- S3 Bucket Restrictions and Limitations
	  collapsed:: true
		- AWS accounts are initially limited to 100 buckets which can be increased to 1000 with a service request.
		- You must empty a bucket before deleting it, including all versions of each object.
		- Get, Put, List, and Delete operations are designed for high availability.
		  collapsed:: true
			- Create, Delete, or configuration operations should be run less operations
		- S3 Bucket and Object Size Limits #card
		  tags:: SAA
		  collapsed:: true
			- **No max bucket size** and **no limit to the number of objects**
				- S3 for AWS Outposts has limits
			- **File size** range: **[0b, 5TB] inclusive**
				- Files larger than 100MB should use multi-part upload
	- Two Bucket Types
		- **General Purpose Bucket** (Flat Hierarchy)
		  collapsed:: true
			- Default]
			- Recommended for most use cases
			- Incompatible with ((6650a8cf-eaf7-4ed4-a969-0c6e080192f2)) Storage Class
			- No prefix limits
			- 100 general buckets per account
		- **Directory Bucket** (Folder Hierarchy)
		  collapsed:: true
			- Only works with ((6650a8cf-eaf7-4ed4-a969-0c6e080192f2)) Storage Class
			- Recommended when you need single-digit latency on PUT & GET
			- Individual directories can scale horizontally
			- 10 directory buckers per account
	- AWS S3 objects can be organized into folders. These folders are not really folders and are just prefixes to the objects.
	- AWS S3 buckets have a flat hierarchy without real folders. A zero-byte s3 object `myfolder/` is created for each folder.
	- [[img]] | AWS S3 bucket flat hierarchy visualization
	  collapsed:: true
		- ![image.png](../assets/image_1710247418619_0.png)
	- [[card]] | S3 Bucket Naming Rules | [[SAA]]
	  id:: 65f04926-47c7-42b7-89d9-940540c24ee0
	  collapsed:: true
		- No Uppercase, No Underscores, No Spaces
		- Valid URL rules  +
		  collapsed:: true
			- 3-63 characters
			- lowercase, numbers, ., -
			- Must begin with a letter or number
			- no `..`
			- no IP Address Format (e.g. 192.168.5.4)
			- Restricted Prefixes: `xn--` `sthree-` `sthree-configurator`
			- Restricted Suffixes: `-s3alias` `--ol-s3` reserved for access point alias names
			- Must be **unique** across all **AWS accounts** in all AWS Regions within a partition
			- A name can be reused once the original bucket is deleted
			- Buckets used with S3 Transfer Accelerator can't have periods `.`
	-
	- S3 Requesters Pay #card
	  id:: 666b240b-3909-4cd3-8a5c-cd2952be1cb7
	  desc:: offset specific S3 costs to the user requesting the data
	  collapsed:: true
		- When you want to share data but not incur the charges associated with others accessing the data
		- **Cost Distribution**:
		  collapsed:: true
			- Bucket Owner
				- Data Storage
			- Requester
				- Cost to Download
				- Request to Download
					- i.e. if the object is in a lower access tier
		- **Use Cases**:
		  collapsed:: true
			- Collaborative Projects - External partners pay for their own S3 data uploads/downloads
			- Client Data Storage - Clients pay for their S3 storage and transfer costs
			- Shared Educational Resources - Researchers cover their S3 usage fees, not the institution
			- Content Distribution - Distributors/customers pay for S3 data transfer and downloads
		- **Very easy to toggle on**:
		  collapsed:: true
			- All requests must be authenticated
			- Requesterts assume an IAM role before making their requests
				- IAM policy will have an `s3:RequestPayer` condition
			- Anonymous bucket access is not allowed
			- AWS account of the requester will be charged
		- **Requester Pay Header**
		  collapsed:: true
			- `x-amz-request-payer` must be included in the API request header for:
				- DELETE, GET, HEAD, POST, PUT
				- or as a parameter in a REST request
			- can be added to aws cli commands
				- ```bash
				  aws s3 cp \
				  s3://bucket-name/object local/path/object \
				  --request-payer requester
				  ```
			- Or in SDK
		- **Requester Pay Troubleshooting**
		  collapsed:: true
			- 403 (Forbidden Request) error occurs when:
				- Requester doesn't include `x-amz-request-payer`
				- Request authentication fails (something is wrong with IAM Role or Policy)
				- Request is anonymous
				- Request is a SOAP request (SOAP is not allowed when requesters pay is on)
				- *No charges will occur on error*
-