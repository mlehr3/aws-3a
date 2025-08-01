tags:: AWS, Networking
date-created:: [[2024-Q3]]
- ### Meta:
  collapsed:: true
	- Ports:
	  collapsed:: true
		- Port 22: SSH
		- Port 80: Website access
		- Port 5432: PostgreSQL
	- CIDR Range #card
	  tags:: CCP
	  collapsed:: true
		- Standard form: 10.0.0.0/16
			- the larger /val is, more IPs are designated
			- 10.0.0.0/16 - 65,536 IP addresses
			- 10.0.0.0/24 - 256 IP addresses
		- see cidr.xyz for visualization
- ## Services:
	- ### Enterprise / Hybrid Networking:
	  collapsed:: true
		- AWS Client / Site-to-Site VPN #card
		  tags:: AWS-Networking, CCP
		  icon:: ![image.png](../assets/image_1707755291764_0.png) ![image.png](../assets/image_1708355320844_0.png)
		  desc:: secure connection between on-premise, remote, and mobile employees
		  collapsed:: true
			- Provides a **secure** and **private tunnel** connection between on-premise, remote, offices, and mobile employees.
			- IPsec - secure network protocol suite
		- DirectConnect #card
		  tags:: AWS-Networking, CCP
		  icon:: ![image.png](../assets/image_1707755228562_0.png)
		  desc:: dedicated connection from on-premise data-center to AWS (very fast)
		  id:: f689d383-81fb-456f-8beb-fe1772f91744
		  collapsed:: true
			- Dedicated unencrypted gigabit connection from on-premise data-center to AWS (very fast)
	- ### Cloud Architecture:
	  collapsed:: true
		- Amazon Virtual Private Cloud (VPC) #card
		  id:: 65e393f0-aa5c-4e4a-81b4-42d0612091f5
		  tags:: AWS-Networking, VPC
		  icon:: ![image.png](../assets/image_1707755079228_0.png)
		  desc:: logically isolated virtual network
		  collapsed:: true
			- Logically isolated section of the AWS network where you launch your AWS resources
				- Resembles a traditional network you'd operate in your own datacenter
			- Choose a range of IPs with a [CIDR Range](logseq://graph/Digital%20Brain?block-id=65a167f4-471a-45b1-9a65-283390452709)
			- Most often used with EC2
		- AWS PrivateLink for Amazon S3
		  id:: 66019797-1e4e-4114-aed5-4ec951f7487d
		  tags:: AWS-Networking, AWS-SAA
		  desc:: networking tool to keep traffic within the AWS network and not the open internet
		  use:: example, for connecting an EC2 to a S3 bucket
		  icon:: ![image.png](../assets/image_1718216623049_0.png)
		  collapsed:: true
			- Robust networking tool to connect an ENI directly to other AWS Services
			- Can connect to third-party services through the AWS Marketplace
			- Has fine-grain permissions via VPC endpoint policies
			- Pricing:
				- \$\$
	- ### Domain Registration:
		- ((67ebee24-9f04-4096-8c8d-60f4de250cff))
	- ### Improving Availability:
	- ### Improving Performance:
	  collapsed:: true
		- Amazon Cloudfront #card
		  tags:: AWS-Networking, CCP
		  icon:: ![image.png](../assets/image_1707754968059_0.png)
		  desc:: CDN, route requests to the nearest Edge Location cache
		  id:: 6650a8c3-0adf-4bbe-952b-527598520c95
			- Point your website to this to route requests to nearest Edge Location cache
			- Uses Edge Locations as an off-ramp
			- Allows you to choose an origin of the cached material
			- Caches contents to various edge locations around the world
		- AWS Global Accelerator #card 
		  tags:: AWS-Networking, CCP
		  icon:: ![image.png](../assets/image_1707833116725_0.png)
		  id:: 6650a8c3-7da0-4085-81bc-7c723e63e890
			- Uses Edge locations as an on-ramp to reach AWS resources in other regions by traversing the ((65cb757b-ddc3-44ca-81f9-53a7df3ad1ba))
			- Allows you to send user traffic to an Edge Location instead of directly to your web application
	- ### Security:
		- ((675874eb-4be2-41d4-9a24-9e0381ef365b))
		- {{embed ((65c69c8c-d4eb-4764-a734-8914827394e5))}}
- #### Cards
	- [[card]] | What is Route53? | [[CCP]]
	  id:: 65d37a04-6ffd-4224-ab6b-8fa0bf0da990
	  collapsed:: true
		- domain registration service
		- Can point specific urls -- app.example.com vs ami.example.com -- to different AWS Sevices
		- ![image.png](../assets/image_1708358291769_0.png)
-