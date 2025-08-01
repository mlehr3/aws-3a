tags:: AWS-API-Config
date-created:: [[2024-Q4]]
	- A [Credentials Configuration File](AWS-API-Config-Credentials-File) is a TOML file used to set sensitive variables for the AWS CLI.
	  id:: 67573ab1-b158-4b5d-ba18-f79cbf8343e2
	- ---
	- [[code]] | Credentials Configuration File example with two users
	  collapsed:: true
		- ```toml
		  [default]
		  aws_access_key_id=AKIAIOSFODNN7EXAMPLE
		  aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
		  
		  [exampro]
		  aws_access_key_id=AKIAIOSFODNN7EXAMPLE
		  aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
		  region=ca-central-1
		  ```
	- #### Variables to Set:
	  collapsed:: true
		- `aws_access_key_id`
		- `aws_secret_access_key`
		- `aws_session_token`
	-
-