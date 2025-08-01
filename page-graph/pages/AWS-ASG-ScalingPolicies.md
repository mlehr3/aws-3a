filters:: {"aws-asg-scalingpolicies-predictive" false, "aws-asg-scalingpolicies-simple" false, "aws-asg-scalingpolicies-step" false, "aws-asg-scalingpolicies-targettracking" false}
tags:: AWS-ASG
date-created:: [[2024-Q4]]
- *Auto Scaling Group [scaling policies](AWS-ASG-ScalingPolicies) set complex rules for when to scale up or down*
  id:: 675362d4-4332-4f9d-b2db-b239984a8703
- ---
- #### Types of ASG Scaling Policies
	- Dynamic Scaling Policies are easy to configure and are based on [[CloudWatch]] Alarms
		- ((675362d4-81f0-473c-a487-675bc6419d51))
		- ((675362d4-b0a9-4ea3-b114-0f27c7c36c87))
		  id:: 674f3a16-4a3c-495b-8c5d-f6d0ee6d29af
		- ((675362d4-2c8d-4171-88cb-1b111208cd0b))
	- ((675362d4-5804-4083-8273-33cafe42d440))
	  id:: 674f3d16-45d8-4a80-9879-8b4b8ac22a76
- ---
- #### CloudWatch Alarm Creation
  collapsed:: true
	- *[Target Tracking Policies]([[AWS-ASG-ScalingPolicies-TargetTracking]])* will create two CloudWatch Alarms
	- *[Simple]([[AWS-ASG-ScalingPolicies-Simple]]) and [Step]([[AWS-ASG-ScalingPolicies-Step]]) Policies* require the manual creation of CloudFront Alarms (or using the console)
	- *[Step Policies]([[AWS-ASG-ScalingPolicies-Step]])* change capacity when CloudFront Alarms are **repeatedly**? triggered
- #### Adjustment Types
  collapsed:: true
	- tags:: [[AWS-ASG-ScalingPolicies-Simple]], [[AWS-ASG-ScalingPolicies-Step]]
	- >Determine how much capacity should change
	- `ChangeInCapacity`: Change capacity based on scaling adjustment
	- `ExactCapacity`: Change capacity to an exact number
	- `PercentageChangeInCapacity`: Change capacity by a percentage
- ---
- #### Cards
  collapsed:: true
	- [[card]] | Three types of Dynamic Scaling Policies | [[AWS-SAA]] [[AWS-ASG-ScalingPolicies]]
	  id:: 674f2c39-f9fa-42d9-a974-63a5baa02174
	  collapsed:: true
		- Simple Scaling
		- Step Scaling
		- Target Tracking
	- [[card]] |