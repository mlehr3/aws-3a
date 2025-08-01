tags:: aws-networking, [[blue-green-deployment]]
date-created:: [[2025-Q2]]
	- *[Route53](aws-route-53) is a domain registration service that can point URLs to specific AWS services.*
	  id:: 67ebee24-9f04-4096-8c8d-60f4de250cff
	- ---
	- [Record Sets] are a collection of records which determine where to send traffic
		- Record sets are always changed in batch via the API, much like other DNS services.
		- Route53 Supported Record Types
		  collapsed:: true
			- **A record type**
			- **AAAA record type**
			- **CAA record type**
			- **CNAME record type**
			- **DS record type**
			- **MX record type**
			- **NAPTR record type**
			- **NS record type**
			- **PTR record type**
			- **SOA record type**
			- **SPF record type**
			- **SRV record type**
			- **TXT record type**
		- Three action types
		  collapsed:: true
			- CREATE creates a resource record set with the specified values.
			- DELETE deletes an exiting resource record set with the specified values.
			- UPSERT  updates or creates a record set depending on if the resource set exists.
		- Route53 special Alias Record
		  collapsed:: true
			- Maps to latest dns address when a new one is available.
			- Can point to
				- [[CloudFront]]
				- Elastic Beanstalk environment
				- [ELB load balancer]([[AWS-ELB]])
				- [S3 website endpoint]([[S3-Websites]])
				- Resource record set
				- [VPC endpoint]([[AWS-VPC-Endpoint]])
				- [[AWS-Gateway]] Endpoint Custom regional API
				-
	- [Hosted Zones] are a container for record sets, scoped to route traffic for a specific domain or subdomains[^1].
		- Two Types - Public and Private Hosted Zones
		  collapsed:: true
			- Public Hosted Zones route traffic inbound from the Internet
			- Private Hosted Zones route traffic within an Amazon VPC.
		- [[example]] | SaaS product where each customer has their own subdomain on the app subdomain
		  collapsed:: true
			- e.g. mycustomer1.app.mysassapp.com || pw5k.artists.raptales.space #raptales
			- **Create a Hosted Zone for the Main Domain:**
				- Create a record set for the subdomain pointing to the nameservers of the subdomain.
			- **Create a Hosted Zone for the Subdomain (e.g., App):**
				- Create a record set for the wildcard to send traffic back to the root of the subdomain.
			- ```yaml
			  Resources:
			    DomainHZ:
			      Type: AWS::Route53::HostedZone
			      Properties:
			        Name: example.com
			  
			    SubdomainHZ:
			      Type: AWS::Route53::HostedZone
			      Properties:
			        Name: app.example.com
			  
			    RecordSet:
			      Type: AWS::Route53::RecordSet
			      Properties:
			        HostedZoneId: !Ref DomainHZ
			        Name: app.example.com
			        Type: NS
			        TTL: '300'
			        ResourceRecords: !GetAtt SubdomainHZ.NameServers
			  
			    WildcardRecordSet:
			      Type: AWS::Route53::RecordSet
			      Properties:
			        HostedZoneId: !Ref SubdomainHZ
			        Name: "*.app.example.com"
			        Type: A
			        ResourceRecords:
			          - "app.example.com."
			  ```
	- Traffic Flow - There is an expensive, visual traffic flow editor option
	- Routing Policies (8)
		- Simple Routing Policies select a random IP address when multiple are available.
		- Weighted Routing Policies distribute traffic based on weights assigned to resources.
		- Latency-Based Routing Policies direct traffic to the region with the lowest latency for the user.
		- Failover Routing Policies route traffic to a secondary endpoint if the primary is unhealthy.
		- Geolocation Routing Policies route traffic based on the user's location
		- Geoproximity Routing Policies route traffic based on resource location and optionally shift traffic from one region to another.
		- IP-Based Routing Policies route traffic based on the user's IP address.
			- Allows granular control by uploading user-IP-to-endpoint mappings to Route 53.
			- Useful for optimizing performance or reducing network costs by directing users from specific IP ranges or ISPs to designated endpoints.
		- Multi-Value Answer Routing Policies return up to 8 healthy records in response to a DNS query, selected at random
		-
		-
- #### Cards
	- [[card]] | What is the max number of healthy records a Multi-Value Answer Routing Policy will respond to a DNS query | [[SAA]]
	  collapsed:: true
		- 8 random chosen records
	- [[card]] | What is the difference between Route 53 Geoproximity Routing and Geolocation Routing? | [[SAA]]
	  collapsed:: true
		- Geolocation routes traffic based on the user's location
		- Geo proximity routes traffic based on the resource location.
	- [[card]] | Which Route 53 Routing Policy routes traffic to a secondary endpoint after a failed health check? | [[SAA]]
	  collapsed:: true
		- Failover Routing
	- [[card]] |  | [[SAA]]
- #### References
	- [^1]: AWS Solutions Architect Associate - ExamPro