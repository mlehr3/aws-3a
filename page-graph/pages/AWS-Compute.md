filters:: {"aws-containers" false, "aws-elb" false, "elastic beanstalk" false, "aws-asg" false, "ec2" false, "ccp" false}
tags:: AWS
date-created:: [[2024-Q1]]
exclude-from-graph-view:: true
-
- ### Meta:
	- Hardware Components
		- CPU
			- Runs and processes the instructions that it is given
		- RAM
			- Short Term Memory
		- Hard Drive
			- Long Term Memory
		- Network Performance
			- Speed at which a message can be sent or received
			- Bandwidth #card
			  tags:: networking
			  card-last-interval:: 4
			  card-repeats:: 1
			  card-ease-factor:: 2.6
			  card-next-schedule:: 2024-03-11T01:52:34.766Z
			  card-last-reviewed:: 2024-03-07T01:52:34.767Z
			  card-last-score:: 5
				- The amount of data that can be sent over a specified time.
			- Latency #card
			  tags:: networking
				- How long it takes data to travel
		- Operating System
		-
	- Benefits of cloud computing
		- Save on costs
			- No upfront costs
			- Pay for only what you use
			- No data centers to maintain
		- Scalable
			- Scale up or down as needs change
			- No need to guess capacity
			- Provision resources as needed
			-
		- Reliable
			- Reliable Services
			- Built for fault tolerance
			- Application integrity
	- Methods
	  collapsed:: true
		- Instances
			- Also known as virtual machines
			- **Workloads**
				- Web hosting
				- Applications
				- Databases
				- Authentication Services
				- Other server uses
			- Can be treated as temporary and disposable
			- Use cases:
				- Hosting environment
				- Development and testing environments
				- Backup and disaster recovery
		- Containers
			- OS virtualization that allows you to run an application and its dependencies in resource isolated processes.
			- Do not contain an OS
			- Use cases:
				- Building microservices architecture
				- Video rendering services
				- Quick development and deployment
		- Serverless
			- Allows you to run code without provisioning or managing services
			- Features
				- Automatic scaling
				- Built-in high availability
				- Pay-for-use billing model
			- Use Cases:
				- File processing
				- Web applications
				- Mobile backends
				- Cron jobs (scheduled computing tasks)
		- Hybrid
			- Connected cloud-based resources and on-premises infrastucture
			- Use Cases
				- Legacy Applications
				- Company regulatory requirements
				- Government regulatory requirements
	- Architecture Diagrams:
		- Default VPCs
			- ![image.png](../assets/image_1706712551558_0.png)
		- ![image.png](../assets/image_1706207006708_0.png)
		- ![image.png](../assets/image_1706207149370_0.png)
		- ![image.png](../assets/image_1706207032997_0.png){:height 183, :width 263}
		- ![image.png](../assets/image_1706207093754_0.png)
		- ELB distributes incoming traffic across multiple instances
-
- ### Computing Services:
  collapsed:: true
	- Elastic Compute Cloud (EC2) #card
	  id:: 23865347-0df5-4219-b714-d69bb13d8bb6
	  tags:: AWS-Compute, CCP
	  more:: [[EC2]]
	  icon:: ![image.png](../assets/image_1707749531752_0.png)
	  desc:: Allows you to launch Virtual Machine Instance
	- #### Serverless Computing
	  collapsed:: true
		- AWS Lightsail #card
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707749557034_0.png)
		  card-last-interval:: -1
		  card-repeats:: 1
		  card-ease-factor:: 2.5
		  card-next-schedule:: 2024-03-02T05:00:00.000Z
		  card-last-reviewed:: 2024-03-01T22:49:29.212Z
		  card-last-score:: 1
		  id:: 66a40c66-54c3-438a-bc65-28188e847011
			- Managed virtual server service
			- "Friendly" version of Elastic Compute Cloud (EC2) #card
		- AWS Lambda #card
		  tags:: AWS-Compute, AWS-Serverless, CCP
		  icon:: ![image.png](../assets/image_1708351347833_0.png)
		  use:: when running short programs
		  desc:: serverless functions service
		  id:: 6650a8c3-6aa5-406f-ba81-18dbfb5cab60
			- Serverless functions service
			- Can deploy custom containers
			- Process:
				- Upload small pieces of code
				  logseq.order-list-type:: number
				- Choose how much allocated memory
				  logseq.order-list-type:: number
				- Choose how long function can run
				  logseq.order-list-type:: number
			- Charged based on runtime to the nearest 100ms
	- #### High Performance Computing
	  collapsed:: true
		- Cluster of hundreds of thousands of servers with fast connections between each of them with the purpose of boosting computing capacity
		- AWS Nitro System
			- A combination of dedicated hardware and lightweight hypervisors.
			- All new EC2 instances use Nitro System
		- AWS Parallel Cluster #card
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707749650838_0.png)
		  desc:: AWS-supported open-source cluster management tool
		  collapsed:: true
			- AWS-supported open-source cluster management tool
			- Makes it easier to deploy and manage HPC clusters on AWS
			-
	- #### Edge Computing
	  collapsed:: true
		- AWS Wavelength #card
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707751521870_0.png)
		  desc:: build and launch applications on select 5G networks
		  id:: 675e1003-c477-4e29-bfe2-566e9ab025cb
		  collapsed:: true
			- Allows for edge computing on 5G networks
			- Ultra-low-latency
			- Launch applications on telecom datacenter
				- Verizon, Vodafone
			- Create a sybnet tied to a wavelength zone and then you can launch VMs to the edge of the targeted 5G networks
			- Setup
				- EC2
					- Select Region
					- Account Atttributes > Settings
						- Zones
							- Enable wavelength zone
			-
		- AWS Local Zones #card
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707751536944_0.png)
		  desc:: ((65aedc2e-881a-4489-a7d3-bd7a33f547f3)) located outside an AWS Region
		  collapsed:: true
			- Datacenters located near densely populated areas outside of AWS regions
			- Provides single-digit low latency
			- Need to opt-in
	- #### Hybrid Computing
	  collapsed:: true
		- AWS Outposts rack #card
		  id:: 65ca31ea-b043-4fab-b6c4-3b507b382797
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707751603698_0.png)
		  desc:: on-premise servers with AWS infrastructure
		  collapsed:: true
			- Physical rack of servers that you can put in your datacenter that runs AWS Infrastructure
		- VMWare Cloud on AWS #card
		  tags:: AWS-Compute, CCP
		  icon:: ![image.png](../assets/image_1707751560744_0.png)
		  desc:: manage on-premise VMs with VMWare
		  collapsed:: true
			- Allows you to manage VMWare virtual machines on-premises as EC2 instances
-
- ### Cost & Capacity Management Services
	- EC2 Spot Instances, Reserved Instanced, and Savings Plan #card
	  tags:: AWS-Compute, CCP
		- Meta:
		  collapsed:: true
			- Ways to save on computing by paying in full or partially, by committing to yearly contracts or by being flexible about availability and interruption to computing service
			- | Type | Max Savings | Solution for |
			    | ---- | ---- | ---- |
			    | On - Demand | None | Immediate need for compute capacity |
			    | Reserved (RI) | 72% | Reducing costs by reserving capacity |
			    | Savings Plans | 66% - 72% | Removing coordination of RI purchases |
			    | Spot | 90% | Reducing costs by allowing interruptions |
		- On-demand Instances #card
		  id:: 65b2ae0f-6cae-479a-b31c-c3d53fe2aabb
		  tags:: AWS-Compute, CCP
		  solution-for:: Immediate need for compute capacity
		  pricing:: default
		  collapsed:: true
			- What savings costs are based on
			- Computing when you need it
			- Increase or decrease as needed
			- No upfront payments or long-term commitments
			- Use case:
			  collapsed:: true
				- Short-term, spiky, or unpredictable workloads
				- Application development or testing
			- Charged an hourly rate
		- Reserved Instances (RI) #card
		  tags:: AWS-Compute, CCP
		  solution-for:: Reducing costs by reserving capacity
		  pricing:: up to 72% off ((65b2ae0f-6cae-479a-b31c-c3d53fe2aabb))
		  collapsed:: true
			- **Terms** - The longer the term, the greater savings
			  collapsed:: true
				- 1-year or 3-year contract
				- Will turn into an on-demand at end of term
			- **Classes** - The less flexible, the greater savings
			  collapsed:: true
				- Standard RIs
					- Up to 75% off on-demand
					- Can modify RI attributes
					- Can sell in the marketplace
				- Convertible RIs
					- Up to 54% off on-demand
					- Can modify RI attributes
					- Can exchange RI for one of equal or lesser value
				- Scheduled RIs
					- No longer offered
			- **Payment Options** - Greater upfront, greater savings
			  collapsed:: true
				- All upfront
				- Partial Upfront
				- No upfront
				  collapsed:: true
					- Billed a discounted hourly rate for every hour, whether it's being used or not
					- For when you know what you'll use
			- **Scope** - Does not affect price
			  collapsed:: true
				- | Regional RI | Zonal RI |
				  | ---- | ---- |
				  | No Reserved Capacity | Reserved Capacity |
				  | AZ Flexibility | No AZ Flexibility |
				  | Flexible Instance Size | Fixed Instance Size |
				  | Queue Purchases | No Queuing Purchases |
				- Always a Fixed Instance Type
				- Regional RI
				  collapsed:: true
					- Does not reserve capacity
					- AZ flexibility
					- Fixed Instance Type
					- Flexible Instance Size
					- Can queue purchases
				- Zonal RI
				  collapsed:: true
					- Does reserve capacity
					- No AZ flexibility
					- Fixed Instance Type
					- Fixed Instance Size
					- Can not queue purchases
			- **RI Marketplace**
			  collapsed:: true
				- There is an option to sell your unused Standard RIs
				- RIs can be sold after they have been active for 30d and AWS has received payment
				- A seller can set only the upfront price, they cannot modify anything from the original purchase
				- You can sell up to $20,000 in RIs per year.
			- Use Cases:
			  collapsed:: true
				- Predictable usage workloads that do not require flexibility in compute power
				- Workloads that last longer than 1 year
				- Users are able to make upfront payments to reduce total computing costs
				-
		- Savings Plans Instances #card
		  tags:: AWS-Compute, CCP
		  solution-for:: Removing coordination of RI purchases
		  pricing:: up to 66% or 72% off ((65b2ae0f-6cae-479a-b31c-c3d53fe2aabb))
		  collapsed:: true
			- Three Plans:
				- Compute Savings Plans
					- Up to 66% off
					- Most flexible, can change:
					  collapsed:: true
						- Instance family,
						- size,
						- Availability Zone,
						- Region,
						- OS, or
						- Tenancy
					- Can apply to AWS Fargate and Lambda usage
				- EC2 Instance Savings Plans
					- Up to 72% off
					- Only applies to a specific instance family within a specific region
				- ((4e25fbdc-efca-4f80-8321-34a2599b6e0a)) Plan
				  collapsed:: true
					- Reduce SageMaker costs by 64%
			- Use Cases:
				- Long time workloads
				- Computing needs that might need flexibility over location or by instance power
		- Spot Instances #card
		  id:: 65b2b46c-ad01-4626-ae61-0975d2653ba9
		  tags:: AWS-Compute, CCP
		  solution-for:: Reducing costs by allowing interruptions
		  pricing:: up to 90% off ((65b2ae0f-6cae-479a-b31c-c3d53fe2aabb))
		  collapsed:: true
			- Pay spot price that is available at the time you are running
				- Based on supply and demand
			- Termination notice provide 2 minutes before termination (very rare)
			- **Termination Conditions**
			  collapsed:: true
				- Can be terminated by AWS at any time
				- You will not get charged for a partial hour of usage when terminated by AWS
				- If self terminated, you will still be charged for any hour that it ran
			- Spot blocks: Launch spot instances with a duration lasting 1-6 hours
			- Use with ((5ea95bc9-ba64-4cc4-ba86-904334c08d50))
			- Use Cases:
				- Applications with flexible start and end time
				- Applications only feasible at very low compute prices
				- Users with urgent computing needs for large amounts of additional capacity
	- EC2 Autoscaling Groups (ASGs) #card
	  id:: 9b23d6bf-32af-469d-a835-e7dc46f23080
	  tags:: AWS-Compute, CCP
	  icon:: ![image.png](../assets/image_1707749312127_0.png)
	  desc:: Increases elasticity by automatically adding or removing EC2 instances to meet traffic demand
	  collapsed:: true
		- Automatically adds or removes EC2 servers to meet the current demand of traffic.
		- Will save you money and meet capacity since you only run the amount of servers you need.
		- Replaces unhealthy or unreachable instances
		- Can launch across AZs
		- Automatically registers new instances with load balancers when specified
		- Modes:
			- Scheduled Scaling:
				- Plan scaling activities based on the known traffic patterns of your web application
			- Dynamic Scaling:
				- Allows for close following of application demand.
				- Set *target tracking scaling policies* e.g. cpu utilization
					- When demand is above threshold, instances are created
					- When demand is below threshold, instances are deleted
			- Predictive Scaling:
				- Uses machine learning to schedule the right number of EC2 instances in anticipation of traffic changes.
				- Delivers faster, simpler, and more accurate capacity provisioning which results in lower cost and more responsive applications
	- {{embed ((65c6b98d-7a1e-4580-b592-fb76b3618182))}}
	  collapsed:: true
	- AWS Batch #card
	  id:: 5ea95bc9-ba64-4cc4-ba86-904334c08d50
	  tags:: AWS-Compute, CCP
	  icon:: ![image.png](../assets/image_1707749497618_0.png)
	  desc:: plans, schedules, and executes computing workloads
	  collapsed:: true
		- **Plans, schedules, and executes your batch computing workloads** across the full range of AWS compute services.
		- Can utilize Spot Instance to save money
	- AWS Compute Optimizer #card
	  tags:: AWS-Compute, CCP
	  icon:: ![image.png](../assets/image_1707749414162_0.png)
	  desc:: ML powered cost savings tool
	  collapsed:: true
		- Suggests how to reduce costs and improve performance by using machine learning to analyze your usage history
	- {{embed ((7a8bd073-6866-4897-9672-e3e32831e919))}}
	- [Elastic Load Balancers](AWS-ELB)
-