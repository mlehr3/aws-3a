filters:: {"_badb-catha_" true}
tags:: DevOps, Pr-Topics, Solutions-Architect
exclude-from-graph-view:: true
title:: AWS

	- Windows on AWS
	  collapsed:: true
		- Services and tools to make it easy to run windows workloads on AWS
			- Windows Servers on EC2 [docs](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/EC2_GetStarted.html) #card
			  tags:: AWS, CCP, Windows
				- You can select from a number of Windows Server versions including the latest version, Windows Server 2019​
			- SQL Server on RDS [docs](https://aws.amazon.com/rds/sqlserver/) #card
			  tags:: AWS, CCP, Windows
				- You can select from a number of SQL Server database versions​
			- AWS License Manager [docs](https://aws.amazon.com/license-manager/) #card
			  tags:: AWS, CCP, Windows
			  card-last-interval:: 4
			  card-repeats:: 1
			  card-ease-factor:: 2.6
			  card-next-schedule:: 2024-04-12T20:29:21.005Z
			  card-last-reviewed:: 2024-04-08T20:29:21.006Z
			  card-last-score:: 5
				- Makes it easier to manage your software licenses from software vendors such as Microsoft.​
			- Amazon FSx for Windows File Server [docs](https://aws.amazon.com/fsx/windows/) #card 
			  tags:: AWS, CCP, Windows
				- Is a fully managed scalable storage built for Windows.​
			- ((65a83333-c5b2-4556-b029-b2b7d89e0808))
			- Amazon WorkSpaces #card
			  tags:: AWS, CCP, Windows
				- Allows you to run a virtual desktop. You can launch a Windows 10 desktop to a provide secure and durable workstation that is accessible from wherever you have an internet connection.​
			- AWS Migration Acceleration Program (MAP) [docs](https://aws.amazon.com/migration-acceleration-program/) #card 
			  tags:: AWS, CCP, Windows
				- Large enterprise​ migration methodology
				- AWS has Amazon Partners that specialize in providing professional services for MAP.​
			- Workspaces #card
		- Launching a free Windows Instance on AWS [[EC2]]
		  id:: 65a8379b-58b8-4a95-bb34-c112471c9937
			- Launch EC2 Instance
				- AMI: Windows > Windows Server 2022 Base
				- Create new key pair
			- Connect > RDP Client
			  id:: 65a83af5-de45-470a-87e4-4514cabd7fad
				- Download remote desktop file and move to HP Desktop
				- Get Password - Upload Private Key - Decrypt
	- Shared Responsibility Model
	  collapsed:: true
		- Defines the security obligations of the customer vs the CSP
		- Images:
			- ![image.png](../assets/image_1707945493020_0.png)
			- ![image.png](../assets/image_1707945720806_0.png)
			  tags:: IaaS, PaaS, SaaS
		- Customer: Security IN the Cloud
			- Data
			- Configuration
		- AWS: Security OF the Cloud
			- Hardware
			- Operation of Managed Services
			- Global Infrastructure
			-
	- Cloud Financial Management
	  collapsed:: true
		- AWS Budgets #card
		  tags:: AWS, CCP
		  icon:: ![image.png](../assets/image_1708457497125_0.png)
		  desc:: alert system if you exceed or approach your budget
			- Setup alerts if you exceed or approaching your defined budget
			- Cost, Usage, or Reservation Budgets
			- First 2 budgets are free
			- Each is $0.02/d ~0.60USD/mo
		- AWS Cost and Usage Reports (CUR)#card
		  tags:: AWS, CCP
		  icon:: ![image.png](../assets/image_1708457651817_0.png)
		  desc:: create detailed cost csv data
		  collapsed:: true
			- Generate a detailed spreadsheet of costs
			- Places reports in CSV or *Parquet* format in a S3 bucket
			- Use [Amazon Athena]([[AWS-Athena]]) to turn the report into a queryable database
			- Use [Amazon QuickSight]([[AWS-QuickSight]]) to visualize your billing data as graphs
		- AWS Cost Explorer #card
		  tags:: AWS, CCP
		  icon:: ![image.png](../assets/image_1708461188332_0.png)
		  desc:: cost data visualization tools
			- Visualize, understand and manage AWS costs and usage over time
			- Forecasting tools
		-
	- [[Pr-LearningPath]]
		- Be intuitive with learning AWS
- id:: 681244cc-532a-4245-bfd9-640982bba913
- [[aws-services]]
- [[ExamPro AWS]]
-