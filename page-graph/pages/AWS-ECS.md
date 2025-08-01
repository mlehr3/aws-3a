tags:: [[AWS-Containers]], [[containerization]]
date-created:: [[2024-Q3]]
- Elastic Container Service (ECS) #card
  tags:: AWS-Containers, CCP
  icon:: ![image.png](../assets/image_1708351114634_0.png)
  desc:: container orchestration services
  use:: when you need Docker aaS or you need to run containers
  id:: 6650a8c3-027b-41ba-bd56-ba75d8c31921
  collapsed:: true
	- Container orchestration service that supports Docker containers
	- Launches a cluster of server(s) on EC2 instances with Docker installed
	- No Cold Starts
	- Self-Managed EC2
	- Install ECS container agent on EC2 instances.
	- Must keep an EC2 service running even if you have no containers running
	- ECS Fargate #card
	  tags:: AWS-Containers, AWS-Serverless, CCP
	  icon:: ![image.png](../assets/image_1708351082853_0.png)
	  desc:: serverless container orchestration
	  id:: 6650a8c3-f70f-496b-be22-c3cd3724d4a1
	  collapsed:: true
		- Serverless container orchestration service
			- No longer have to **provision, configure, and scale** clusters of EC2 instances to run containers
		- Supports EC2 and EKS architectures
		- Create an **empty** ECS cluster (no EC2's provisioned) and then launch Tasks as Fargate
		- Pay on-demand for running containers
		- Cost:
			- Charged for at least 1 minute, then by the second
				- Pay based on duration and consumption
			- Scale to zero--cost
- ### Components of ECS
  collapsed:: true
	- ECS Cluster #card #AWS-ECS 
	  desc:: multiple EC2 instances which will house the docker containers
	- ECS Task Definition #card #AWS-ECS 
	  id:: 66a41676-815d-4379-a51d-e66c5fa3a491
	  desc:: describes everything about our task containers
	  collapsed:: true
		- A JSON file that defines the configuration of (up to 10) containers you want to run
		- Educational Example:
		  collapsed:: true
			- ```json
			  {
			    "family": "backend-flask",
			    "executionRoleArn": "arn:aws:iam::387543059434:role/CrudddurServiceExecutionRole",
			    "taskRoleArn": "arn:aws:iam::387543059434:role/CrudddurTaskRole",
			    "networkMode": "awsvpc",
			    "cpu": "256",
			    "memory": "512",
			    "requiresCompatibilities": [
			      "FARGATE"
			    ],
			    "containerDefinitions": [...]
			  }
			  ```
		- ECS Task Definition JSON File Structure #card  #AWS-ECS
		  collapsed:: true
			- **Family**: A way to group similar task definitions (versioning, 1 2 3 4), i.e. `backend-flask`
			  id:: 66a7e311-7871-4934-ae41-8e1d16e3c850
			- **[Execution Role]((66a40dd0-87da-41ba-918e-ea5389a1bf2c))**: The role used to prepare or manage the container
			- **[Task Role]((66a40e71-898b-46dc-863f-d165e7cf2063))**: The role that is used by the running compute of the container
			- **Network Mode**:
			  collapsed:: true
				- Host - most basic mode, connect directly to host machine
				- Bridge - isolate between containers but they can still communicate with each other
				- AWSVPC - creates an ENI in your VPC with a private IP address
					- **Fargate can only use this mode**
				- None - disable networking
			- **CPU and Memory**: How much memory and compute
			- **Requires Compatabilities**: what this task definitions is allowed to launch
			  collapsed:: true
				- `EC2` `FARGATE` `EXTERNAL`
			- **Container Definition** Defines the connection of containers to be provisioned on the compute
				- Example Image:
				  collapsed:: true
					- ![image.png](../assets/image_1722279510295_0.png)
				- **Name**: name of the container
				- **Image**: a URI to the container image e.g. ECR, DockerHub
				- **Essential**: There has to be one essential container. if this container fails, all containers fail
				- **Health Check**: Perform a health check
				- **Port Mappings**: Map the guest to host ports
				  collapsed:: true
					- **Bridge Mode**: Provides a level of isolation and security `guest ports != host ports`
					  collapsed:: true
						- container (guest) port maps to hosts different port
						- The guest and host ports can be different
						- ```json
						  "portMappings": [
						    {
						      "containerPort": <span style="color:red;">3000</span>,
						      "hostPort": <span style="color:red;">80</span>,
						      "protocol": "tcp"
						    }
						  ]
						  ```
					- **Host Mode**: `guest ports == host ports`
					  collapsed:: true
						- container (guest) port directly maps to the host's port
						- The  guest and host ports will be the same
						  collapsed:: true
							- You don't need to define the host port because it will be the same value
						- ```json
						  "portMappings": [
						    {
						      "containerPort": <span style="color:red;">80</span>,
						      "protocol": "tcp"
						    }
						  ]
						  ```
					- **AWSVPC Mode**: provides a network interface with a direct public IP; `guest ports == host ports`
					  collapsed:: true
						- Gives the container irs own network interface with a direct public IP
						- The guest and host port will be the same
						  collapsed:: true
							- You don't need to define the host port because it will be the same value
						- ```json
						  "portMappings": [
						    {
						      "containerPort": <span style="color:red;">80</span>,
						      "protocol": "tcp"
						    }
						  ]
						  ```
				- **Log Configuration**: Writes logs to AWS CloudWatch
				- **Environment**: env vars you want to set for your container
				- **Secrets**: Secrets pulled from Secrets Manager or SSM Parameter Store
				-
			-
			-
			- ****
	- ECS Task #card #AWS-ECS 
	  des:: short term containers
	  collapsed:: true
		- Launches containers defined in the Task Definition.
		- Tasks will stop once they've done their job.
		- ECS Task (Container Launcher) Lifecycle #card
		  graphic:: ![image.png](../assets/image_1722029355395_0.png)
		  collapsed:: true
			- Stage Definitions:
				- **Provisioning**: Additional steps before the task is launched.
				  background-color:: blue
					- **Example**: Launching and attaching **ENIs**.
				- **Pending**: Waiting on the container agent to take further action.
				  background-color:: purple
				- **Activating**: Perform additional steps after the task is launched but before it is running.
				  background-color:: yellow
				- **Running**: Task is successfully running.
				  background-color:: green
				- **Deactivating**: Perform additional steps before the task is stopped.
				  background-color:: yellow
				- **Stopping**: Waiting on the container agent to take further action.
				  background-color:: purple
				- **Deprovisioning**: Additional steps after the task has stopped.
				  background-color:: blue
					- **Example**: Detaching and deleting **ENIs**.
				- **Stopped**: Task has been successfully stopped.
				  background-color:: red
				- **Deleted**: Transition state when a task stops.
				  background-color:: red
	- ECS Services #card #AWS-ECS 
	  desc:: continuously running containers
	  collapsed:: true
		- e.g. web app
	- Container Agent #card #AWS-ECS 
	  desc:: binary on each EC2 instance which monitors, starts, and stops tasks
	- ECS Controller / Scheduler #card #AWS-ECS 
	  desc:: keeps containers operational
		- Responsible for scheduling the deployment and placement of your containers
		- Replaces unhealthy containers
		- *You can use your own or a third party scheduler*
- ### Roles
  collapsed:: true
	- The execution role is used during deployment, while the task role is used by the running container
	- ECS Execution Role #card #AWS-ECS #[[AWS-IAM]]
	  desc:: the role used to prepare or manage the container
	  use:: when your'e actually deploying or managing the compute itself
	  id:: 66a40dd0-87da-41ba-918e-ea5389a1bf2c
	  collapsed:: true
		- Common Permissions:
			- Access to Secrets Manager or SSM Parameter Store
			- Access to download private image from ECR
			- Full Access to CloudWatch logs
		- Example CFN Script:
		  collapsed:: true
			- ```
			  ExecutionRole:
			    Type: AWS::IAM::Role
			    Properties:
			      RoleName: CrudduServiceExecutionRole
			      AssumeRolePolicyDocument:
			        Version: '2012-10-17'
			        Statement:
			          - Effect: 'Allow'
			            Principal:
			              Service: 'ecs-tasks.amazonaws.com'
			            Action: 'sts:AssumeRole'
			      Policies:
			        - PolicyName: 'cruddu-execution-policy'
			          PolicyDocument:
			            Version: '2012-10-17'
			            Statement:
			              - Sid: 'VisualEditor0'
			                Effect: 'Allow'
			                Action:
			                  - 'ecr:GetAuthorizationToken'
			                  - 'ecr:BatchCheckLayerAvailability'
			                  - 'ecr:GetDownloadUrlForLayer'
			                  - 'ecr:BatchGetImage'
			                  - 'logs:CreateLogStream'
			                  - 'logs:PutLogEvents'
			                Resource: '*'
			              - Sid: 'VisualEditor1'
			                Effect: 'Allow'
			                Action:
			                  - 'ssm:GetParameters'
			                  - 'ssm:GetParameter'
			                Resource: !Sub
			                  - 'arn:aws:ssm:${AWS::Region}:${AWS::AccountId}:parameter/cruddu/${ServiceName}/*'
			      ManagedPolicyArns:
			        - 'arn:aws:iam::aws:policy/CloudWatchLogsFullAccess'
			  ```
			- ![image.png](../assets/image_1722027627433_0.png)
	- ECS Task Role #card #AWS-ECS #[[AWS-IAM]]
	  desc:: the role that is used by the running compute of the container
	  use:: when the task is running and it wants access to other AWS services
	  id:: 66a40e71-898b-46dc-863f-d165e7cf2063
	  collapsed:: true
		- Common Permissions:
			- Access to SSM Messages for ECS Exec
			- CloudWatch Logs Full access so container can log
				- what if you couldn't look at `docker-compose logs`? #Django
			- XRay Daemon Write Access so Xray can be used for traceability
		- Example CFN Script:
		  collapsed:: true
			- ```
			  TaskRole:
			    Type: AWS::IAM::Role
			    Properties:
			      RoleName: CrudduServiceTaskRole
			      AssumeRolePolicyDocument:
			        Version: '2012-10-17'
			        Statement:
			          - Effect: 'Allow'
			            Principal:
			              Service: 'ecs-tasks.amazonaws.com'
			            Action: 'sts:AssumeRole'
			      Policies:
			        - PolicyName: 'cruddu-task-policy'
			          PolicyDocument:
			            Version: '2012-10-17'
			            Statement:
			              - Sid: 'VisualEditor0'
			                Effect: 'Allow'
			                Action:
			                  - 'ssmmessages:CreateControlChannel'
			                  - 'ssmmessages:CreateDataChannel'
			                  - 'ssmmessages:OpenControlChannel'
			                  - 'ssmmessages:OpenDataChannel'
			                Resource: '*'
			      ManagedPolicyArns:
			        - 'arn:aws:iam::aws:policy/CloudWatchLogsFullAccess'
			        - 'arn:aws:iam::aws:policy/AWSXRayDaemonWriteAccess'
			  ```
			- ![image.png](../assets/image_1722027829585_0.png)
- ### Scaling Infrastructure with ECS Capacity Providers
	- ECS Capacity Providers #card #AWS-ECS 
	  desc:: manage the scaling of infrastructure for tasks in your clusters
		- **Each cluster** can have **one or more capacity providers** and an optional capacity provider strategy.
		- **Fargate** has two predefined capacity providers (**FARGATE** and **FARGATE SPOT**), or you can create your own custom capacity provider.
	- #### AWS CLI Examples
		- Fargate Capacity Provider #card #AWS-ECS #Fargate
			- Creation:
			  collapsed:: true
				- ```sh
				  aws ecs create-capacity-provider \
				  --name FargateCapacityProvider \
				  --auto-scaling-group-provider managedScaling={"status": "ENABLED", "targetCapacity": 100} \
				  --auto-scaling-group-provider managedTerminationProtection="ENABLED"
				  ```
			- Cluster Level Configuration:
			  collapsed:: true
				- ```sh
				  aws ecs put-cluster-capacity-providers \
				  --cluster example-cluster \
				  --capacity-providers FargateCapacityProvider FARGATE FARGATE_SPOT \
				  --default-capacity-provider-strategy capacityProvider="FARGATE_SPOT",weight=1,base=0 \
				  capacityProvider="Fargate", weight=1
				  ```
			- Task Level Configuration:
			  collapsed:: true
				- ```sh
				  aws ecs create-service \
				  # ...
				  --capacity-provider-strategy capacityProvider="FARGATE_SPOT",weight=1 \
				  capacityProvider="FARGATE",weight=1
				  ```
			- ECS EC2 Capacity Provider #card #AWS-ECS
			  collapsed:: true
				- Creation (ASG and Attached Capacity Provider):
				  collapsed:: true
					- ```sh
					  aws autoscaling create-auto-scaling-group --min-size 1 --max-size 10 --desired-capacity 2 \
					  # and other ASG flags...
					  
					  aws ecs create-capacity-provider \
					  --name MyEC2CapacityProvider \
					  --auto-scaling-group-provider autoScalingGroupArn=ASG_ARN,\ 
					  managedScaling={"status":"ENABLED","targetCapacity":75},managedTerminationProtection="ENABLED"
					  ```
				- Cluster Level Configuration:
				  collapsed:: true
					- id:: 66a41322-cef4-4ff5-94f7-45c50d618c4b
					  ```sh
					  aws ecs put-cluster-capacity-providers \
					  --cluster my-cluster \
					  --capacity-providers MyEC2CapacityProvider \
					  --default-capacity-provider-strategy capacityProvider="MyEC2CapacityProvider",weight=1,base=1
					  ```
				- Task Level Configuration:
				  collapsed:: true
					- ```sh
					  aws ecs create-service \
					  # ...
					  --capacity-provider-strategy capacityProvider="MyEC2CapacityProvider",weight=1,base=1
					  ```
- ((6650a8c3-f70f-496b-be22-c3cd3724d4a1))
  collapsed:: true
	- Networking:
	  collapsed:: true
		- Must use `awslogs` networking mode
		- You will have an ENI in the VPC per task group
		- Elastic Load Balancers:
			- **Use IP addresses** since Fargate Tasks do not have hostnames
			- Architecture Diagram Graphic (ECS vs Fargate within an ASG):
			  collapsed:: true
				- ![image.png](../assets/image_1718032538432_0.png)
			-
	- Configuring Fargate Tasks:
		- Define memory and vCPU
			- ![image.png](../assets/image_1718033407151_0.png)
		- Add containers and allocate memory and vCPU for each
		- Define VPC and subnet when running the task
		- Apply Security Group to Task
		- Apply IAM role to the Task
- ### ECS Exec
  collapsed:: true
	- ECS Exec #card 
	  desc:: directly interact with containers (like `docker-compose exec`)
	  collapsed:: true
		- No need to first interact with the host operating system, open inbound ports, or manage SSH keys
		- Works with bothe ECS EC2 containers as well as ECS Fargate Containers
		- **Limitations and Rules**:
		  collapsed:: true
			- ECS Exec commands are run as root.
			- ECS Exec commands cannot be executed via the AWS Management Console.
				- **You must use a terminal.**
			- ECS Exec session has an idle timeout time of **20 minutes**.
			- ECS Exec must be turned on at the launch of a task.
				- **ECS Exec cannot be turned on for existing run tasks.**
		- **Prerequisites**:
		  collapsed:: true
			- AWS CLI installed
			- Sessions Manager Plugin installed
			- Task role must have **permission**:
				- ```json
				    {
				      "Version": "2012-10-17",
				      "Statement": [{
				        "Effect": "Allow",
				        "Action": [
				          "ssmmessages:CreateControlChannel",
				          "ssmmessages:CreateDataChannel",
				          "ssmmessages:OpenControlChannel",
				          "ssmmessages:OpenDataChannel"
				        ],
				        "Resource": "*"
				      }]
				    }
				  ```
			- You must meet version requirements for ECS or Fargate
	- To avoid Zombie SSM in Task Definition
	  collapsed:: true
	  ((66a41676-815d-4379-a51d-e66c5fa3a491))
		- ```json
		  "containerDefinitions": [{
		    // ....
		    "linuxParameters": {
		      "initProcessEnabled": true
		    }
		  }],
		  ```
	- Turn on ECS Exec when creating the service #card
	  collapsed:: true
		- ```sh
		  aws ecs create-service \
		  # ... other flags \
		  --enable-execute-command
		  ```
	- Use ECS Exec to remotely execute a command #card
	  collapsed:: true
		- ```sh
		  aws ecs execute-command \
		  --cluster cluster-name \
		  --task task-id \
		  --container container-name \
		  --interactive command "/bin/sh"
		  ```
-