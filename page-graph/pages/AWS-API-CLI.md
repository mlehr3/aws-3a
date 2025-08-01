filters:: {"aws-cli-auto-prompt" false, "aws-cli-envvars" false}
tags:: AWS-API
alias:: AWS-CLI, AWS CLI
date-created:: [[2024-Q4]]

	- The [AWS CLI](AWS-API-CLI) Allows users to programmatically interact with the AWS API via a terminal
	  id:: 675362d4-d8c5-43ea-9b5b-34eb77f5c744
	  
	  AWS CLI is a Python Executable Program
	- ---
	- #### Meta
	  collapsed:: true
		- Terminal vs Console vs Shell
			- A **terminal** is a text only interface (input/output environment)
			- A **console** is a physical computer to physically input information into a terminal
			- A **shell** is the command line program that users interact with to input commands
				- e.g. Bash, Zsh, PowerShell
	- #### Installation
	  collapsed:: true
		- #### Ubuntu
			- ```bash
			  sudo apt install unzip
			  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
			  unzip awscliv2.zip
			  sudo ./aws/install
			  ```
		- AWS CLI on PowerShell
		  collapsed:: true
			- Better autocomplete tools for writing programmatic scripts in VS Code .ps1 files
			- Can be aggravating and slow
				- Maybe stick to using it in strict windows environments (like visual basic)
			- #### AWS
				- Downloading AWS tools on PowerShell
				  collapsed:: true
					- ```
					  $ # https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-linux-mac.html
					  $ Install-Module -Name AWS.Tools.Installer
					  $ Install-AWSToolsModule AWS.Tools.EC2,AWS.Tools.S3 -CleanUp
					  ```
				- Tools Documentation [docs](https://docs.aws.amazon.com/powershell/latest/reference/)
				- [[AWS-CLI-S3]]
					- https://github.com/gspider8/saa-exampro/tree/msl/s3/powershell-scripts
	- #### Usage
	  collapsed:: true
		- [[graphic]] | Variable Precedence Graphic for AWS CLI. From lowest to highest priority: variables set in configuration files, environment variables, AWS CLI parameters.
		  id:: 6757396e-255c-460a-b5ff-364096a954fb
			- ![image.png](../assets/image_1729107032703_0.png)
			- tags:: [[AWS-API-Config-Credentials-File]], [[AWS-API-Config-Files]]
		- ((6757365f-0d3f-4296-9036-d01663ac9ede))
		  id:: 675736b4-00b9-466a-adf3-df8c2bb4ceb7
		- Use a specific profile from credentials file by adding profile flag `--profile <profilename>`.
		  id:: 670eaa25-7c44-484c-961c-26900b83450e
		- Populate parameters from a file #card #AWS-API
		  code:: `--cli-input-json file://fileName.json`  `--cli-input-yaml`
		  about:: powerful feature, try to take advantage early
		  collapsed:: true
			- Not available on every command, check corresponding docs if `--cli-input flag` is an available subcommand
			-
	- ---
	- #### Resources
		- https://docs.aws.amazon.com/cli/latest/
- #### Cards