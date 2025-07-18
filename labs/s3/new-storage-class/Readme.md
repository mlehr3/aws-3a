# Change Storage Class
## AWS Management Console
1. Create bucket
2. Add object
3. Go to object properties to find storage class (storage class is by object)
4. Change
## CLI
### Create a bucket
```sh
aws s3 mb s3://class-fun-ml-234
```
### Create a File

```sh
echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://class-fun-ml-234 --storage-class STANDARD_IA
```
### Clean up
```sh
aws s3 rm s3://class-fun-ml-234/hello.txt
aws s3 rb s3://class-fun-ml-234
```