tags:: AWS, AI
date-filed:: [[2025-Q2]]

	- AWS AI services
- ### Artificial Intelligence
	- #### Transformers
		- Amazon Polly #card
		  tags:: AWS-AI, CCP, AI, text-to-speech
		  icon:: ![image.png](../assets/image_1707752125115_0.png)
			- Text-to-speech service
			- Upload text and an audio file of a synthesized voice is generated
		- Amazon Rekognition #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707752108707_0.png)
			- Image and video recognition service.
			- Detect and label objects, people, celebrities
		- Amazon Transcribe #card
		  tags:: AWS-AI, CCP, AI, speech-to-text
		  icon:: ![image.png](../assets/image_1707752150297_0.png)
		  id:: bfaed0b1-fda5-41c0-94f8-dd6b9de4be04
			- Speech-to-text
			- Upload audio file and it's converted
		- Amazon Textract #card
		  tags:: AWS-AI, CCP, AI, OCR
		  icon:: ![image.png](../assets/image_1707752166043_0.png)
			- OCR (extract text from scanned documents)
			- Pronounced "text extract"
		- Amazon Translate #card 
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707752209404_0.png)
			- Neural machine learning translation service
			- Uses deep-learning to deliver natural sounding translations
		- Amazon CodeWhisper #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707752282743_0.png)
			- AI code generator
	- #### Monitoring
		- Amazon DevOps Guru #card #sop-cd-pipeline 
		  tags:: AWS-AI, AI
		  icon:: ![image.png](../assets/image_1707752551222_0.png)
			- Uses ML to analyze operational data and application metrics & events to detect issues
			- Like a junior DevOps person digging for an issue
		- Amazon Lookout for Equipment | Metrics | Vision #card
		  id:: ac3842dc-2186-4150-842c-8ee8f2cfda04
		  tags:: AWS-AI, AI, QC
		  icon:: ![image.png](../assets/image_1707752514238_0.png) ![image.png](../assets/image_1707752520348_0.png) ![image.png](../assets/image_1707752527992_0.png)
			- Uses ML models for quality control
			- Performs Automated Inspections
			- For "hard industrues"
		- AWS Monitron #card
		  tags:: AWS-AI, AI
		  icon:: ![image.png](../assets/image_1707752539315_0.png)
			- Uses ML to predict unplanned equipment downtime
			- Monitor has an IOT sensor that captures vibrations and other data
	- #### Business Support
		- Amazon Comprehend #card
		  tags:: AWS-AI, CCP, AI, NLP
		  icon:: ![image.png](../assets/image_1707752227675_0.png)
		  desc:: NLP that finds relationships in text (emails, social media, reports) and produces insignts
			- Natural Language Processor (NLP)
			- Find relationships in text to produce insights
			- Looks at data such as emails, tickets, social media, and makes predictions
		- Amazon CodeGuru #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753067416_0.png)
		  desc:: ML powered code-analysis service that evaluates performance
			- Machine-learning code analysis service
			- Can evaluate performance
		- Amazon Personalize #card 
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753167588_0.png)
		  desc:: amazon marketplace's real-time recommendation service
			- Real-time recommendation service
			- What Amazon marketplace uses
		- Amazon Forecast #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753220241_0.png)
		  desc:: ML powered time-series forecasting service
			- Time-series forecasting service
				- like a database powered by ML
			- Forecast business outcomes such as product demand, resource needs, or financial performance
		- Amazon Fraud Detector #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753544897_0.png)
		  desc:: fraud detection service (payment fraud, fake accounts...)
			- Fully managed fraud detection as a service.
			- Identifies fraudulent online activities such as payment fraud and the creation of false accounts
		- Amazon Kendra #card
		  tags:: AWS-AI, CCP, AI, NLP
		  icon:: ![image.png](../assets/image_1707753606141_0.png)
		  desc:: enterprise ML-powered search engine service
			- Enterprise machine learning search engine service
			- Uses natural language processing
		- Amazon Lex #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753125177_0.png)
		  desc:: chatbot creation and interface service
			- Conversation interface service.
			- Build voice and text chatbots
	- #### Creating Environments
		- Amazon SageMaker #card
		  id:: 4e25fbdc-efca-4f80-8321-34a2599b6e0a
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707752639841_0.png)
		  desc:: fully managed machine learning build/train/deploy service
			- Fully managed service
			- Build, train, and deploy machine learning models at scale
			- Supports
				- Apache MXNet
				- TensorFlow
				- PyTorch
		- Amazon Augmented AI #card
		  tags:: AWS-AI, CCP, AI, flag
		  desc:: backup to SageMaker where a low-confidence prediction goes to human review
			- Human-intervention review service.
			- When an ((4e25fbdc-efca-4f80-8321-34a2599b6e0a)) model makes a low-confidence prediction, it queues it for human review
		- AWS Deep Learning AMIs #card
		  id:: 319994d1-fefc-4903-8f71-9e6b2fa796f2
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753657671_0.png)
		  desc:: EC2 instances preinstalled with deep learning frameworks and interfaces
			- ((23865347-0df5-4219-b714-d69bb13d8bb6)) instances preinstalled with popular deep learning frameworks and interfaces
				- ((65ae922b-c7e9-44e5-9b94-665a41e29530))
				- ((65ae9521-0bea-407b-8e6b-c4c3281e2f8f))
				- ((65ae9249-e66c-477e-a3e7-e8b48bd5246c))
				- Chainer
				- Gluon
				- Horovod
				- Keras
		- AWS Deep Learning Containers #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707753671692_0.png)
		  desc:: Docker images pre-installed with TensorFlow, Pytorch...
			- Docker images pre-installed with
				-
				- ((65ae922b-c7e9-44e5-9b94-665a41e29530))
				- ((65ae9521-0bea-407b-8e6b-c4c3281e2f8f)) or
				- ((65ae9249-e66c-477e-a3e7-e8b48bd5246c))
				-
		- Amazon Elastic Inference #card
		  tags:: AWS-AI, CCP, AI
		  icon:: ![image.png](../assets/image_1707754002772_0.png)
		  desc:: GPU accelerators for EC2 instances to reduce deep learning costs
		  id:: 7a8bd073-6866-4897-9672-e3e32831e919
			- Allows you to attach low-cost GPU powered accelerators to EC2 instances to reduce deep learning costs up to 75%
- LLMs
	- Amazon Bedrock #card
	  tags:: AWS-AI, CCP, AI, LLM
	  icon:: ![image.png](../assets/image_1707752462003_0.png)
	  desc:: LLM service offering that can generate text and images
		- Large Language Model (LLM) loud service offering
			- Can generate text and images
- Learning Programs Deep__
	- AWS DeepComposer #card
	  tags:: AWS-AI, CCP, AI
		- Machine-learning enabled musical keyboard
	- AWS DeepLens #card
	  tags:: AWS-AI, CCP, AI
	  icon:: ![image.png](../assets/image_1707753690478_0.png)
	  desc:: video camera that uses deep learning
	  collapsed:: true
		- Video camera that uses deep learning
	- AWS DeepRacer #card
	  tags:: AWS-AI, CCP, AI
	  icon:: ![image.png](../assets/image_1707753717722_0.png)
	  desc:: toy race car with autonomous driving
	  collapsed:: true
		- Toy race car with autonomous driving
- Other:
	- Amazon SageMaker Ground Truth #card
	  tags:: AWS-AI, CCP, AI
	  icon:: ![image.png](../assets/image_1707752653263_0.png)
	  desc:: human powered data-labeling service
	  collapsed:: true
		- Data-labeling service
		- Have humans label a dataset that will be used to train machine learning models
	- AWS Neuron #card
	  tags:: AWS-AI, AI
	  icon:: ![image.png](../assets/image_1707752575963_0.png)
	  desc:: SDK used to run deep learning workloads on AWS Inferentia and AWS Trainium based instances
	  collapsed:: true
		- An SDK used to run deep learning workloads on AWS Inferentia and AWS Trainium based instances