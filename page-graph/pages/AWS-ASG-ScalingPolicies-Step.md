tags:: AWS-ASG-ScalingPolicies
date-created:: [[2024-Q4]]
- *[Step Scaling Policies](AWS-ASG-ScalingPolicies-Step)* change capacity based on specific thresholds
  id:: 675362d4-b0a9-4ea3-b114-0f27c7c36c87
- ---
- #### Examples
	- [[code]] | ASG Step Policy | [[AWS-CLI]]
	  collapsed:: true
		- ```shell
		  aws autoscaling put-scaling-policy \
		    --auto-scaling-group-name my-asg \
		    --policy-name my-step-scale-out-policy \
		    --policy-type StepScaling \
		    --adjustment-type PercentChangeInCapacity \
		    --metric-aggregation-type Average \
		    --step-adjustments MetricIntervalLowerBound=0.0,MetricIntervalUpperBound=15.0,ScalingAdjustment=10 \
		                       MetricIntervalLowerBound=15.0,MetricIntervalUpperBound=25.0,ScalingAdjustment=20 \
		                       MetricIntervalLowerBound=25.0,ScalingAdjustment=30 \
		    --min-adjustment-magnitude 1
		  ```
		- **Adjustment Type**: PercentChangeInCapacity
		- **Metric Aggregation Type**: Average
		- **Step Adjustments**:
			- If metric is between 0.0 and 15.0, scale by 10%
			- If metric is between 15.0 and 25.0, scale by 20%
			- If metric is above 25.0, scale by 30%
		- **Minimum Adjustment Magnitude**: 1
- ---
- #### Important Terms
	- **Step Scaling Policies**: Adjusts the number of instances in an ASG based on specific metric thresholds.
	- **CloudWatch Alarm**: Triggers scaling actions when specified metric thresholds are met.
	- **PercentChangeInCapacity**: Type of adjustment that changes the capacity by a percentage of the current group size.
	- **MetricIntervalLowerBound**: Lower bound of the metric value for the scaling step.
	- **MetricIntervalUpperBound**: Upper bound of the metric value for the scaling step.
	- **ScalingAdjustment**: The amount of adjustment to be made when the threshold is crossed.
- ---
-