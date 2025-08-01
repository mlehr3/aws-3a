tags:: AWS-Containers, AWS-ECS, Django
date-created:: [[2024-Q4]]
	- *On AWS-ECR, make the registry immutable and create versioned tags for each container image and variant within the registry.*
- # Elastic Container Registry
- ### Structure
	- Serverless
	- A **registry** contains multiple repositories
		- Public and Private Registries
	- A **repo** contains multiple images
	- An **image** can have multiple tags
	- A **tag** points to a specific image version
		- E.g. 1.0, latest
	- Graphic:
		- ![image.png](../assets/image_1727899240502_0.png)
	-
- Store Manage and Deploy Docker Container Images
- Image Types:
	- Let's you store Docker and Open Container Initiative (OCI) Images
- Serverless
  card-last-score:: 1
  card-repeats:: 1
  card-next-schedule:: 2024-02-16T05:00:00.000Z
  card-last-interval:: -1
  id:: 66e0ba2a-fc4a-4733-b1d7-b53c35ed1c92
  card-ease-factor:: 2.5
  card-last-reviewed:: 2024-02-15T18:03:15.390Z
- Can be Used by:
  collapsed:: true
	- Elastic Container Service (ECS)
	- Fargate
	- Elastic Kubernetes Services
	- On-Premise
	-
- ### Features
	- Image Tag Immutability #card #aws-ecr
		- It is a best practice to use immutable tags
			- If there was a security vulnerability you could rollback to a previous image or preserve the history of vulnerabilities
		- `ImageTagAlreadyExistsException` error is returned if the tag already exists
		-
	- Controlling Access via Registry Policies #card #AWS-ECR
		- ```
		  ecr:ReplicateImage
		  ecr:BatchImportUpstreamImage
		  ecr:CreateRepository
		  ```
	- Controlling Access via **Repo Policy** #card #aws-ecr
		- ```
		  ecr:DescribeImages
		  ecr:DescribeRepositories
		  ```
	- Scan Images on push to identify software vulnerabilities
	- **Private image replication** allows you to have cross-account and cross-region images
	- Pull Through Cache #card
		- Create this to sync the contents of an upstream registry
	- Image Encryption #card #AWS-ECR
		- Encrypts image at-rest
		- Can set via standard encryption or via KMS
	- Image Lifecycle Rules #card #AWS-ECR
		- Automate the cleaning up of container images
		- Example:
			- ```json
			  {
			    "rules": [
			      {
			        "rulePriority": 1,
			        "description": "Expire images older than 14 days",
			        "selection": {
			          "tagStatus": "tagged",
			          "tagPatternList": ["prod*"],
			          "countType": "sinceImagePushed",
			          "countUnit": "days",
			          "countNumber": 14
			        },
			        "action": {
			        	"type": "expire"
			        }
			      }
			    ]
			  }
			  ```
	- Image Signing #card #AWS-ECR
		- Sign images via **AWS Signer** to ensure images can be trusted
	- Pushing Images to registry
		- Standard
			- ```shell
			  # Log into ECR
			  aws ecr get-login-password --region <region> | docker login \
			  --username AWS \
			  --password-stdin <ecr_uri>
			  
			  # Build Image
			  docker build -t my-image .
			  
			  # Tag Image
			  docker tag my-image:latest <ECR_URI>:latest
			  
			  # Push Image
			  docker push <ECR_URI>:latest
			  ```
			-
		- Easiest on linux
		- Give ec2_server power user status
		- Using Docker Compose
			- ```shell
			  # Log into ECR
			  aws ecr get-login-password --region <region> | docker login \
			  --username AWS \
			  --password-stdin <ecr_uri>
			  
			  # Build Image
			  docker-compose -f docker-compose.staging.yml build
			  
			  # Tag Image
			  # tagged within docker-compose 
			  
			  # Push Image
			  docker push <ECR_URI>:latest
			  ```
		- Defunct
		  collapsed:: true
			- For Django Projects go to ~/dev/django/django-images
			- Start Docker
			- ```shell
			  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 975557805779.dkr.ecr.us-east-1.amazonaws.com
			  
			  ```
	-
- ### Documentation
  collapsed:: true
	- [Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository)
- Fully-Managed repository for container images
-
- Different Images should be stored in their own repositories #Django #AWS-Containers
	- This should not be something managed by an individual project's terraform infrastructure, maybe just pulling the name down.
-