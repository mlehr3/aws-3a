tags:: AWS-VPC
alias:: NACL
date-created:: [[2024-Q4]]
img::  ![image.png](../assets/image_1719845020182_0.png)

	- *[Network Access Controls (NACLs)](AWS-VPC-NACL) act as a [stateless]([[Stateless-firewalls]]) (allow and deny rules) virtual firewall at the subnet level.*
	  id:: 675874eb-4be2-41d4-9a24-9e0381ef365b
	- #### Configuration
	  collapsed:: true
		- A [subnet]([[AWS-VPC-Subnet]]) can only belong to one NACL; subnets are *associated* with NACLs.
		- A default NACL is created with every VPC
		- Rule Parameters
			- Ingress, Egress
			- Allow, Deny
			- Traffic Type
			- Number:
			  collapsed:: true
				- order of evaluation: lowest-highest
				- 10-100 increments
					- leaves room to add more rules in later
				- highest is 32766
	- #### API Creation Process
		- Create NACL
		- Create NACL entry (rule)
		- Associate NACL with Subnet
	- #### Architecture
		- [[graphic]] | NACL allows internet traffic, but blocks a specific IP and a SSH traffic from reaching two public subnets with one instance in each.
		  collapsed:: true
			- {{renderer :drawio, 1733851313357.svg}}
	- ---
	- #### Use Cases
	  collapsed:: true
		- Block a specific IP address known for abuse
		  id:: 675875bc-34db-4da3-b24b-814908d1a931
	-
- #### Cards
  collapsed:: true
	- [[card]] | What is a NACL? | [[CCP]]
	  collapsed:: true
		- ((675874eb-4be2-41d4-9a24-9e0381ef365b))
	- [[card]] | What is a use case for a NACL? [[CCP]]
	  collapsed:: true
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2025-07-28T13:35:17.016Z
	  card-last-reviewed:: 2025-07-24T13:35:17.016Z
	  card-last-score:: 5
		- ((675875bc-34db-4da3-b24b-814908d1a931))
-
-