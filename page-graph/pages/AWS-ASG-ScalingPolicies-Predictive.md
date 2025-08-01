tags:: AWS-ASG-ScalingPolicies
date-created:: [[2024-Q4]]
- *[Predictive Scaling Policies](AWS-ASG-ScalingPolicies-Predictive)* scale capacity by analyzing historical load data
  id:: 675362d4-5804-4083-8273-33cafe42d440
- ---
- #### Requirements
	- 24 hour forecast of CloudWatch Data before policy creation
- ---
- #### Predictive Algorithm
	- The algorithm will continually *review* the last two weeks of data to adjust the policy
	- The algorithm will continually *produce* an hourly capacity forecast for the next 48 hours
	- The algorithm will continually *update* every 6 hours using the latest data
- ---
- #### Examples
	- [[code]] | ASG Predictive Scaling Policy | [[AWS-CLI]]
	  collapsed:: true
		- ```shell
		  aws autoscaling put-scaling-policy \
		  --policy-name my-policy \
		  --auto-scaling-group-name my-asg \
		  --policy-type PredictiveScaling \
		  --predictive-scaling-configuration file://config.json
		  ```
		- Forecast Only Config File
		  collapsed:: true
			- ```json
			  {
			    "MetricSpecifications": [{
			      "TargetValue": 40,
			      "PredefinedMetricPairSpecification": {
			        "PredefinedMetricType": "ASGCPUUtilization"
			      }
			    }],
			    "Mode": "ForecastOnly"
			  }
			  ```
		- Forecast and Scale Config File
		  collapsed:: true
			- ```json
			  {
			    "MetricSpecifications": [{
			      "TargetValue": 40,
			      "PredefinedMetricPairSpecification": {
			        "PredefinedMetricType": "ASGCPUUtilization"
			      }
			    }],
			    "Mode": "ForecastAndScale"
			  }
			  ```
-