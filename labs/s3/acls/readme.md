## Create a new bucket

```sh
aws s3api create-bucket --bucket acl-example-ml-134 --region us-east-1
```

## Turn off Block Public Access for ACLs
```sh
aws s3api put-public-access-block \
--bucjet my-bucket \
--public-access-block-configuration "BlockPublicAcls=true, IgnorePublicAcls=true, BlockPublicPolicy=true, Restr 
```