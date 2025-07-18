# AWS S3 Client Side Encryption Example

### Create a bucket and a start file
aws s3 mb s3://encrypt-client-fun-ml-634232
cd s3/encryption-client
echo "hello world" > hello.txt

### Create Ruby files
* encrypt.rb
* Gemfile
### Start up Ruby
```bash
bundle install
bundle exec ruby encrypt.rb
```

### Check if it's there
```bash
cd ../bash-scripts
./list-objects encrypt-client-fun-ml-634232
cd s3
./bash-scripts/read-objects encrypt-client-fun-ml-634232 hello.txt
```

### Cleanup
```bash
aws s3 rm s3://encrypt-client-fun-ml-634232/hello.txt
aws s3 rb s3://encrypt-client-fun-ml-634232
```