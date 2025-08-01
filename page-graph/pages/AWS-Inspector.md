tags:: AWS-Security
date-created:: [[2024-Q4]]
img:: ![image.png](../assets/image_1708455527160_0.png)
	- Hardening is the act of eliminating as many security risks as possible.
	- Hardening is common for Virtual Machines where you run a collection of security checks known as a security benchmark.
	- [AWS Inspector](AWS-Inspector) can run a variety of automated security benchmarks against EC2 instances and ECR Images to improve security and compliance of applications deployed on AWS.
	  id:: 6762e8ed-c272-4a89-acfc-a0ace19a2f54
	- ---
	- Can perform both **Network** and **Host** Assessments.
	- #### Process according to AB
		- Install AWS agent on EC2 Instances
		- Run an assessment for your assessment target
		- Review your findings and remediate security issues.
		- #### Benchmarks
			- A popular benchmark you can run is by CIS which has 699 Checks!
- #### Cards
	- [[card]] | What is AWS Inspector? | [[CCP]]
	  collapsed:: true
		- ((6762e8ed-c272-4a89-acfc-a0ace19a2f54))
		-