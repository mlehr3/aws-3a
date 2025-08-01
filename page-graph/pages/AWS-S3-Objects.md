tags:: AWS-S3
date-created:: [[2025-Q3]]

	- *[S3 Objects] are resources that represent data, not infrastructure. They consist of 4 primary components: key, value, version ID, metadata.*
	- #### Object Key
	  collapsed:: true
		- ![image.png](../assets/image_1710353111953_0.png)
		  collapsed:: true
			- [[img]] | S3 Object Key Name
		- Object Key Name cannot exceed 1024 bytes
	- #### Object Metadata
	  collapsed:: true
		- data to describe the data
		- **General**:
		  collapsed:: true
			- Metadata provides information about other data but not the contents itself
				- Categorizing and organizing data
				- Providing context about data
			- Not resource tags or object tags
				- Those are intended to provide info about cloud resources and not about object contents
		- **System Defined Metadata:**
			- Data that only Amazon can control (AWS Will automatically attach them):
			  collapsed:: true
				- Content Type: image/jpeg
				- Cache Control: max-age=3600, must-revalidate
				- Content Disposition: attachment; filename='example.pdf'
				- Content-Encoding: gzip
				- Content-Language: en-US
				- Expires: Thu 01 Dec 2030 16:00:00 GMT
				- X-amz-website-redirection-location: /new-page.html
			- *A few edge cases where the user can modify certain attributes*
		- **User Defined Metadata**:
			- Must start with `x-amz-meta-`
			- ##### Examples:
			  collapsed:: true
				- Access & Security:
					- `x-amz-meta-encryption: "AES-256`
					- `x-amz-meta-access-level: "confidential"`
					- `x-amz-meta-expiration-date: "2024-01-01"`
				- Media File:
					- `x-amz-meta-camera-model: "Canon EOS 5D"`
					- `x-amz-meta-taken-on: "2023-06-10"`
					- `x-amz-meta-location: "New York City"`
				- Custom Application
					- `x-amz-meta-app-version: "2.4.1"`
					- `x-amz-meta-data-imported: "2023-03-15"`
					- `x-amz-meta-source: "CRM System"`
				- Project Specific:
					- `x-amz-meta-project-id: "PRJ12345"`
					- `x-amz-meta-department: "Marketing"`
					- `x-amz-meta-reviewed-by: "Jane Smith"`
				- Document Versioning
					- `x-amz-meta-version: "v3.2"`
					- `x-amz-meta-last-modified-by: "Alice Johnson"`
					- `x-amz-meta-original-upload: "2023-02-01"`
				- Content Related
					- `x-amz-meta-title: "Annual Sales Report 2023"`
					- `x-amz-meta-author: "John Doe"`
					- `x-amz-meta-description: "Detailed sales..."`
				- Compliance and Legal:
					- `x-amz-meta-legal-hold: "true"`
					- `x-amz-meta-compliance-category: "GDPR"`
					- `x-amz-meta-retention-period: "5 years"`
				- Backup and Archival:
					- `x-amz-meta-backup-status: "Completed"`
					- `x-amz-meta-archive-date: "2023-04-20"`
					- `x-amz-meta-recover-point: "2023-04-15"`
	- ---
	- S3 objects can be maintained with HTTP operations (HEAD, GET, PUT, LIST).
	  collapsed:: true
		- HEAD: Information about the S3 object, not the object contents itself
		- GET: an S3 object including it's contents
		- PUT:
		- LIST: a list of S3 objects
	- #### Other Object Features
		- **Bucket Folders**: Organize, group, and filter objects with Bucket Folders. If the object is stored within a folder, the file name is prefixed by the folder name, delimited with `/`. This simulates folders in a flat hierarchy.
		- **S3 Object Tags**: Categorize storage by assigning key-value pairs to S3 objects. Resource tagging at the object level.
		- **S3 Object Etags**: *Entity Tags* detect if contents of an object have changed without downloading it.
		  design:: [[Security]]
		  collapsed:: true
			- The value is generally represented by a hashing function (MD5).
			- Part of HTTP Protocol
			- Used for revalidation for caching systems
			- Represents a specific version of an object
			- Example with terraform object resources and etags https://github.com/gspider8/saa-exampro/tree/msl/s3/etags
		- **S3 Object Checksums** Ensure file integrity through uploads and downloads. Checks (sum) or amount of data before and after transfer. Algorithm can be selected from the following options ()
		  design:: [[Security]]
		  collapsed:: true
			- Cyclic Redundancy Check: CRC32, CRC32C
			- Secure Hash Algorithms: SHA1, SHA256
		-
-
- ### Object Resilience & Durability
	- Object Locking: 
	  tags:: S3-Objects
	  desc:: Makes data files immutable, WORM
	  collapsed:: true
		- **General**:
		  collapsed:: true
			- Prevent the deletion of objects
			- Can only be turned on at the creation of a bucket
			- Can only be set via AWS API and not through console
			- Can't be used as destination buckets for server access logs
		- **Object Retention Types**:
		  collapsed:: true
			- **Retention Periods**: Fixed period of time during which an object remains locked
			- **Legal holds**: Remains locked until you remove the hold
				- ```bash
				  aws s3api put-object-legal-hold
				  --bucket your-bucket-name \
				  --key your-object-key \
				  --legal-hold Status-ON
				  ```
		- **Data Integrity & Regulatory Compliance**
		  collapsed:: true
			- Prevent an object from being deleted or overwritten for
				- A fixed amount of time
				- or indefinitely
	- S3 Object Versioning
	  tags:: S3-Objects
	  desc:: allows storage of multiple versions of s3 objects
	  id:: 6650a8bb-0854-4069-8595-cf5463c8bd88
	  collapsed:: true
		- **Benefits**:
			- Preserves, retrieves, and restores every version of every object stored in an S3 bucket.
			- With versioning, you can **recover more easily** from unintended user actions and application failures
			- Versioning-enabled buckets can help you recover objects from **accidental deletion or overwrite**.
		- **Design**:
			- Store all versions of an object in S3 at the same object key address
			- By default, S3 Versioning is disabled on buckets, and you **must explicitly enable it**
			- **Once enabled, it cannot be disabled**, only suspended on the bucket
			- Fully integrated with S3 lifecycle rules
			- MFA Delete provides extra protection against deletion of data
		- **Buckets can be in one of three states**:
			- Unversioned (Default)
			- Versioned
			- Versioned Suspended
		-
	- #### S3 Object Replication Methods
	  id:: 666af94d-e270-4390-8e39-e10ebd134221
	  tags:: S3-Objects
		- ((666af8d0-469c-4ec3-a923-c6a1f6175168))
		- S3 Cross-Region Replication #card
			- Live-replication
		- S3 Same-Region Replication #card
			- Live-replication
		- S3 Bi-Directional Replication #card
			- Live-replication
		- S3 Batch Replication #card
			- On-Demand
- ### Uploading and Downloading
	- S3 Multipart Upload #card
	  tags:: S3-Objects, SAA
	  desc:: upload a single object in a set of parts
	  collapsed:: true
		- Recommended for files > 100 MB
		- **Advantages**:
		  collapsed:: true
			- Improved throughput
			- In case of network failure, just reupload missing parts
			- Once you start, you can upload parts at any time and there is no expiry time to upload
			- You can upload as you're creating it
		- **Graphic**:
		  collapsed:: true
			- ![image.png](../assets/image_1718385030149_0.png)
		- **Steps to use with CLI**:
		  collapsed:: true
			- Initiate an upload which will return back an `Upload ID`:
				- ```bash
				  aws s3api create-multipart-upload \
				  --bucket mybucket \
				  --key 'myfile'
				  ```
			- Upload each part providing `Upload ID`:
				- Parts can be numbered from `1 to 10000`
				- ```bash
				  aws s3api upload-part \
				  --bucket mybucket \
				  --key 'myfile' \
				  --part-number 1 \
				  --body part01 \
				  --upload-id "dfaEjLnE9j3..."
				  ```
			- Create `parts.json` file with Etags corresponding to each part:
				- ```json
				  {
				    "Parts": [
				      {"PartNumber": 1, "ETag": "\"8rf4d...\""},
				      {"PartNumber": 2, "ETag": "\"lbn3o...\""},
				      {"PartNumber": 3, "ETag": "\"56a23...\""}
				    ]
				  }
				  ```
			- Tell S3 that you have finished the upload:
				- ```bash
				  aws s3api complete-multipart-upload \
				  --bucket mybucket \
				  --key 'myfile' \
				  --multipart-upload file://parts.json \
				  --upload-id "dfaEjLnE9j3..."
				  ```
	- S3 Byte Range Fetching #card
	  tags:: S3-Objects, SAA
	  desc:: download a specified part of a single object
	  collapsed:: true
		- fetch a range of bytes of data from S3 Objects, use the range header during S3 GetObject API Requests
		- **Use w/ Boto**
		  collapsed:: true
			- Example where you download the file in portions then stitch it together
			- Depending how large the file is, you might need to write each part to disk if your program doesn't have enough memory to hold all parts
			- ```python
			  import boto3
			  
			  # Initialize a boto3 S3 client
			  s3 = boto3.client('s3')
			  
			  # Replace these variables with your bucket and object key
			  bucket_name = 'your-bucket-name'
			  object_key = 'your-object-key'
			  
			  # Byte ranges to fetch
			  byte_ranges = ['bytes=0-999', 'bytes=1000-1999', 'bytes=2000-2999']
			  
			  # List to hold each byte range
			  parts = []
			  
			  # Fetch each byte range
			  for byte_range in byte_ranges:
			      # Make a GetObject request with the specified byte range
			      response = s3.get_object(Bucket=bucket_name, Key=object_key, Range=byte_range)
			      # Read the part of the content and append to the list
			      parts.append(response['Body'].read())
			  
			  # Concatenate all parts into a single byte sequence
			  complete_file_content = b''.join(parts)
			  
			  # Write the complete file to disk
			  with open('output_file', 'wb') as f:
			      f.write(complete_file_content)
			  
			  print("File downloaded and reassembled from byte ranges.")
			  ```
	-