tags:: AWS-Application_Integration
date-created:: [[2024-Q4]]
img:: ![image.png](../assets/image_1708439058799_0.png)
	-
	- *[EventBridge](AWS-EventBridge) is a serverless, event bus service, that saves time in AppInt, used to stream real-time data to applications.*
	  id:: 67510053-39b2-40ed-a734-d521d1c572b5
	- ---
	- #### About
		- Arch: ((65a6a12d-eb2f-4dd0-b9b0-2a4320542a4d))
		- *Formerly called Amazon CloudWatch Events*
	- ---
	- #### Terms
		- **Producers**: AWS services that emit events
		- **Partner Sources**: Third-party apps that can emit events
		- **Events**: Data emitted by services. JSON objects
		- **Event Bus**: Holds event data, defines rules
		- **Rules**: Determines what events to capture and pass to targets (100 rules/bus)
		- **Targets**: AWS Services that consume events (5 targets/rule)