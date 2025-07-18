# S3-Encryption

### Set encryption to KMS
  #### Create bucket
  ```sh
  aws s3 mb s3://encryption-fun-ml-123
  ```
  #### Create a file
  ```sh
  echo "Hello World" > hello.txt
  aws s3 cp hello.txt s3://encryption-fun-ml-123
  ```
  #### Put Object with encryption
  ```sh
  aws s3api put-object \
  --bucket encryption-fun-ml-123 \
  --key hello-encrypted.txt \
  --body hello.txt \ 
  --server-side-encryption aws:kms \
  --sse-kms-key-id
  
  ```