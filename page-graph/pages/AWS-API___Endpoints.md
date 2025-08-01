tags:: AWS-API, AWS
date-created:: [[2024-Q4]]
- AWS Service Endpoints #card #AWS-API/Endpoints #AWS-SAA
	- **To connect programmatically to an AWS Service, you use an endpoint**
	- An *endpoint* is the URL of the entry point for an AWS web service
- Service Endpoint General Format #card
  collapsed:: true
	- Varies by service
	- `protocol://service-code.region-code.amazonaws.com`
	- `https://cloudformation.us-east-2.amazonaws.com`
	- TLSv2 is expected (older versions might be supported)
- #### Types of Service Endpoints:
  collapsed:: true
	- Four Types of Endpoints #card #AWS-API/Endpoints #AWS-SAA
		- **Global Endpoints** - AWS Services that use the same endpoint across regions
		- **Regional Endpoints** - AWS Services that require specification of a region
		- **FIPS Endpoint** - Some endpoints support FIPS for enterprise use
		- **Dualstack Endpoints** - Allows IPV6 or IPV4
	- Types are not mutually exclusive, an endpoint can be Regional, FIPS, and Dualstack #card
	  tags:: AWS-API/Endpoints, AWS-SAA
	- Services may have multiple endpoints #card #AWS-API/Endpoints #AWS-SAA
		- AWS CLI and AWS SDK will automatically use the default endpoint for each service in an AWS Region.
-