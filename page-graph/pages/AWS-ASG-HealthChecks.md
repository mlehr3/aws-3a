tags:: AWS-ASG
date-created:: [[2024-Q4]]
- *Replace unhealthy instances via [Health Check Requirements](AWS-ASG-HealthChecks) from EC2 or ELB*
  id:: 6753750c-630d-49c1-98f9-fd14b3be2146
- ---
- #### EC2 Health Check
  id:: 674de28c-e308-4583-9408-66bd0cdc8a93
	- If EC2 fails either of its standard EC2 Health Checks, ASG will create a new healthy instance
- ---
- #### ELB Health Check
  id:: 674de2a7-63c9-40d9-8849-d1053618cde6
	- ASG will perform a health Check based on the ELB Health Check
	- ELB pings an HTTP endpoint at a specific path, port, and status code.
	- CLI Code:
	  collapsed:: true
		- ```bash
		  aws autoscaling update-auto-scaling-group \
		  --auto-scaling-group-name my-asg \
		  --health-check-type ELB \
		  --health-check-grace-period 600 \
		  --vpc-zone-identifier "subnet-xyz,subnet-fas, subnet-sdf"
		  ```
	- Diagram:
		- {{renderer :drawio, 1733157391425.svg}}
	- tags:: ELB-ASG
-