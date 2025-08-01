tags:: AWS, SAA
date-created:: [[2024-Q4]]

	- The AWS API is how all Amazon Web Services are accessed.
	- ---
	- #### Authenticating
		- Setting Environment Variables (**Best Practice**)
		  collapsed:: true
			- The AWS SDK and CLI will automatically read from these environment variables.
			- ```bash
			  export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
			  export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
			  export AWS_DEFAULT_REGION=us-east-1
			  ```
		- ((67573c48-b042-4821-a8c8-155bd5372643))
		- ((67101125-3179-4392-90e8-0706489c3574))
	- ---
	- #### Accessing
		- AWS Management Console
		- [AWS SDK](AWS-SDK)
		- ((675362d4-d8c5-43ea-9b5b-34eb77f5c744))
		- HTTP Requests
		  collapsed:: true
			- HTTP Request Example (Direct Interaction)
			  collapsed:: true
				- ![image.png](../assets/image_1710172520802_0.png)
			- Requests will need to be signed manually when using HTTP
			  id:: 675362d4-e728-4780-a531-1cd2b7fe65c3
- #### Cards
	- [[card]] What must be done with HTTP Requests to the AWS CLI? | [[SAA]]
	  collapsed:: true
		- ((675362d4-e728-4780-a531-1cd2b7fe65c3))