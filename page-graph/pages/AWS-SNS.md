id:: 6750eb5e-41f7-4729-8165-731921a02ef9
tags:: AWS-Application_Integration
date-created:: [[2024-Q4]] 
alias:: SNS, 
graphic::  ![image.png](../assets/image_1708438029837_0.png)
	- *[Amazon SNS](AWS-SNS) is a fully managed [publish-subscribe](PubSub) communication system*
	  id:: 67511493-aab0-4ef5-abc9-3dd0c15e4c0c
	- ---
	- #### About
		- Highly available, durable, secure, fully managed
		- Allows for decoupling of microservices, distributed systems, and serverless applcations
		- *Less powerful than Kinesis*
	- ---
	- #### Architecture
		- ((6750fb22-f610-4402-ae6d-747d98a10433))
		- [[Graphic]] | Publishers push items to SNS where they are filtered to topics that subscribers like SQS, Lambda, or HTTPS can subscribe too
		  collapsed:: true
			- ![image.png](../assets/image_1708438215424_0.png)
	- ---
	- #### Cards
		- [[card]] | What messaging pattern does SNS use? | [[CCP]]
		  id:: 664760f1-3cd6-4d4c-85f3-c1220ba95149
		  collapsed:: true
			- Pub-sub (Publish-Subscribe) messaging system