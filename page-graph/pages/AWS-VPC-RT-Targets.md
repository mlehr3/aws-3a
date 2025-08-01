tags:: AWS-VPC-RT
date-created:: [[2024-Q4]]
	- *[Route Table Targets](aws-vpc-rt-targets) specify* ***where*** *the request should be routed; a target can be local or to other AWS services.*
	  id:: 6760749f-198e-457c-a4c0-4a03c6ea668a
	- ---
	- Local - default local route is undeletable
	- #### AWS Service Targets
		- Internet Gateway (IGW) - ingress and egress connections to the internet for IPv4 and v6. | ((6682be17-c242-4e42-8857-cd70bb6e3eb6))
		- Virtual Private Gateway (VPG) - out to a private connection to an on-premise network
			- [[home/network]] / [[iot]]
			- ((6682be89-7b9f-4bca-84bb-bbbadbdb4eee))
		- Nat Gateway - egress connections for private instances out to the internet for IPv4.
			- Not needed for [[IPv6]], because all IPv6 addresses are public.
			- ((675e1004-c8a4-4f50-b765-a2ade46f46fa))
		- Egress Only Internet Gateway - egress connections for private instances out to the internet for [[IPv6]].
		  id:: 67607335-a1ac-4f90-bb7a-90e7e4422390
			- ((675e1004-f380-443f-a3b3-b1d00cd09db7))
			- [[AWS-VPC-GW-Egress-Only]]
			-
		- Instance - specific instance network permissions [[EC2-Instance]]
		- Network Interface (ENI) - out to a specific Elastic Network Interface.
		- [Carrier Gateway]([[AWS-VPC-GW-Carrier]]) - out to aws partnered carrier networks via ((675e1003-c477-4e29-bfe2-566e9ab025cb))
		  id:: 6760738a-a337-4bfa-99bb-9b7a4c116a7f
		- Core Network - Wide area networking (WAN) via AWS-Cloud-WAN
		- [Gateway Load Balancer]([[AWS-ELB-GWLB]]) Endpoint - out to a GWLB for third-party virtual appliances.
		- Outposts Local Gateway - From an ((65ca31ea-b043-4fab-b6c4-3b507b382797))
		- Another VPC via a [peering connection](((6682c38d-0481-4b52-b9da-b120ef9da22d)))
		- Transit Gateway (TGW) - transit hub for connecting mulriple VPC's and on-premises networks
		-