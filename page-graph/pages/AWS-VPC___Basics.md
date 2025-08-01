tags:: AWS-VPC
date-created:: [[2024-Q4]]
- 2 Main reasons to use an AWS VPC #card #AWS-VPC/Basics #AWS-SAA
	- Virtual Machine
	  logseq.order-list-type:: number
	- Virtual Network Card
	  logseq.order-list-type:: number
	  collapsed:: true
		- ENIs used within a VPC to connect to different compute types
			- ((23865347-0df5-4219-b714-d69bb13d8bb6))
			- ((6650a8c3-6aa5-406f-ba81-18dbfb5cab60))
			- ((6650a8c3-027b-41ba-bd56-ba75d8c31921))
			- RDS or other managed services
- You cannot separate VPC from EC2 #card #AWS-VPC/Basics #AWS-SAA
	- AWS VPC is tightly coupled with **AWS EC2**, and *all VPC CLI commands are under aws ec2
- VPCs are Region Specific #card #AWS-VPC/Basics #AWS-SAA
  collapsed:: true
	- Do not span regions
	- Use ((6682c38d-0481-4b52-b9da-b120ef9da22d)) to connect to VPCs across-regions
- VPC Account Limits #card #AWS-VPC/Basics #AWS-SAA
  collapsed:: true
	- Create up to **5** VPCs per region (adjustable)
	- **One** default VPC per region
	- 200 subnets per VPC
	- **5 IPv4 CIDR Blocks** per VPC (adjustable to 50)
	- **5 IPv6 CIDR Blocks** per VPC (adjustable to 50)
- Default VPC #card #AWS-VPC/Basics #AWS-SAA
  desc:: AWS recommended location to deploy resources
	- To recreate if deleted `aws ec2 create-default-vpc --region us-east-1`
		- Only way to recreate (factory default reset)
	- `172.31.0.0/16`
- Deleting VPCs #card #AWS-VPC/Basics
  collapsed:: true
	- Best way is to delete through the management console (over CLI)
	- Includes Deletion of (in Management Console)
	  collapsed:: true
		- Subnets
		- Route Tables
		- Gateway Endpoints
		- Internet Gateways
		- Egress-only internet gateways
		  id:: 675e1004-f380-443f-a3b3-b1d00cd09db7
-