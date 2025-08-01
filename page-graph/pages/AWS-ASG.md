tags:: AWS-Compute
date-created:: [[2024-Q4]]
alias:: ASG, Auto Scaling Group

- An Auto Scaling Group (ASG) contains a collection of one or more **EC2 instances** that are treated as a group for the purposes of automatic scaling and management.
- ((9b23d6bf-32af-469d-a835-e7dc46f23080))
- ---
- #### Scaling Types
	- ((675362d4-6c54-4056-8060-0d353ee42c1d))
	- ((6753750c-630d-49c1-98f9-fd14b3be2146))
	  id:: 674f3186-f32f-4a5c-907f-614fbbad5d8f
	- ((675362d4-4332-4f9d-b2db-b239984a8703))
	  id:: 674f31c9-ebce-42fe-8bc1-31dce1afe7cd
- ---
- #### Architectures
  collapsed:: true
	- Architecture Sample with [Scaling Policies]([[AWS-ASG-ScalingPolicies]])
		- ![image.png](../assets/image_1733151979718_0.png)
- ---
- #### Cards
	- [[card]] | Three Types of Auto Scaling | [[AWS-SAA]]
	  collapsed:: true
		- Capacity Settings - manualish
		- Health Checks
		- Scaling Policies
	- [[card]] | Three ASG Capacity Settings | [[AWS-SAA]]
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2025-05-02T04:00:00.000Z
	  card-last-reviewed:: 2025-05-01T17:04:39.624Z
	  card-last-score:: 1
	  collapsed:: true
		- Min Size
		- Max Size
		- Desired Capacity
	- [[card]] | ASG Health Checks can be Based on? | [[AWS-SAA]]
	  collapsed:: true
		- [Standard EC2 Health Checks](((674de28c-e308-4583-9408-66bd0cdc8a93)))
		- [ELB Health Checks](((674de2a7-63c9-40d9-8849-d1053618cde6)))
	- [[card]] | Load Balancer Types that are Associated directly to ASGs | [[AWS-SAA]]
	  collapsed:: true
		- [Classic Load Balancers]([[AWS-ELB-CLB]])
	- [[card]] | Load Balancer Types that are Associated to ASGs via Target Groups | [[AWS-SAA]]
	  collapsed:: true
		- [Application Load Balancer]([[AWS-ELB-ALB]])
		- [Network Load Balancer]([[AWS-ELB-NLB]])
		- [Gateway Load Balancer]([[AWS-ELB-GWLB]])
-
-