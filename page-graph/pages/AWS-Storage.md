tags:: AWS
- ## Standard Storage Services
	- Block vs File vs Object Storage #card
	  tags:: AWS-Storage, CCP
	  collapsed:: true
		- |  | EBS - Block | EFS - File | S3 - Object |
		  | ---- | ---- | ---- | ---- |
		  | Store | Blocks within sectors and tracts | Files and file heirarchy | Key-value, Unlimited |
		  | Transfer | FC, iSCSI | NVS, SMB | http/s, APIs |
		  |  |  |  |  |
	- ### Block Storage
	  collapsed:: true
		- Elastic Block Store (EBS) #card
		  id:: 0729a43c-6723-4184-9237-e9babadcb8bf
		  tags:: AWS-Storage, CCP
		  icon:: ![image.png](../assets/image_1708352167553_0.png)
		  use:: When you need a virtual hard drive attached to a VM
		  storage:: blocks within sectors and tracks
		  transfer:: FC, iSCSI
		  collapsed:: true
		  card-last-interval:: 4
		  card-repeats:: 2
		  card-ease-factor:: 2.7
		  card-next-schedule:: 2024-03-05T22:49:26.435Z
		  card-last-reviewed:: 2024-03-01T22:49:26.436Z
		  card-last-score:: 5
			- Data is split into even blocks
			- Directly accessed by the OS or Servers
			- Supports only a single write volume
			- Good for storing databases
		- AWS EC2 Instance Store #card
		  tags:: AWS-Storage
		  id:: 65c6b282-b4f0-4732-93dd-76b6d9a6335a
		  collapsed:: true
			- Temporary block-level storage for your instances.
			- Ideal for temporary storage of information that changes frequently e.g.:
				- Buffers
				- Caches
				- Scratch Data
				- ...
			- Limitations:
				- **Not persistent storage**, on instance stop, hibernation, or termination, all data is lost.
				- **Limited availability** because they are only optional for a certain combination of AMIs and instance types
				- **Cannot add later**, you can only add during launch
				- **Cannot detach** since they are physically attached to the instance.
				- **Cannot configure** because the instance type determines the type and size, you also cannot add encryption
	- ### File Storage
	  collapsed:: true
		- Amazon Elastic File Storage (EFS) #card
		  id:: 89bf7df8-dadf-4ca7-a15c-2795eb0ba4c3
		  tags:: AWS-Storage, CCP
		  icon:: ![image.png](../assets/image_1708352216513_0.png)
		  use:: When you need a file-share where multiple users or VMs need to access the same drive
		  collapsed:: true
			- File is stored with data and metadata
			  collapsed:: true
				- Files & File Hierarchy
			- Multiple connections via a network share
			- Supports multiple reads, writing locks the file.
			- Transfer Protocols: NFS, SMB
		- Amazon FSx #card
		  tags:: AWS-Storage, CCP
		  icon:: ![image.png](../assets/image_1708352228452_0.png)
		  desc:: high-performance file system like Windows SMB
			- Feature rich and high-performance file system.
			- Windows (SMB) or Linux (Lustre)
- ## Other Storage Services
	- Storage Gateway #card
	  tags:: AWS-Storage, CCP
	  icon:: ![image.png](../assets/image_1708353293998_0.png)
	  desc:: hybrid cloud storage
	  collapsed:: true
		- Hybrid Cloud Storage that extends your on-premise storage to cloud
			- File Gateway: Extends your local storage to AWS S3
			- Volume Gateway: Caches local drives to S3 for continuous cloud backup
			- Tape Gateway: Stores files on virtual tapes, cost-effective long-term storage
	- AWS Backup #card
	  tags:: AWS-Storage, CCP
	  icon:: ![image.png](../assets/image_1708353377390_0.png)
	  desc:: managed backup service that centralizes data across multiple AWS services
	  collapsed:: true
		- Fully managed back-up service that centralizes and automates data backups across multiple AWS services (EC2, EBS, RDS, DynamoDB, EFS...)
			- :
			- ((0729a43c-6723-4184-9237-e9babadcb8bf))
			- ((c3576a24-f7c9-4c66-a9d2-ce9e171940b8))
			- ((5a12b211-fa77-4ba0-a327-5dda6ccba8f8))
			- ((89bf7df8-dadf-4ca7-a15c-2795eb0ba4c3))
		- Create backup plans
	- AWS Snow Family #card
	  tags:: AWS-Storage, CCP
	  icon:: ![image.png](../assets/image_1708353199263_0.png) ![image.png](../assets/image_1708353213537_0.png) ![image.png](../assets/image_1708353219162_0.png)
	  desc:: Storage devices to physically migrate large amounts of data to the cloud (S3)
	  collapsed:: true
		- Snowcone - Large Drive - 8TB
		- Snowball - Briefcase - 50-80TB
		- Snowmobile - semi-truck - 100PB
	- CloudEndure Disaster Recovery #card
	  id:: 65c6b547-eac3-4564-a31a-8dfb23fd9dda
	  tags:: AWS, AWS-Storage, CCP
	  icon:: ![image.png](../assets/image_1708353428151_0.png)
	  desc:: increases durability
	  collapsed:: true
		- Continuously replicates your machines into a low cost staging area in your target AWS account and preferred region enabling fast and reliable recovery in case of IT data center failures