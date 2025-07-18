## Create a new S3 bucket

```bash
aws s3 mb s3://checksums-example-msl-123
```

## Create a file that we will do a checksum on

```bash
echo "Hello Mars" > myfile.txt
```

## Get a checksum of a file for md5
```bash
md5sum myfile.txt
# 8ed2d86f12620cdba4c976ff6651637f  myfile.txt
```

## Upload our file and look at its Etag
```bash
aws s3 cp myfile.txt s3://checksums-example-msl-123
aws s3api head-object --bucket checksums-example-msl-123 --key myfile.txt
# looks like Etag matches md5sum
```
```
{
    "AcceptRanges": "bytes",
    "LastModified": "2024-03-13T16:25:48+00:00",
    "ContentLength": 11,
    "ETag": "\"8ed2d86f12620cdba4c976ff6651637f\"",
    "ContentType": "text/plain",
    "ServerSideEncryption": "AES256",
    "Metadata": {}
}
```

## Lets upload a file

cksum -o 3 -b myfile.txt
```bash
sha1sum myfile.txt
# c28ccc2c5e214036806014df9fb43634f3e770b2  myfile.txt

aws s3api put-object \
--bucket="checksums-example-msl-123" \
--key="myfilesha1.txt" \
--body="myfile.txt" \
--checksum-algorithm="SHA1" \
--checksum-sha1 c28ccc2c5e214036806014df9fb43634f3e770b2
```

**Further research needed**