tags:: AWS-VPC
date-created:: [[2024-Q4]]
alias:: aws-route-table
img:: ![image.png](../assets/image_1719844887509_0.png)
	- *[Route Tables](AWS-VPC-RT) determine where to direct traffic within a VPC.*
	  id:: 67606543-22de-48cc-81ff-3b884c99ecff
	-
	- #### Configuration
		- A route table contains a set of routes.
		- [Subnets]([[AWS-VPC-Subnet]])
			- Each subnet in your VPC must be implicitly or explicitly associated with a route table.
			- A subnet can only be associated with one route table at a time.
			- Multiple subnets can be associated with one route table.
		- Main Route Table
			- Default Route Table created alongside every VPC which cannot be deleted.
			- [Subnets]([[AWS-VPC-Subnet]]) not explicitly associated with a route table will use the main route table.
		- **Destinations** can be set with a specific IPv4/IPv6 CIDR block, [catch all route](((675e1004-6acb-4c48-8882-5dd501ad4271))) , or a [managed prefix list]([[aws-ec2-managed-prefix-list]]). dynamodb....
		- ((6760749f-198e-457c-a4c0-4a03c6ea668a))
		-
		-
	- #### Use Cases
		- A Custom Route Table could be used if you needed specific subnets to route to a VPN and not an internet Gateway. [graphic](((6760674c-736a-424d-886c-ee2bce9632a8)))
	- #### Architecture
		- [[Graphic]] | Use of a custom route table for routing EC2 Traffic to a VPN
		  id:: 6760674c-736a-424d-886c-ee2bce9632a8
		  collapsed:: true
			- [image.png](../assets/image_1734371161866_0.png)
			- {{renderer :drawio, 1734372193424.svg}}
	-
	- [[gateway]]
	-
- #### Cards
  collapsed:: true
	- [[card]] | What is a Route Table? | [[CCP]]
	  collapsed:: true
		- ((67606543-22de-48cc-81ff-3b884c99ecff))