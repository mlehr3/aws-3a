tags:: AWS-CF
date-created:: [[2024-Q4]]

-
- When receiving errors from the origin, you can pass back a different response code than the error received to make a more seamless experience for the user. [^1]
	- The response codes that you can return are:
		- 200,
		- 400, 403, 404, 405, 414, 416,
		- 500, 501, 502, 503, 504.[^1]
	- Terraform Configuration Example (used in [static-s3](https://github.com/lunar-drift/terraform-aws-s3-website-53))
	  collapsed:: true
		- ```HCL
		  resource "aws_cloudfront_distribution" "main" {  
		    [...]
		    
		    custom_error_response {
		      error_caching_min_ttl = 10
		      error_code            = 403
		      response_code         = 200
		      response_page_path    = "/index.html"
		    }
		    custom_error_response {
		      error_caching_min_ttl = 10
		      error_code            = 404
		      response_code         = 200
		      response_page_path    = "/error.html"
		    }
		  }
		  ```
- ---
- #references
	- [^1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages-response-code.html