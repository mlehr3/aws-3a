tags:: AWS, Data Engineering
alias:: AWS-Databases

- ## Database Hosting Services:
	- ### NoSQL Databases:
		- DynamoDB #card
		  id:: 5a12b211-fa77-4ba0-a327-5dda6ccba8f8
		  tags:: AWS-Database, DynamoDB, AWS-Serverless, CCP, Database
		  icon:: ![image.png](../assets/image_1708353837665_0.png)
		  desc:: serverless NoSQL key/value and document database
		  use:: when you want a massively scalable database
		  collapsed:: true
			- Amazon **serverless** NoSQL key/value & document database.
			- Designed to scale to **billions** of records with guaranteed consistent data return in at least a second
				- All of Amazon marketplace is on DynamoDB
			- AWS's flagship database service
		- DocumentDB #card
		  tags:: AWS-Database, CCP
		  icon:: ![image.png](../assets/image_1708353903432_0.png)
		  use:: when you want a MongoDB document database
		  collapsed:: true
			- NoSQL document database that is "MongoDB compatible"
		- Amazon Keyspaces #card
		  tags:: AWS-Database, CCP
		  icon:: ![image.png](../assets/image_1708353951526_0.png)
		  use:: When you want to use Apache Cassandra
		  collapsed:: true
			- Fully managed Apache Cassandra database
	- ### Relational Databases:
		- [[card]] | Relational Database Service (RDS) [[CCP]] 
		  id:: c3576a24-f7c9-4c66-a9d2-ce9e171940b8
			- icon:: ![image.png](../assets/image_1708354040961_0.png)
			- Relational database service that supports multiple SQL engines.
				- MySQL, MariaDB, Postgres, Oracle, Microsoft SQL Server, Aurora
			- Relational is synonymous with SQL and Online Transactional Processing (OTP)
		- Aurora #card
		  tags:: AWS-Database, CCP, database
		  icon:: ![image.png](../assets/image_1708354076491_0.png)
		  use:: When you want a highly available, durable, scalable, and secure relational database for Postgres or MySQL
		  id:: b733dce5-70b1-44c9-8f19-eb484edbdb17
			- Fully managed database of either MySQL (5x faster) or PSQL (3x faster) database
			- Aurora Serverless #card
			  id:: 4eb09e6d-44ee-4eb7-82c5-59ac1bec60de
			  tags:: AWS-Database, CCP
			  use:: When you want most of the benefits of Aurora but can trade to have cold starts or you don't have lots of traffic demand
	- ### Other Databases:
	  collapsed:: true
		- Amazon Timestreams #card
		  tags:: AWS-Database, CCP, Database
		  icon:: ![image.png](../assets/image_1708354476017_0.png)
		  desc:: fully managed time-series database 
		  use:: When you need to measure how things change over time
			- Fully managed time-series database.
			- Good for devices that send lots of data that are time sensitive like science or IOT devices.
		- Neptune #card
		  tags:: AWS-Database, CCP, Database
		  icon:: ![image.png](../assets/image_1708354373852_0.png)
		  desc:: managed graph database
		  use:: When you need to understand the connections between data
		  collapsed:: true
			- Managed graph database. Data is represented as interconnected nodes
		- Amazon Quantum Ledger Database #card
		  tags:: AWS-Database, CCP, Database, AWS-Blockchain
		  icon:: ![image.png](../assets/image_1708354519643_0.png) 
		  use:: When you need to record history of financial activities that can be trusted
			- Fully managed ledger database that provides transparent, immutable, and cryptographically variable transaction logs
- ## Database Support Services:
	- ### Hybrid Computing:
	  collapsed:: true
		- RDS on VMware #card
		  tags:: AWS-Database, CCP
		  desc:: ![image.png](../assets/image_1708354162254_0.png) 
		  use:: When you want databases managed by ((c3576a24-f7c9-4c66-a9d2-ce9e171940b8)) in your own datacenter
			- Allows you to deploy RDS supported engines on an on-premise data-center
			- The datacenter must be using VMware
	- ### Analytics:
	  collapsed:: true
		- [[AWS-Redshift]]
		-
	- ### Performance:
	  collapsed:: true
		- ElastiCache #card
		  tags:: AWS-Database, CCP
		  icon:: ![image.png](../assets/image_1708354264234_0.png)
		  desc:: managed Redis or Memcached in-memory & caching database
		  use:: When you need to improve the performance of an application
		  collapsed:: true
			- Cache layer in-front of web-server or database
			- Managed database of the in-memory and caching open-source databases **Redis** or **Memcached**
	- ### Fault Tolerance:.
	  collapsed:: true
		- RDS Multi-AZ #card
		  id:: 4a57a480-8395-430b-9679-d6c89d53ec02
		  tags:: AWS-Database, CCP
		  desc:: allows you to run a duplicate standby database in another availability zone:
			- Allows you to run a duplicate standby database in another availability zone
			- Increases Fault Tolerance
	- ### Migration:
	  collapsed:: true
		- Database Migration Service (DMS) #card
		  id:: 5197e1ff-a380-4ab6-ac8e-4b7e8b47c35f
		  tags:: AWS-Database, CCP
		  icon:: ![image.png](../assets/image_1708354329797_0.png)
		  desc:: transfers data between many different types of databases
		  collapsed:: true
			- on-premise to AWS
			- from an SQL to NoSQL database
			- from two databases in different or same AWS accounts with different SQL engines
				- Possible Sources
				  collapsed:: true
					- Oracle Database
					- Microsoft SQL
					- MySQL
					- MariaDB
					- PostgreSQL
					- MongoDB
					- SAP ASE
					- IMDB Db2
					- Azure SQL Database
					- Amazon RDS
					- Amazon S3 (database dump)
					- Amazon Aurora
					- Amazon Document DB
				- Possible Targets
					- Oracle Database
					- Microsoft SQL
					- MySQL
					- MariaDB
					- PostgreSQL
					- Redis #card
					  id:: 65e1f72e-e2df-47b2-b805-c4ba9c18cad0
						- Dragonfly as a drop-in replacement
					- SAP ASE
					- [Amazon Redshift]([[AWS-Redshift]])
					- Amazon RDS
					- Amazon DynamoDB
					- Amazon S3 (database dump)
					- Amazon Aurora
					- Amazon OpenSearch Service
					- Amazon ElastiCache for Redis ((65e1f72e-e2df-47b2-b805-c4ba9c18cad0))
					- Amazon Document DB
					- Amazon Neptune
					- Apache Kafka
			- **AWS Schema Conversion Tool**