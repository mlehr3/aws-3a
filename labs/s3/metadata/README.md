### Create a bucket
```bash
cd s3/metadata/
aws s3 mb s3://metadata-fun-msl-12345
```
### Create a new file
```bash
echo "Hello Mars" > hello.txt
```
### Upload file with metadata
```bash
aws s3api put-object --bucket metadata-fun-msl-12345 --key hello.txt --body hello.txt --metadata Planet=Mars
```
AWS automatically adds on `x-amz-meta-` prefix... check the console

### Get Metadata through head object 
```bash
aws s3api head-object --bucket metadata-fun-msl-12345 --key hello.txt 
```
    ```
    {
        "AcceptRanges": "bytes",
        "LastModified": "2024-03-14T17:02:05+00:00",
        "ContentLength": 11,
        "ETag": "\"8ed2d86f12620cdba4c976ff6651637f\"",
        "ContentType": "binary/octet-stream",
        "ServerSideEncryption": "AES256",
        "Metadata": {
            "planet": "Mars"
        }
    }
    ```
### Clean up
```bash
aws s3 rm s3://metadata-fun-msl-12345/hello.txt
aws s3 rb s3://metadata-fun-msl-12345
```