- Built using **Model First Development** - Where the interface is defined before implementation, ensuring consistency and clarity (Smithy 2.0)
	- ```
	  // Define the namespace
	  namespace com.amazonaws.s3
	  
	  // Define a simplified S3 service
	  service SimpleS3 {
	      version: "2023-12-21",
	      operations: [ListBuckets, PutObject]
	  }
	  
	  // Define an operation to list buckets
	  operation ListBuckets {
	      output: ListBucketsOutput
	  }
	  
	  // Define the output structure for ListBuckets operation
	  structure ListBucketsOutput {
	      buckets: BucketList
	  }
	  
	  // Define a list of buckets
	  list BucketList {
	      member: Bucket
	  }
	  ```
-