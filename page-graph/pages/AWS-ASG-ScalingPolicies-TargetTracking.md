tags:: AWS-ASG-ScalingPolicies
date-created:: [[2024-Q4]]
- *[Target Tracking Scaling Policies](AWS-ASG-ScalingPolicies-TargetTracking)* change capacity based on a specific metric
  id:: 675362d4-2c8d-4171-88cb-1b111208cd0b
- ---
- #### Metric Types
	- `ASGAverageCPUUtilization`
	- `ASGAverageNetworkIn`
	- `ASGAverageNetworkOut`
	- `ALBRequestCountPerTarget`
	- Custom Metrics
- ---
- #### Examples
	- [[code]] | ASG Target Tracking Scaling Policy | [[AWS-CLI]]
	  collapsed:: true
		- ```shell
		  aws autoscaling put-scaling-policy \
		  --policy-name cpu50-target-tracking-policy \
		  --auto-scaling-group-name my-asg \
		  --policy-type TargetTrackingScaling \
		  --target-tracking-configuration file://config.json
		  ```
		- ```json
		  {
		    "TargetValue": 50.0,
		    "PredefinedMetricSpecification":
		    	{
		        "PredefinedMetricType": "ASGAverageCPUUtilization"
		      }
		  }
		  ```
-