tags:: AWS-Security
- Allowing Organization Sharing #card #AWS-RAM
  desc:: allow from Management Account in RAM settings
  collapsed:: true
	- Through Management Console:
		- In Management Account navigate to RAM Console Page
		- Go to Settings
		- Enable Organization Sharing
	- Via RAM API
		- ```sh
		  aws ram enable-sharing-with-aws-organization
		  ```