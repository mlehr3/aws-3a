# CORS Project
## Get Static Website 1 Running
### Create a Bucket
```sh
aws s3 mb s3://cors-fun-ml123
```
### Change block public access
```sh
aws s3api put-public-access-block \
    --bucket cors-fun-ml123 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```
### Create a bucket policy
```sh
cd s3/cors
aws s3api put-bucket-policy --bucket cors-fun-ml123 --policy file://bucket-policy.json
```
```json
{
   "Statement": [
      {
        "Sid": "PublicReadGetObject",
        "Effect": "Allow",
        "Principal": "*",
        "Action": [
          "s3:GetObject"
        ],
        "Resource": [
          "arn:aws:s3:::cors-fun-ml123/*"
        ]
      }
   ]
}
```
### Turn on Static website hosting
```sh
aws s3api put-bucket-website --bucket cors-fun-ml123 --website-configuration file://website.json
```
### upload our index.html file and include a resource that would be cross-origin
```sh
aws s3 cp index.html s3://cors-fun-ml123
```
### Check Website
http://<bucketname>.s3-website-<region>
OR (depending on region)
http://<bucketname>.s3.website-<region>

http://cors-fun-ml123.s3-website-us-east-1.amazonaws.com
### Add custom font from google fonts

## Create another website 
```sh
# Create Bucket
aws s3 mb s3://cors-fun-ml123-2

# Change block public access
aws s3api put-public-access-block \
    --bucket cors-fun-ml123-2 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

# Create a bucket policy
aws s3api put-bucket-policy --bucket cors-fun-ml123-2 --policy file://bucket-policy2.json

# Turn on static website hosting
aws s3api put-bucket-website --bucket cors-fun-ml123-2 --website-configuration file://website.json

# upload files
aws s3 cp hello.js s3://cors-fun-ml123-2

# url is http://cors-fun-ml123-2.s3-website-us-east-1.amazonaws.com/hello.js
```
### Update index.html for website 1
Add 
```html
<script type="text/js" src="http://cors-fun-ml123-2.s3-website-us-east-1.amazonaws.com/hello.js">

</script>
```
```sh
aws s3 cp index.html s3://cors-fun-ml123
```
### Apply a CORS policy
watch video from halfway
