## Bucket Policies
### Create a bucket
aws s3 mb s3://bucket-policy-example-msl616

### Attach a cross-account bucket policy
aws s3api put-bucket-policy --bucket bucket-policy-example-msl616 --policy file://policy.json
aws s3api get-bucket-policy --bucket bucket-policy-example-msl616

### Check to see if the cross account has access
in cloudshell cabin6-against in the same region
```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://bucket-policy-example-msl616
aws s3 ls s3://bucket-policy-example-msl616
```

### Cleanup
back to gitpod/primary account
```sh
aws s3 rm s3://bucket-policy-example-msl616/bootcamp.txt
aws s3 rb s3://bucket-policy-example-msl616
```