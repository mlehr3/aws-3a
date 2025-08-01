tags:: AWS
- # Security, Identity, & Compliance
- ## Identity Services:
  collapsed:: true
	- [[AWS-IAM]]
	- Amazon Cloud Directory #card
	  id:: 65d4f364-6097-49be-827b-97435029fe95
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708454984740_0.png)
	  desc:: Highly available multi-tenant directory-based store in AWS
	- AWS Directory Service [docs](https://aws.amazon.com/directoryservice/)  #card
	  id:: 65a19a5a-31a8-4419-8e76-e22daf3be1b1
	  tags:: AWS-SIC, AWS
	  icon:: ![image.png](../assets/image_1708360154528_0.png)
	  desc:: Microsoft AD as a service
	  collapsed:: true
		- Used for locating, managing, administering, and organizing resources
		- Managed ((65d38208-eb08-4c8f-9f8a-05ca6fb2e67a))
		- maps names of network resources to their network addresses
		- use when you need to run Active Directory utilizing all of AD Directory Services offerings
	- AWS IAM Identity Cener #card
	  id:: 65a19c86-8cec-48f1-a109-7070dffbdfa4
	  tags:: AWS-SIC
	  icon:: ![image.png](../assets/image_1727966348993_0.png)
		- AWS SSO
- ## Security Services: #AWS-Security
	- AWS Firewall Manager #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708456744699_0.png)
	  desc:: centrally manage all firewall rules via a single policy
	  collapsed:: true
		- Centrally manage all firewall rules from various services via a single policy:
			- ((65b80e2b-ec81-4ccb-ab72-34ea12b50473))
			- ((65d4f311-ba53-4441-89f8-862a1bb279eb))
			- AWS Network Firewall
			- [[aws-route-53]] resolver DNS Firewall
			- ((65c69c8c-d4eb-4764-a734-8914827394e5))
	- AWS CloudHSM #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708456302453_0.png)
	  desc:: increases availability by maintaining hardware, software and backups
	  collapsed:: true
		- HSM as a service
		- Automates hardware provisioning, software patching, and backups
		- Increases Availability
	- AWS Key Management Service (KMS) #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708456160008_0.png)
	  desc:: HSM service to manage encryption keys
	  id:: 65d4f75e-44fd-4f31-b082-e623a592b899
	  collapsed:: true
		- Managed multi-tenant HSM service
		- Simplifies creation and control of encryption keys to encrypt your data
	- AWS Certificate Manger (ACM) #card
	  id:: 65d4f75e-f3ce-465c-ba58-11b13106e0e2
	  tags:: AWS-SIC, CCP, AWS-ACM
	  icon:: 
	  desc:: manage SSL and TLS certificates
	  collapsed:: true
		- Provision, manage, and deploy public and private SSL/TLS certificates for use with AWS services and your internal connected resources
	- AWS Artifact #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708455915203_0.png)
	  desc:: self-service portal to retrieve AWS compliance reports
	  collapsed:: true
		- No cost, self-service portal for on-demand access to AWS compliance reports
	- Amazon Macie #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708455793369_0.png) 
	  desc::
		- Fully managed data security and data privacy service
		- Uses machine learning to protect your sensitive data on AW
	- AWS Inspector #card
	  id:: 675e1004-656e-4bfa-8907-d4786f3c7f2d
	  tags:: AWS-Inspector
	  collapsed:: true
		- Automated security assessment service
		- Helps improve the security and compliance of applications deployed on AWS
		- Run security benchmarks against EC2 instances
	- Amazon Cognito #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708455056581_0.png)
	  desc:: app integration to manage user authentication
	  id:: 65d4f363-672b-4b26-9e4b-abb07498ea0e
		- Decentralized managed authentication service
		- Sign-up, sign-in integration for your applications
	- AWS Resource Access Manager (RAM) #card
	  id:: 6650a8c3-a8ac-45fb-84a6-d6cd1973e5ed
	  tags:: AWS-SIC, AWS-RAM
	  icon:: ![image.png](../assets/image_1708454859685_0.png)
	  desc:: cross-account resource manager
		- Allows you to share AWS resources with another account
		- Alternative to VPC Peering and creating Cross-Account rules
		  id:: 6650a8c3-e273-4f65-8c22-7e7ec7a43ad7
		- Limited to select AWS resources
	- AWS Security Hub #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708454775591_0.png) 
	  desc::
		- Cloud posture management service
		- Collects logs from AWS Security services and creates a single dashboard to determine security posture
		- Ability to set alerts to take remediation
	- AWS Shield #card
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708454702102_0.png)
	  desc::
	  id:: 65d4f311-ba53-4441-89f8-862a1bb279eb
		- DDoS protection as a service
	- AWS Secrets Manager #card
	  tags:: AWS-SIC, CCP,
	  icon:: ![image.png](../assets/image_1708454592492_0.png) 
	  desc::
		- Store Credential data
		- Easily rotate, manage, and retrieve database credentials
	- AWS Web Application Firewall (WAF) #card
	  id:: 65b80e2b-ec81-4ccb-ab72-34ea12b50473
	  tags:: AWS-SIC, CCP
	  icon:: ![image.png](../assets/image_1708359401027_0.png)
	  desc:: high level protection from common web exploits
		- Protects your web applications from common web exploits
		- Create rulesets or subscribe to sets from the WAF Marketplace
	- Amazon GuardDuty #card
	  id:: 65d37eac-5a17-44f4-9f98-621162fa0e07
	  tags:: AWS-SIC, CCP, Observability
	  icon:: ![image.png](../assets/image_1708359523264_0.png)
	  desc:: threat detection service that analyzes logs from other resources
		- Threat detection service
		- Continuously monitors for malicious, suspicious activity and unauthorized behavior
		- Uses ML to analyze ((65cb7da9-5021-4924-ac0f-543fa0b2cb53)) Logs,VPC Flow Logs, and DNS Logs
	- Amazon Detective #card
	  id:: 65d38020-f86f-4eb2-b49e-2f6c37fc3ed7
	  tags:: AWS-SIC, CCP, Observability
	  icon:: ![image.png](../assets/image_1708359803485_0.png)
	  desc:: security data ML tool that provides a dataset for efficient security investigations
		- Used to analyze, investigate, and identify security issues from ((65d37eac-5a17-44f4-9f98-621162fa0e07)) and other services
		- Automatically collects log data from AWS resources and uses ML, statistical analysis, and graph theory to build a linked dataset to perform  more efficient security investigations