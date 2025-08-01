filters:: {"2024-12-10" false, "aws-vpc/components" true}
tags:: AWS-Networking, EC2
alias:: VPC
title:: AWS-VPC
	- *[Amazon Virtual Private Cloud](AWS-VPC) is a logically isolated virtual network which allows you to create your own datacenter.*
	- ---
	- #### Cost Management
		- There is no cost associated with creating a VPC.
		- The following VPC components have no cost: [Route Tables](Route Tables #card), [NACLs]([[AWS-VPC-NACL]]), [IGWs](((6682be17-c242-4e42-8857-cd70bb6e3eb6))), [SGs](((65c69c8c-d4eb-4764-a734-8914827394e5))), and [subnets](((6650a8c3-12e2-4144-bb04-53aecb40c6ff))).
		  id:: 67587268-7bd7-40d3-83cd-200eb4495353
		- [VPC Endpoints](((6650a8cf-4181-4aa0-893e-dc05dd1ef1fd))), [VPN Gateways](((6682be89-7b9f-4bca-84bb-bbbadbdb4eee))), [Customer Gateways]([[AWS-VPC-GW-Customer]]), IPv4 Addresses, Elastic IPs, [VPC Peering](((6682c38d-0481-4b52-b9da-b120ef9da22d))), and DNS Hostnames cost money.
		  id:: 67573972-f63e-488d-89d9-c246be4e1f44
	- #### Configuration
	  collapsed:: true
		- The Default Route / Catch All Route is designated `0.0.0.0/0` and `::/0` for IPv4 and IPv6 Respectively. This route allows all traffic.
		  id:: 675e1004-6acb-4c48-8882-5dd501ad4271
	- #### Components
		- ((675874eb-4be2-41d4-9a24-9e0381ef365b))
		- ((67606543-22de-48cc-81ff-3b884c99ecff))
		- ((67607a72-dd14-4eee-9268-3b392d06d520))
-
- #### Cards
	- [[card]] | Which VPC Components are Free? | [[SAA]]
	  collapsed:: true
		- ((67587268-7bd7-40d3-83cd-200eb4495353))
	- [[card]] | Which VPC cmponents have costs? | [[SAA]]
	  collapsed:: true
		- ((67573972-f63e-488d-89d9-c246be4e1f44))
	- Share VPCs with [[AWS-RAM]] #card #AWS-SAA
	  desc:: VPC's can be shared with other AWS accounts within the same organization
	  collapsed:: true
		- Centrally manage Resources
			- Reduce the number of VPC;s that you create and manage
			- Separate accounts for billing and access control
		- Share VPC's by sharing subnets
-
- ### Core Components
	- [[AWS-VPC-IGW]]
		- Internet Gateway (IGW) #card
		  id:: 6682be17-c242-4e42-8857-cd70bb6e3eb6
		  tags:: VPC, AWS-SAA
		  desc:: gateway that connects your VPC out to the internet
		  icon:: ![image.png](../assets/image_1719844455109_0.png)
	- [[AWS-VPC-VPG]]
		- Virtual Private Gateway (VPN Gateway) #card
		  id:: 6682be89-7b9f-4bca-84bb-bbbadbdb4eee
		  tags:: VPC, AWS-SAA
		  desc:: gateway that connects your VPC to a private external network
		  icon:: ![image.png](../assets/image_1719844550599_0.png)
	- [[AWS-VPC-GW-NAT]]
		- NAT Gateway #card
		  tags:: VPC, AWS-SAA
		  desc:: allows private instances (VM's) to connect to services outside the VPC (IPv4)
		  icon:: ![image.png](../assets/image_1719844847853_0.png)
		  id:: 675e1004-c8a4-4f50-b765-a2ade46f46fa
		  collapsed:: true
			- for IPv6, all ip addresses are public
	- [[AWS-VPC-SG]]
		- Security Groups (SG) #card
		  card-last-score:: 1
		  card-repeats:: 1
		  card-next-schedule:: 2024-03-02T05:00:00.000Z
		  card-last-interval:: -1
		  id:: 65c69c8c-d4eb-4764-a734-8914827394e5
		  card-ease-factor:: 2.5
		  card-last-reviewed:: 2024-03-01T22:49:22.219Z
		  tags:: VPC, AWS-SIC, AWS-SAA
		  desc:: stateful virtual firewall at instance level
		  collapsed:: true
			- Virtual firewall at **instance level**
			- You can only create **Allow Rules**, all access is blocked initially
			- e.g. Allow an EC2 instance access on port 22 for SSH
			- Add up, so clean them up regularly or name well
	- [[AWS-VPC-Subnet]]
		- Subnets #card
		  card-last-score:: 5
		  card-repeats:: 1
		  card-next-schedule:: 2024-03-06T04:50:51.260Z
		  card-last-interval:: 4.28
		  id:: 6650a8c3-12e2-4144-bb04-53aecb40c6ff
		  card-ease-factor:: 2.6
		  card-last-reviewed:: 2024-03-01T22:50:51.261Z
		  tags:: VPC,
		  desc:: logical partition of an IP network
			- Logical partition of IP network into multiple smaller network segments.
			- You are breaking up your IP range for VPC into smaller networks.
			- Must have a CIDR range less than the VPC to represent their portion.
			- Private subnets cannot reach the internet while public ones can.
				- Private subnets disallow public IP addresses
	- [[AWS-VPC-Endpoint]]
		- VPC Endpoint #card
		  id:: 6650a8cf-4181-4aa0-893e-dc05dd1ef1fd
		  tags:: VPC, AWS-SAA
		  desc:: privately connect to AWS support services
		  icon:: ![image.png](../assets/image_1719845704397_0.png)
			- Allows you to connect a VPC directly to S3 or ((5a12b211-fa77-4ba0-a327-5dda6ccba8f8)) to stay private within the internal AWS network
			- Cannot go cross-account
			- No fine-grain permissions
			- Free
	-
	- ((6650a8c3-e273-4f65-8c22-7e7ec7a43ad7))
	- [[AWS-VPC-Peering]]
		- VPC Peering #card
		  id:: 6682c38d-0481-4b52-b9da-b120ef9da22d
		  tags:: VPC, AWS-SAA
		  desc:: Connecting VPCs to other VPCs
		  icon:: ![image.png](../assets/image_1719845823844_0.png)
		  collapsed:: true
			- alternative: ((6650a8c3-a8ac-45fb-84a6-d6cd1973e5ed))
	- Ingress only
-