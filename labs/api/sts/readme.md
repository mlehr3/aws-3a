### Create a user with no permissions
Generate access keys and use those to truly show the power of sts

```sh
aws iam create-user --user-name sts-machine-user-saa-gp-api
aws iam create-access-key --user-name sts-machine-user-saa-gp-api --output table
```

### Create a Role
Create a role that will access a new resource (via cloud formation)
```sh
cd api/sts
chmod u+x bin/deploy
./bin/deploy
```

### Use new credentials 
```sh
open ~/.aws/credentials # add credentials under [sts] profile
aws sts get-caller-identity # test who you are
aws sts get-caller-identity --profile sts # test who you are

aws s3 ls --profile sts # test that you have no permissions
```

### Assume Role
```sh
aws iam put-user-policy \
--user-name sts-machine-user-saa-gp-api \
--policy-name StsAssumePolicy \
--policy-document file://policy.json
```

```sh
# change role-arn
aws sts assume-role \
--role-arn arn:aws:iam::975557805779:role/my-sts-fun-stack-StsRole-6Bci5ug79hik \ 
--role-session-name s3-sts-fun \
--profile sts
# OR 
aws sts assume-role --role-arn arn:aws:iam::975557805779:role/my-sts-fun-stack-StsRole-6Bci5ug79hik --role-session-name s3-sts-fun --profile sts

```


New Access Keys are created, add them to credentials file [assumed]
```
[assumed]
aws_access_key_id = <role_access_key>
aws_secret_access_key = <role_secret_access_key>
aws_session_token = <role_token>
```

```sh
aws sts get-caller-identity --profile assumed
aws s3 ls --profile assumed # will never work cause that permission wasn't granted for all buckets
aws s3 ls s3://sts-fun-ml-324 --profile assumed # this should work 
```

## Cleanup
tear down cloudformation stack via AWS Management Console
```sh

aws iam delete-user-policy --user-name sts-machine-user-saa-gp-api --policy-name StsAssumePolicy
aws iam delete-access-key --access-key-id <user_access_key> --user-name sts-machine-user-saa-gp-api
aws iam delete-user --user-name sts-machine-user-saa-gp-api
```
