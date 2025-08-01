tags:: AWS-ASG
date-created:: [[2024-Q4]]
- *Manually set the expected range of capacity via [Capacity Settings](AWS-ASG-CapacitySettings)*
  id:: 675362d4-6c54-4056-8060-0d353ee42c1d
- ---
- Size Determined by: **Min Size**, **Max Size**, and **Desired Capacity**
	- u[Running EC2 Instances]
	- ASG will always launch instances to meet minimum size capacity
- [[Code]] | Set Capacity Settings for an [Auto Scaling Group](AWS-ASG) via AWS CLI
  collapsed:: true
	- ```bash
	  aws autoscaling update-auto-scaling-group \
	  --auto-scaling-group-name my-asg \
	  --min-size 2 \
	  --max-size 10
	  
	  aws autoscaling set-desired-capacity \
	  --auto-scaling-group-name my-asg \
	  --desired-capacity 2 \
	  --honor-cooldown
	  ```