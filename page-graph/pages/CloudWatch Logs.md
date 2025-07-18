desc:: monitor, store and access your log files

- Log Security
	- By default, log groups are encrypted at rest using SSE.
	- You can use your own Customer Master Key (CMK) with AWS KMS.
- Log Filtering
	- Logs can be filtered using a Filtering Syntax.
	- CloudWatch Logs includes a sub-service called CloudWatch Insights.
- Log Retention
	- By default, logs are **kept indefinitely and never expire**.
	- You can adjust the retention policy for each log group:
		- Keep the indefinite retention.
		- Choose a retention period between 1 day to 10 years.
- ## Services
	- **Log Groups** - A collection of log streams
	  collapsed:: true
		- grouped by forward slash syntax `/` e.g.
			- `/exampro/prod/app`
			- `/exampro/prod/db`
			- `/exampro/dev/app`
			- `/exampro/dev/db`
		-
	- **Log Streams** - A sequence of events from an application or instance being monitored.
	  collapsed:: true
		- Naming Conventions:
			- **Lambda Function Log Group**: Named after running instance, contains timestamps.
			- **EC2 Application Log Group**: Named after instance ID.
			- **AWS Glue Log Group**: Named after Glue Jobs.
	-
- ## Application Integration
	- Export logs to S3 [[S3]]
		- Export logs to S3 for custom analysis.
	- Stream to Elastisearch Service [[ES]]
		- Stream logs to an ES cluster in near real-time for robust full-text search or use with the ELK stack.
	- Stream CloudTrail Events to CloudWatch Logs
		- Turn on CloudTrail to stream event data to a CloudWatch Log Group.
	- General Integration
		- Most AWS Services are integrated with CloudWatch Logs.
		- Logging of services sometimes needs to be turned on or requires the IAM permissions to write to CloudWatch Logs.