tags:: API-Gateway, AWS-Application_Integration
date-created:: [[2024-Q4]]
url:: https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html
img:: ![image.png](../assets/image_1708438396369_0.png)
	- *[Amazon API Gateway](AWS-Gateway) is a solution for creating secure APIs at any scale in cloud environments.*
	  id:: 6750d683-9102-4b3c-8875-e4a179ed4628
	  collapsed:: true
		- API Gateway handles all the tasks involved in accepting and processing up to hundreds of thousands of concurrent API calls, including traffic management, authorization, and monitoring.
		- Allows you to track and control any usage of the API. Throttle requests to help prevent attacks.
		- Expose HTTPS endpoints to define a RESTful API.
		- Highly scalable (happens automatically) and cost effective.
		- Send each API endpoint to a different target.
		- Maintain Multiple Versions of your API.
	- ---
	- #### Types
		- *[Rest API (API Gateway V1)](AWS-Gateway-V1) is a full featured, higher cost version that can be used to create Private and Public APIs*
		  id:: 6750d9c7-d1bf-4969-8753-d889000b9c04
		- *[HTTP API (API Gateway V2)](AWS-Gateway-V2) is a limited, low latency, cost efficient version that can be used to create Public APIs*
		  id:: 6750da63-c154-46f9-b760-d0d8eb1f1b0c
		-
		- *[WebSockets API](((6750dc4e-0626-417f-b631-d3789e8dd533))) is for persistent connections for real-time use cases such as chat applications or dashboards*
	- ---
	- #### Architecture
	  collapsed:: true
		- [[Graphic]] | API Gateway Overview Architecture. Requests through HTTPS from various sources go through the gateway to access Lambda functions, DynamoDB, Kinesis, Containers, and other AWS Services or 3rd party applications
		  collapsed:: true
			- ![image.png](../assets/image_1708438443023_0.png)
- #### Cards
	- [[card]] | What is Amazon API Gateway? | [[CCP]]
	  id:: 7c1c3234-9c35-4b91-a294-6291adaf6b85
	  collapsed:: true
		- Solution for creating secure APIs at any scale
		- Create API endpoints and route them to AWS services
			- Access data, business logic, or functionality from back-end services
	- [[card]] | What is the Third type of Amazon API Gateway for real-time use cases | [[AWS-SAA]]
	  id:: 6750dc4e-0626-417f-b631-d3789e8dd533
	  collapsed:: true
		- WebSockets API