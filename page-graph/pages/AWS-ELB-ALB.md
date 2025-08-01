tags:: [[AWS-ELB]]
date-created:: [[2024-Q4]]
	- *[ALBs](AWS-ELB-ALB) are capable of routing based on HTTP information, can also leverage [WAF]([[AWS-WAF]])*
	  id:: 675372cf-0c78-46f5-a415-b1a1a24cf3b9
	- ---
	- #### Use Cases
		- Microservices & Containerized Applications
		- E-Commerce & Retail Websites
		- Corporate Websites & Web Applications
		- SaaS Applications
		- tags:: arch, inbox
	- #### General
		- ALB is designed to balance HTTP & HTTPS Traffic
		- Operate at Level 7 of the OSI Model
		- Can only be accessed by its hostname, if you need a static IP, forward an NLB to ALB
	- #### Features
		- ***Request Routing*** allows you to add routing rules to your listeners based on the HTTP Protocol
		  id:: 67507983-44f0-433b-8d53-bd053adca72b
		- Supports [[WebSockets]] and HTTP/2 for ***real-time, bidirectional communication applications***
		- It can handle ***authorization and authentication*** of HTTP requests (via [[AWS-Lambda]])
	- #### Integrations
		- [AWS Web Application Firewalls](AWS-WAF) can be placed in front of an ALB for ***OWASP Protection***
		- [AWS Certificate Manager](AWS-ACM) can be attached to listeners to ***serve HTTPS over custom domains***
		- [Amazon CloudFront]([[CloudFront]]) can be put in front of an ALB to improve HTTP caching
		- ((6650a8c3-7da0-4085-81bc-7c723e63e890)) can be put in front of an ALB for ***global availability***
		- [Amazon Cognito]([[AWS-Cognito]]) can be put in front of an ALB to authenticate users via incoming HTTP requests
-
-