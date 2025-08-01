filters:: {"aws-business" true, "aws-quicksight" false}
tags:: AWS
date-created:: [[2024-Q1]]

	- AWS Analytics ...
	- ---
	- #### Data Streams
	  collapsed:: true
		- ((67510610-fb81-432b-97e4-1afd66a1d42e))
	- #### Data Analysis Services
	  collapsed:: true
		- ((675722d6-9f37-484d-858d-e42234a4cd28))
		- ((675729f2-df09-46ac-b36c-bbb10efcd114))
		- ((67572c68-c179-4d79-b137-2402aaba29f7))
		-
	- #### Data Transportation Services
	  collapsed:: true
		- ((67572e5c-47de-4aa8-93fa-4cadc765144c))
		- ((67573213-d038-4707-a3af-9a2853f565d5))
- ## Services
	- ### Hosted App Add-ons
	  collapsed:: true
		- #### Search Functionality
			- Amazon CloudSearch #card
			  id:: 65d4ffcb-e2a5-4823-bdfa-d3051d522a43
			  tags:: AWS-Analytics, CCP
			  icon:: ![image.png](../assets/image_1708458076307_0.png)
			  desc:: serverless search text service
				- Fully managed full-text search service
			- Amazon OpenSearch Service #card
			  tags:: AWS-Analytics, CCP
			  icon:: ![image.png](../assets/image_1708458206301_0.png)
			  desc:: self-hosted open-source website search engine
			  card-last-interval:: 4
			  card-repeats:: 1
			  card-ease-factor:: 2.6
			  card-next-schedule:: 2024-03-11T01:51:44.759Z
			  card-last-reviewed:: 2024-03-07T01:51:44.760Z
			  card-last-score:: 5
				- Open-source full-text search engine
				- More robust than ((65d4ffcb-e2a5-4823-bdfa-d3051d522a43)) but requires more server and operational maintenance
	- ### Data Streams
		- #### Amazon Kinesis
		  collapsed:: true
			- [[AWS-Kinesis]]
			  collapsed:: true
				- Amazon Kinesis Data Streams #card
				  tags:: AWS-Analytics, CCP
				  icon:: ![image.png](../assets/image_1708459611586_0.png)
				  desc:: serverless data stream service
				  id:: 6650a8c2-945e-4c78-823a-34b638fbed98
				  collapsed:: true
					- Serverless and simpler version of ((4d452b0b-0af1-4c2f-b2a7-fd1a7ef86a0c))
					- Capture, process, and store data streams at any scale
					- Run queries against data flowing through stream
				- Amazon Kinesis Video Streams #card
				  tags:: AWS-Analytics, CCP
				  icon:: ![image.png](../assets/image_1708459956697_0.png)
				  desc:: analyze and process real-time video
				  card-last-interval:: 4
				  card-repeats:: 1
				  card-ease-factor:: 2.36
				  card-next-schedule:: 2024-04-12T20:29:57.887Z
				  card-last-reviewed:: 2024-04-08T20:29:57.888Z
				  card-last-score:: 3
				- Kinesis Firehose #card
				  tags:: AWS-Analytics, CCP
				  icon:: ![image.png](../assets/image_1708459305905_0.png)
				  desc:: data stream routing service
				  id:: 6650a8c2-5403-466b-ad95-13f279ebf61d
				  collapsed:: true
					- Pay-on-demand based on how much data is consumed through the stream and you don't worry about the underlying servers
		- #### Amazon x Apache
			- Apache Flink services
			- Apache Kafka: open-source platform for building data pipelines and applications. (More robust Amazon Kinesis)
	- ### Other
	  collapsed:: true
		- AWS Lake Formation #card
		  tags:: AWS-Analytics, CCP
		  icon:: ![image.png](../assets/image_1708460762640_0.png)
		  desc:: repository for raw data until it's needed
			- Centralized, curated, and secured repository that stores all your data
			- A data lake is a storage repository that stores vast amounts of raw data in its native format until it's needed
		- AWS Data Exchange #card
		  tags:: AWS-Analytics, CCP
		  icon:: ![image.png](../assets/image_1708460859978_0.png) 
		  desc:: catalog of third-party datasets
- #### Cards
	- [[card]] | What is Amazon Athena? | [[CCP]]
	  collapsed:: true
		- {{embed ((67572aeb-8fac-4eff-8ede-2b4248d3e1dc))}}
	- [[card]] What is Amazon QuickSight? | [[CCP]]
	  collapsed:: true
		- ((675722d6-9f37-484d-858d-e42234a4cd28))
	- [[card]] | What is AWS Data Pipelines? | [[CCP]]
	  collapsed:: true
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2025-06-10T15:50:33.096Z
	  card-last-reviewed:: 2025-06-06T15:50:33.096Z
	  card-last-score:: 3
		- ((67572e5c-47de-4aa8-93fa-4cadc765144c))
	-