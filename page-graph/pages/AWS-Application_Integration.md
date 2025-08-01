filters:: {"aws-sns" true}
tags:: AWS
alias:: AWS-App Int, AWS-AppInt
	- #### Services
		- ((6750d683-9102-4b3c-8875-e4a179ed4628))
		  id:: 6750d774-7f0a-4d0f-baea-0e3f278548c6
		- ((6751138c-0bed-4490-aed3-cecb3b59aae4))
		- ((67511493-aab0-4ef5-abc9-3dd0c15e4c0c))
		- ((67511519-5969-4ba1-b27d-46e26b49d66e))
		- ((67510053-39b2-40ed-a734-d521d1c572b5))
		-
		- ((67510610-fb81-432b-97e4-1afd66a1d42e))
		-
		- ((67510f6c-cb8a-4daa-9064-03e8f742b3de))
		- Amazon MQ #card
		  tags:: AWS-Application Integration, CCP, Apache
			- Managed message broker service that uses *Apache Active MQ*
		- Aazon MQ
	- ---
	- #### Application Messaging
	  collapsed:: true
		- tags:: PCOmm
		- *Queueing is an async, simple, pull-based messaging system that will generally delete messages after they're read*
		  id:: 6750f82f-87ac-443f-a9d4-ec985b9c8b1e
		- *Streaming is a reactive communication system that keeps events in the stream for long periods of time.*
		  id:: 6750f87e-4979-4e76-9c16-0d5cee81f69c
		  collapsed:: true
			- complex operations can be applied real-time
			- Multiple consumers react to events (messages)
		- *The Pub/Sub model is a blind communication system that allows publishing to an event bus and subscribing to groups made by the event bus that receive messages instantly.*
		  id:: 6750fb22-f610-4402-ae6d-747d98a10433
		- #### Meta [[messaging architectures]]
			- Application Integration #card
			  tags:: AWS-App Int
			  collapsed:: true
				- The process of letting two independent applications communicate and work with each other
				- Commonly facilitated by an intermediate system
				- Cloud workloads encourage isolation, so there are many services designed for integration
			- State Machine #card
			  id:: 65d4b2dc-84e8-40f2-b46a-09f01e138120
			  tags:: AWS-App Int, CCP
			  desc:: flow chart model for state based on a series of conditions
			  card-last-interval:: 4
			  card-repeats:: 1
			  card-ease-factor:: 2.6
			  card-next-schedule:: 2024-04-12T20:30:48.670Z
			  card-last-reviewed:: 2024-04-08T20:30:48.671Z
			  card-last-score:: 5
				- Abstract model which decides how one state moves to another based on a series of conditions
				- Think of it as a flow chart
			- Event Bus #card
			  id:: 65a6a12d-eb2f-4dd0-b9b0-2a4320542a4d
			  tags:: AWS-App Int, CCP
			  desc:: receives events from a source and routes events to a target based on rules
			  collapsed:: true
				- Receives events from a source and routes events to a target based on rules
				- Graphic:
				  collapsed:: true
					- ![image.png](../assets/image_1708438977914_0.png)
					- ![image.png](../assets/image_1708438992112_0.png)
- #### Cards
  collapsed:: true
	- [[card]] | What is Queueing? | Application Messaging | [[CCP]]
	  id:: 6750f6bb-dc49-43a9-8144-85261642e1c3
	  collapsed:: true
		- ((6750f82f-87ac-443f-a9d4-ec985b9c8b1e))
		- Simple Communications / not real-time / have to pull  / not reactive
	- [[card]] | What is Streaming? | Application Messaging | [[CCP]]
	  collapsed:: true
		- ((6750f87e-4979-4e76-9c16-0d5cee81f69c))
	- [[card]] | What is Pub/Sub? | Application Messaging | [[CCP]]
	  collapsed:: true
		- ((6750fb22-f610-4402-ae6d-747d98a10433))
	- [[card]] | How does the Pub/Sub model work? | Application Messaging | [[CCP]]
	  collapsed:: true
		- Pub/Sub's use an event bus to separate senders and receivers
	- [[card]] | What is the process for the Pub/Sub model? | Application Messaging | [[CCP]]
	  collapsed:: true
		- Sender **publishes** a message to the Event Bus.
		- The Event Bus categorizes the messages into groups.
		- Receivers that are subscribed to these groups immediately receive new messages.
	- [[card]] What are some advantages to the Pub/Sub model? | Application Messaging | [[CCP]]
	  id:: 65d4b092-f36f-4980-a5b1-e39feceb29e2
	  collapsed:: true
		- Publishers have no knowledge of who subscribers are
		- Subscribers do not pull for messages
		- Messages are sent automatically and immediately pushed to subscribers
		- Messages and events are interchangeable terms in pub/sub
	- [[card]] | What is EventBridge? | [[CCP]]
	  id:: 6650a8c2-b038-4cd6-a015-38a7ab3a950f
	  collapsed:: true
		- ((67510053-39b2-40ed-a734-d521d1c572b5))
-