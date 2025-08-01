tags:: AWS, AWS-SIC
- AWS Identity and Access Management (IAM) #card
  id:: 65d38321-d79c-4de6-b0eb-ab0bfd9aa2f7
  tags:: AWS-IAM
  icon:: ![image.png](../assets/image_1708360554077_0.png)
- Security Token Service (STS) #card #AWS-IAM 
  icon:: ![image.png](../assets/image_1727966472497_0.png)
  desc:: web service that grants temporary, limited-privilege credentials
	- Global Service, all requests go through a single endpoint at https://sts.amazonaws.com
	- The following API actions can be used to obtain STS:
	  collapsed:: true
		- **AssumeRole**
		  background-color:: red
		- AssumeRoleWithSAML
		- **AssumeRoleWithWebIdentity**
		  background-color:: red
		- DecodeAuthorizationMessage
		- GetAccessKeyInfo
		- GetCallerIdentity
		- GetFederationToken
		- GetSessionToken
	- An STS will return:
	  collapsed:: true
		- **AccessKeyID**
		  background-color:: red
		- **SecretAccessKey**
		  background-color:: red
		- **SessionToken**
		  background-color:: red
		- Expiration
	- Use Cases:
		- A user could have no permissions of it's own but just assumes roles temporarily in order to make changes and access data
		- EC2 Instance Profile
	- Code Examples:
		- Python-Boto3
		  collapsed:: true
			- id:: 670e8d2f-d223-4459-8ca8-5d671fafde5d
			  ```python
			  import boto3
			  
			  # Assume a role and get temporary credentials
			  sts_client = boto3.client('sts')
			  response = sts_client.assume_role(
			      RoleArn='arn:aws:iam::123456789012:role/demo',
			      RoleSessionName='session1'
			  )
			  creds = response['Credentials']
			  
			  # Load in temporary credentials
			  s3 = boto3.client('s3',
			      aws_access_key_id=creds['AccessKeyId'],
			      aws_secret_access_key=creds['SecretAccessKey'],
			      aws_session_token=creds['SessionToken']
			  )
			  ```
		- CLI
		  collapsed:: true
			- ```bash
			  # Generate temporary credentials via STS with the CLI
			  aws sts assume-role \
			  --role-arn arn:aws:iam::123456789012:role/my-role \
			  --role-session-name mySession
			  # Export the temporary credentials
			  export AWS_ACCESS_KEY_ID="ASIA...IAQ"
			  export AWS_SECRET_ACCESS_KEY="wJalr...zUE3"
			  export AWS_SESSION_TOKEN="FQoGz...<snipped>...zpZC"
			  ```
	- Notes:
	  collapsed:: true
		- #Django-Static-Media
		  This is how I could potentially create private media and static file permissions
	-
-
- IAM Policies #card #AWS-IAM
  desc:: documents that grant permissions for identities to access services
  collapsed:: true
	- JSON documents that grant permissions for a specific identify to access services.
	- Policies are attached to IAM Identities
- IAM Permissions #card #AWS-IAM
  tags:: AWS-SIC
  icon:: ![image.png](../assets/image_1727966655150_0.png)
  desc:: section of IAM Policy that outline permitted API actions
  collapsed:: true
	- API actions that can or cannot be performed
	- They are represented on the IAM Policy document
- #### IAM Identities
	- IAM Users #card #AWS-IAM
	  desc:: end users that interact with AWS resources
	  collapsed:: true
		- End users who log into the console or interact with AWS resources programmatically or via clicking UI interfaces
		- AWS Account Root User #card
		  tags:: AWS-SIC, CCP
			- Special AWS account with full access that cannot be deleted
			- Can only perform
			  collapsed:: true
				- Changes to account settings
				- Close AWS account
				- Cancel AWS Support Plan
				- Sign up for GovCloud
				- ...
	- IAM Groups #card #AWS-IAM
	  desc:: group of users with the same permissions
	  collapsed:: true
		- Groups of users that share permission levels
		- e.g.
			- Administrators
			- Developers
			- Auditors
	- IAM Roles #card #AWS-IAM
	  desc:: permissions for AWS resources to access other AWS resources
	  collapsed:: true
		- Grant AWS resources permissions to specific AWS API actions
		- Associate policies to a role then assign it to an AWS resource
- [[AWS-SIC]]
-