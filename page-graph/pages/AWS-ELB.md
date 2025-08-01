filters:: {"aws-elb-nlb" false, "aws-elb-clb" false, "aws-elb-alb" false, "aws-elb-gwlb" false, "elb-asg" false}
tags:: AWS-Compute, AWS-Networking, SAA
date-created:: [[2024-Q4]]
- *Load Balancer*: Physical Hardware or virtual software that accepts incoming traffic and distributes the traffic to multiple targets.
- ***AWS Elastic Load Balancer*** is a *suite of load balancers* used to balance/distribute traffic to various compute resources
- ---
- #### They can balance the load differently depending on the type of load balancer
	- ((675372cf-0c78-46f5-a415-b1a1a24cf3b9))
	- ((6753734f-a4c9-4741-a66f-8dd5fd62d7a5))
	- ((6760763f-ded2-4541-8dda-314642d37db2))
	-
	-
	- ((675362d7-0e58-4fa6-b0af-6059e3cf677d))
-
- #### Traffic Steps
	- Incoming Traffic is evaluated against ***Listeners***.
	  logseq.order-list-type:: number
	  collapsed:: true
		- Listeners evaluate traffic that matches the Listener's port
		- Listeners commonly listen on port 443 or port 80
	- Listeners will invoke ***Rules*** to decide what to do for the traffic.
	  logseq.order-list-type:: number
	  collapsed:: true
		- [Advanced rules](((67507983-44f0-433b-8d53-bd053adca72b))) around [HTTP Requests]([[HTTP-Requests]]) is only for [ALBs]([[AWS-ELB-ALB]])
	- Rules will forward Traffic to a *Target Group*
	  logseq.order-list-type:: number
	  collapsed:: true
		- Logical grouping of possible targets such as EC2 Instances or IP Addresses
		- Not available for CLBs, Targets are directly registered to the Load Balancer
- ---
- #### Features
	- ***Cross-Zone Load Balancing*** evenly distributes traffic to all targets which improves traffic flow, fault tolerance, & cost efficiency.
	  collapsed:: true
		- ALB - Turned on by default, cannot be turned off
		- NLB - Turned on by default, can be turned on or off
		- CLB - Turned off by default, can be turned on or off
		- [[graphic]] | Cross Zone Load Balancing allows all instances to share an even load, even if there are a differing amount of instances in each az
		  collapsed:: true
			- ![image.png](../assets/image_1733336444055_0.png)
		- [[code]] | Turning on and off Cross-Zone Load Balancing | [[AWS-CLI]]
		  collapsed:: true
			- ```shell
			  # Turn On Cross-Zone Balancingaws 
			  elbv2 modify-target-group-attributes \
			  --target-group-arn my-target-group-arn \
			  --atributes \ 
			  Key=load_balancing.cross_zone.enabled,Value=true
			  ```
			- ```shell
			  # Turn Off Cross-Zone Balancing
			  elbv2 modify-target-group-attributes \
			  --target-group-arn my-target-group-arn \
			  --atributes \ 
			  Key=load_balancing.cross_zone.enabled,Value=false
			  ```
	- ***Health Checks*** determine the state of instances and *reroute* traffic to healthy instances
		- An instance can be `InService` or `OutofService`
		- A [connection](ASG-ELB) with an ASG is required to kill instances
		- [[graphic]] | Elastic Load Balancers reroute traffic to other instances within the target group when an instances is `OutofService`
		  collapsed:: true
			- ![image.png](../assets/image_1733336960229_0.png)
		- [[graphic]] | Elastic Load Balancer Target Group Health Check Configuration Values
		  collapsed:: true
			- ![image.png](../assets/image_1733337071555_0.png)
		- tags:: ELB-ASG
- ---
- #### Cards
  collapsed:: true
	- [[card]] | Elastic Load Balancer (ELB) | [[CCP]]
	  id:: c624f66b-15be-447a-ba1f-73c2deffdf69
	  collapsed:: true
		- icon:: ![image.png](../assets/image_1707755039477_0.png)
		  desc:: Ensures no single point of failure by distributing traffic across multiple AZs
		- Ensures no single point of failure
		- Allows you to evenly distribute traffic to multiple instances in one or more availability zones
		- If one goes down, traffic will be routed to the others
		- Modes:
			- Application Load Balancer
			  use:: When you need a flexible feature set for applications with HTTP and HTTPS traffic
			  collapsed:: true
				- Load balancing HTTP and HTTPS traffic
				- Operates at request level (layer 7)
				- Routes to targets based on request content
					- EC2 Instances
					- Containers
					- IP Addresses
					- Lambda Functions
			- Network Load Balancer
			  use:: When you need ultra-high performance and static IP addresses for your applications
			  collapsed:: true
				- Load balancing TCP and UDP traffic.
				- Operates at connection level (layer 4)
				- Capable of handling millions of requests per second securely while maintaining ultra-low latencies
			- Gateway Load Balancer
			  use:: When you need to deploy and manage a fleet of third-party virtual appliances that support GENEVE protocols
				- Provides a gateway for distributing traffic across multiple virtual appliances while scaling them up and down based on demand
				- Operates at network level (layer 3)
				- Use appliances to improve security, compliance, and policy controls.
				-
				-
	- [[card]] | Three types of Elastic Load Balancer | [[AWS-SAA]]
	  collapsed:: true
		- ALB, NLB, CLB
	- [[card]] | Application Load Balancer OSI Layer | [[AWS-SAA]]
	  collapsed:: true
		- Application (7),  HTTP/HTTPS
	- [[card]] | Network Load Balancer OSI Layer | [[AWS-SAA]]
	  collapsed:: true
		- Network (3)/Transport (4), TCP/UDP
	- [[card]] | Classic Load Balancer OSI Layer | [[AWS-SAA]]
	  collapsed:: true
		- Application (7) and Network (3)/Transport (4)