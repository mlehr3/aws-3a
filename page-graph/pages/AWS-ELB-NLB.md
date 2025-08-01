tags:: [[AWS-ELB]]
date-created:: [[2024-Q4]]
	- *[NLBs](AWS-ELB-NLB) are designed for optimum network performance and for large throughput of low-level traffic (TCP/UDP)*
	  id:: 6753734f-a4c9-4741-a66f-8dd5fd62d7a5
	- ---
	- #### Use Cases
		- High-Performance Computing & Big Data Applications
		- Real-Time and Multiplayer Gaming Platforms
		- Financial Trading Platforms
		- IoT & Smart Device Ecosystems
		- Telecommunications Networks
		- tags:: arch, inbox
	- #### General
		- NLB is designed to balance TCP/UDP
		- Operates at Layer 4 of the OSI Model
		- Can handle ***millions of requests per second*** while maintaining extremely low latency
	- #### Features
		- Preserves the client source IP
		- Provides a static IP address for a load balancer
		- AWS Global Accelerator can be put in front of an NLB for ***global availability***
-
-