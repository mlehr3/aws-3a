alias:: AWS-GI
tags:: AWS

- #### Networking
  collapsed:: true
	- Regions #card
	  tags:: AWS-Global Infrastructure, CCP
	  icon:: ![image.png](../assets/image_1707832272824_0.png)
	  collapsed:: true
		- Geographically distinct locations
		- Physically isolated and independent power, and water supply from other regions
		- US-East-1 was the original region and is where new services are launched first, and where you can find billing information
		- Factors to consider when choosing a region:
		  collapsed:: true
			- What Regulatory Compliance does this region meet?
			- What is the cost of AWS services in this region?
			- What AWS services are available in this region?
			- What is the distance or latency to my end-users
	- Availability Zones #card
	  id:: 65cb7413-8fcb-474d-b5c0-07e5b86a5afa
	  tags:: AWS-Global Infrastructure, CCP
	  icon:: ![image.png](../assets/image_1707832377940_0.png)
	  collapsed:: true
		- A region typically contains 3 AZs
		- Datacenters within a region are isolated but close enough to provide low-latency (<10ms)
		- (High Availability) Run in 3 or more AZ's so one is running if 2 fail
		- named `us-east-1a`
		- [image.png](../assets/image_1703173682773_0.png)
	- AWS Global Network #card
	  id:: 65cb757b-ddc3-44ca-81f9-53a7df3ad1ba
	  tags:: AWS-Global Infrastructure, CCP
	  collapsed:: true
		- Represents the interconnections between AWS Global Infrastructure
		- The "Backbone of AWS"
		- A private expressway between datacenters
		-
	- Points of Presence (PoP) #card
	  tags:: AWS-Global Infrastructure, CCP
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2025-06-10T15:50:44.389Z
	  card-last-reviewed:: 2025-06-06T15:50:44.389Z
	  card-last-score:: 3
		- Data center owned by AWS or a trusted partner that is used for content delivery or expediated upload
		- Live at the intersection of two networks
			- AWS & Local ISP
			- AWS & Tier 1 Network
		- Resources
			- Edge Locations #card
			  id:: 65aedc2e-881a-4489-a7d3-bd7a33f547f3
			  tags:: AWS-Global Infrastructure, CCP
				- Cache recently used content for your website
			- Regional Edge Locations #card
			  id:: 65aedc2e-3ad7-4c54-8962-a8aa5cc03539
			  tags:: AWS-Global Infrastructure, CCP
				- Cache larger, less used content for your website
	- Direct Connection Locations #card
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2024-04-12T20:29:41.205Z
	  card-last-reviewed:: 2024-04-08T20:29:41.206Z
	  card-last-score:: 3
	  tags:: AWS-Global Infrastructure, CCP
	  cards:: ((f689d383-81fb-456f-8beb-fe1772f91744))
		- Dedicated network connection between your on-premise and AWS
	- Local Zone #card
	  tags:: AWS-Global Infrastructure, AWS-Compute, CCP
	  icon:: ![image.png](../assets/image_1707834103318_0.png)
	  desc:: allows for faster speeds in densely populated areas
		- Datacenters near densely populated area to provide single digit latency for that area
		- Limited Service Offerings
		- naming `us-west-2-lax-1a`
	- AWS Wavelength Zones #card 
	  tags:: AWS-Global Infrastructure, AWS-Compute, CCP
	  icon:: ![image.png](../assets/image_1707834257806_0.png)
	  desc:: allows for edge computing on 5G networks
	  collapsed:: true
		- Edge-computing on 5G Networks
			- Verizon ...
		- Provides ultra-low-latency
		- Launch subnet tied to a wavelength zone then launch VMs to the 5G network
- #### Data Residency
  collapsed:: true
	- Data Residency:
		- Control Data flows in and out of certain regions
		- AWS Services
			- ((65ca31ea-b043-4fab-b6c4-3b507b382797))
			- ((65aedc2e-b9f5-4d86-872e-ff2951b02582))
			- IAM Policies [[AWS-IAM]]
				- limiting individuals
				- SCP
					- organizational
	- GovCloud (US) #card
	  tags:: AWS-Global Infrastructure, CCP
		- FedRAMP
			- cloud for government policies
		- Allows customers to host sensitive **Controlled Unclassified Information**
	- AWS in China #card
	  tags:: AWS-GI, CCP
		- Completely isolated *intentionally* from AWS Global to meet Chinese regulatory compliance
			- The Great Firewall
- AWS Sustainability #card
  tags:: AWS-GI, CCP, Sustainability, Investing
	- Climate Pledge
		- NetZero carbon emissions by 2040 across all businesses
	- Goals:
		- Renewable Energy: AWS GI powered by 100% renewable energy by 2025
		  logseq.order-list-type:: number
		- Cloud Efficiency:
		  logseq.order-list-type:: number
		  collapsed:: true
			- AWS infrastructure 3.6 times more energy efficient than median US enterprise data centers surveyed
		- Water Stewardship:
		  logseq.order-list-type:: number
		  collapsed:: true
			- Direct evaporative technologies
			- Non-potable recycled water
			- On-site water treatment
			- Water efficiency meters
	- Purchases sustainability offset attributes:
		- Renewable Energy Credits (RECs)
		- Guarantees of Origin (GOs)
- AWS Ground Stations #card
  tags:: AWS-GI, CCP
  icon:: ![image.png](../assets/image_1707835459146_0.png)
  collapsed:: true
	- Let's you control satellite communications
	- Use Cases:
		- aerial imagery
		- weather forecasting
		- communications
		- video broadcasts