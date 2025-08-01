tags:: AWS-ASG-ScalingPolicies
date-created:: [[2024-Q4]]
- *[Simple Scaling Policies](AWS-ASG-ScalingPolicies-Simple)* change capacity in either direction by a certain amount
  id:: 675362d4-81f0-473c-a487-675bc6419d51
- ---
- #### Best Practices
	- Set a cooldown period with Simple Scaling Policies
	- Do not use Simple Scaling Policies with a cooldown, instead use [Step](AWS-ASG-ScalingPolicies-Step) or [Target Tracking](AWS-ASG-ScalingPolicies-TargetTracking) Policies for better efficiency
- ---
- #### Examples
	- [[code]] | ASG Simple Scaling Policy | [[AWS-CLI]]
	  collapsed:: true
		- ```shell
		  # Scale Out
		  aws autoscaling put-scaling-policy \
		  --policy-name my-simple-scale-out-policy \
		  --auto-scaling-group-name my-asg \
		  --scaling-adjustment 30 \
		  --adjustment-type PercentChangeInCapacity
		  
		  # Scale In
		  aws autoscaling put-scaling-policy \
		  --policy-name my-simple-scale-in-policy \
		  --auto-scaling-group-name my-asg \
		  --scaling-adjustment -1 \
		  --adjustment-type ChangeInCapacity \ 
		  --cooldown 100
		  ```
		- ```shell
		  # Scale Out Alarm
		  aws cloudwatch put-metric-alarm \
		  --alarm-name "my-asg-scale-out-alarm" \
		  --metric-name CPUUtilization \
		  --namespace AWS/EC2 \
		  --statistic Average \
		  --period 300 \
		  --threshold 70 \
		  --comparison-operator GreaterThanThreshold \
		  --dimensions Name=AutoScalingGroupName,Value=my-asg \
		  --evaluation-periods 2 \
		  --alarm-actions <scale-out-policy-arn> \
		  --unit Percent
		  
		  # Scale In Alarm
		  ...
		  ```
-