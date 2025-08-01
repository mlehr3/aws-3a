tags:: AWS-API
	- *Use [Configuration Files]([[aws-api-config-files]]) with the AWS API to designate user credentials and set defaults when working on your local computer.*
	  id:: 67573c48-b042-4821-a8c8-155bd5372643
		- A **Credentials Configuration File** is a TOML file used to set sensitive variables for the AWS CLI at *~/.aws/credentials*.
		- A **Configuration File** is a TOML file used to set generic configurations for the AWS CLI at *~/.aws/config*.
	- ---
	- #### Available Variables
	  collapsed:: true
		- Credentials-Related Options (stored in `~/.aws/credentials`)
		  collapsed:: true
			- `aws_access_key_id`
			- `aws_secret_access_key`
			- `aws_session_token`
		- Configuration-Related Options (stored in `~/.aws/config`):
		  collapsed:: true
			- **`region`**
			- **`output`**
			- `ca_bundle`
			- `cli_auto_prompt`
			- `cli_binary_format`
			- `cli_history`
			- `cli_pager`
			- `cli_timestamp_format`
			- `credential_process`
			- `credential_source`
			- `duration_seconds`
			- `external_id`
			- `max_attempts`
			- `mfa_serial`
			- `parameter_validation`
			- `retry_mode`
			- `role_arn`
			- `role_session_name`
			- `source_profile`
			- `sso_account_id`
			- `sso_region`
			- `sso_registration_scopes`
			- `sso_role_name`
			- `sso_start_url`
			- `web_identity_token_file`
			- `tcp_keepalive`
	- #### [[AWS-S3]] Configuration
	  id:: 67573eaf-74f8-4e8d-b7a1-d368b44f8895
	  collapsed:: true
		- Configures how AWS CLI performs Amazon S3 Operations
		- **`max_concurrent_requests`**: The maximum number of concurrent requests.
		- **`multipart_threshold`**: The size threshold for multipart uploads.
		- **`use_accelerate_endpoint`**: Enables S3 Transfer Acceleration.
	- ---
	- Named Profiles #card #AWS-API-Config-Files #AWS-SAA
	  desc:: Allows you to switch between different configurations quickly for different environments
	  collapsed:: true
		- Good practice to leave out `[defualt]` profile to avoid misconfiguration
			- Intentionally specifying profile with each command
			- ((670eaa25-7c44-484c-961c-26900b83450e))
			- Can also be set by exporting an ENV VAR `export AWS_PROFILE="production"`
		- Multiple Named Profiles Credentials File Example
		  collapsed:: true
			- ```TOML 
			  [default]
			  aws_access_key_id=AKIAIOSFODNN7EXAMPLE
			  aws_secret_access_key=wJalrXUtfnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
			  
			  [development]
			  aws_access_key_id=AKIAIOSFODNN7EXAMPLE
			  aws_secret_access_key=wJalrXUtfnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
			  
			  [production]
			  aws_access_key_id=AKIAIOSFODNN7EXAMPLE
			  aws_secret_access_key=wJalrXUtfnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
			  ```
	- Using `aws configure` to make configuration files easy #card #AWS-API-Config-Files
	  id:: 67101125-3179-4392-90e8-0706489c3574
	  collapsed:: true
		- A wizard to quickly setup your configuration file
			- Will write these to the credentials file
			- ```bash
			  $ aws configure
			  AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
			  AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
			  Default region name [None]: us-east-1
			  Default output format [None]: json
			  ```
		-
		- Other Operations
			- `Set` a value for a setting under a specific profile
				- ```sh
				  aws configure set region us-west-2 --profile dev
				  ```
			- `Unset` a value by using set command with a blank string
			  collapsed:: true
				- ```sh
				  aws configure set region "" --profile dev
				  ```
			- `Get` to print the value of a setting
			  collapsed:: true
				- ```sh
				  aws configure get region
				  ```
			- `List` configuration settings or profiles
			  collapsed:: true
				- ```sh
				  aws configure list
				  aws configure list-profiles 
				  ```
	- ---
	- #### Examples
	  collapsed:: true
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
		- [[code]] | [S3 Configuration](((67573eaf-74f8-4e8d-b7a1-d368b44f8895)))
		  id:: 6757396e-ec8e-480a-bae4-a282f66179ca
		  collapsed:: true
			- ```TOML
			  [profile development]
			  s3 =
			      max_concurrent_requests = 20
			      max_queue_size = 10000
			      multipart_threshold = 64MB
			      multipart_chunksize = 16MB
			      max_bandwidth = 50MB/s
			      use_accelerate_endpoint = true
			      addressing_style = path
			  ```
-
-