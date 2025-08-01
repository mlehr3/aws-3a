tags:: AWS-Security
date-created:: [[2024-Q4]]
img:: ![image.png](../assets/image_1708455974022_0.png)
	- Amazon Certificate Manager provisions, manages, and deploys public & private SSL/TLS certificates for use with AWS services.
	- ACM handles the ocmplexity of creating and maanging SSL /TLS certificates for AWS based websites and applications.
	- Paused video of walkthrough @ 9:50
	- ---
	- #### Types of Certificates
		- Public - Provided by ACM - Free
		- Private - imported - $400/month
	- #### Configuration
		- [[graphic]] | AB reccomended setup for ACM, main domain i.e. `exampro.co` and a full wildcard subdomain i.e. `*.exampro.co`
		  collapsed:: true
			- ![image.png](../assets/image_1733846485211_0.png)
		- ACM can be attached to an [ELB]([[AWS-ELB]]), a [CloudFront Distribution]([[AWS-CF]]), Elastic Beanstalk, or an [API Gateway]([[AWS-Gateway]]).
		  id:: 67586610-7a73-4c4a-a29b-41a3ce667511
	- #### Architectures
		- tags:: arch
		- [[System]] | Terminating SSL at the Load Balancer | Fine in most practices
			- Traffic to the load balancer is encrypted
			- All Traffic past the Load balancer (all within your aws network) is unencrypted
			- Theoretically Low Risk
			- Pros:
				- You can add as many instances as you'd like without installing a certificate on each one.
			- [[graphic]] | Traffic is encrypted from the public internet, through Route53, until it hits the ALB, from there the `ACMCertificate` decrypts traffic as it makes it's way to EC2 Instances.
				- {{renderer :drawio, 1733847328402.svg}}
		- [[System]] | Terminating SSL End-to-End
		  id:: 67759a5f-c83d-488f-9736-1aefbbb13fb0
			- Traffic is encrypted in-transit all the way to the application
			- Pros:
				- Guarantees encryption end to end
			- Cons:
				- More complicated to maintain certificates
			- [[graphic]] | Traffic is encrypted from the public internet, through Route53 and the ALB until it reaches the instance, from there, a locally installed certificate decrypts traffic.
			  collapsed:: true
				- {{renderer :drawio, 1733847877576.svg}}
			-
- #### Cards
  collapsed:: true
	- [[card]] | What AWS Services can an ACM Certificate be attached to? | [[SAA]]
		- ((67586610-7a73-4c4a-a29b-41a3ce667511))
-