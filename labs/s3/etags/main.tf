terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
    #configuration options
}


resource "aws_s3_bucket" "default" {}
resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.id
  key    = "myfile.txt"
  source = "myfile.txt"

  # terraform cannot tell when object has changed.. unless you use the etag
  # etag = filemd5("path/to/file")
  etag = filemd5("myfile.txt")
  
}

