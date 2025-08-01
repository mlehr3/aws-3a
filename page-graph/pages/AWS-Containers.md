tags:: AWS, AWS-Compute
- Meta:
  collapsed:: true
	- Docker #card
	  tags:: CCP,  docker
		- Original open-source container platform
	- ((67c2143c-6ec9-406a-9108-b3d0ded8f610))
- Primary Services:
  collapsed:: true
	- [[AWS-ECS]]
	- Elastic Kubernetes Service (EKS) #card
	  tags:: AWS-Containers, CCP
	  icon:: ![image.png](../assets/image_1708351277534_0.png) 
	  use:: when you need to run Kubernetes as a service (managing microservices)
	  desc:: fully managed Kubernetes Service
		- Fully managed Kubernetes Service (open-source)
		- Avoid Vendor lock-in
		- Automates patching, node provisioning and updates
- Provisioning and Deployment Services:
  collapsed:: true
	- {{embed ((65c6b98d-7a1e-4580-b592-fb76b3618182))}}
	- App Runner #card
	  tags:: AWS-Containers, AWS-Provisioning, CCP
		- PaaS for containers
	- AWS Copilot CLI #card
	  tags:: AWS-Containers, AWS-Provisioning, CCP
		- Build, release, and operate production ready containerized applications on ((65a6b870-8c81-45e0-bb61-f6fdfd2a49a6)), ((65a6a91f-724e-48c8-a409-f768d7a44462)), and ((65a6a955-468a-48db-8907-6472f3d5ead5))
		- Makes things very easy
- Supporting Services:
	- X-Ray #card
	  tags:: AWS-Containers, CCP
		- Analyze and debug between microservices
	- AWS Step Functions #card
	- Bottlerocket #card
	  tags:: AWS-Containers, CCP
		- Linux-based open-source operating system built by AWS for running containers on VMs or bare-metal instances