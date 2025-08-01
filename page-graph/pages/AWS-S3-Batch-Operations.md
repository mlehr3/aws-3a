tags:: AWS-S3, 100-websites
course:: [[ab-aws-saa]] 
date-created:: [[2025-Q3]]
img:: ![image.png](../assets/image_1718299410184_0.png)

	- Run batch copies, object locks, object tagging, ACL changes and more with [S3 Batch Operations](AWS-S3-Batch-Operations).
- To run, provide lists of objects in an S3 CLI command or supply an S3 Inventory report manifest.json.
- Batch Operations can generate a **completion report** to audit the outcome bulk operation
- Clickops oriented
- #### Batch Operation Types
	- **Copy**: Copies each object listed in the manifest to the specified destination bucket.
	- **Invoke Lambda Function**: Run a Lambda function against each object.
	- **Replace all object tags**: Replaces the Amazon S3 object tags of each object.
	- **Replace access control list (ACL)**: Replaces the ACLs for each object.
	- **Restore**: Sends a restore request to S3 Glacier.
	- **Object Lock Retention**: Prevents overwriting or deleting for a fixed abount of time.
	- **Object Lock Legal Hold**: Prevents overwriting or deleting until the legal hold is removed.