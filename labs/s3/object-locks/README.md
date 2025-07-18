### Create a new bucket
```bash
aws s3 mb s3://object-lock-fun-msl-8
```
### Turn on S3 Versioning
```bash
aws s3api put-bucket-versioning --bucket object-lock-fun-msl-8 --versioning-configuration Status=Enabled
```
## Use Governance mode for S3 Objects
### Turn on Object Locking for governance
```bash
aws s3api put-object-lock-configuration \
--bucket object-lock-fun-msl-8 \
--object-lock-configuration '{ "ObjectLockEnabled": "Enabled", "Rule": { "DefaultRetention": { "Mode": "GOVERNANCE", "Days": 1 }}}'
``` 

### New file and upload 
```bash
echo "This is the gov" > gov.txt
aws s3 cp gov.txt s3://object-lock-fun-msl-8
```
### Delete and see what happens
```bash
aws s3 rm s3://object-lock-fun-msl-8/gov.txt

aws s3api list-object-versions --bucket object-lock-fun-msl-8 --key gov.txt
#{
#    "IsTruncated": false,
#    "KeyMarker": "gov.txt",
#    "VersionIdMarker": "",
#    "Name": "object-lock-fun-msl-8",
#    "Prefix": "",
#    "MaxKeys": 1000,
#    "EncodingType": "url"
#}
aws s3api list-object-versions --bucket object-lock-fun-msl-8 --key gov.txt
#outputs
{
    "Versions": [
        {
            "ETag": "\"371da46af0101ab5dda5bc8a10a528bc\"",
            "Size": 16,
            "StorageClass": "STANDARD",
            "Key": "gov.txt",
            "VersionId": "j2ZKGfUqtxF8yrpEjldo9W3V47ig7Bnl",
            "IsLatest": false,
            "LastModified": "2024-03-14T18:05:04+00:00",
            "Owner": {
                "DisplayName": "mlehr3",
                "ID": "3788614c13153906a469f2edb86756479abbb4b0680f79231feda6813bff712f"
            }
        }
    ],
    "DeleteMarkers": [
        {
            "Owner": {
                "DisplayName": "mlehr3",
                "ID": "3788614c13153906a469f2edb86756479abbb4b0680f79231feda6813bff712f"
            },
            "Key": "gov.txt",
            "VersionId": "PFEyQzVnDXbuMxp8lFHHb.BUewopUKrX",
            "IsLatest": true,
            "LastModified": "2024-03-14T18:06:17+00:00"
        }
    ],
    "RequestCharged": null
}

```

### Try to delete the versioned file
```bash
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "gov.txt" --version-id="j2ZKGfUqtxF8yrpEjldo9W3V47ig7Bnl" --bypass-governance-retention
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "gov.txt" --version-id="PFEyQzVnDXbuMxp8lFHHb.BUewopUKrX" --bypass-governance-retention

aws s3api list-object-versions --bucket object-lock-fun-msl-8
{
    "RequestCharged": null
}
```
## Use Compliance mode for S3 Objects


```bash
aws s3api put-object --bucket="object-lock-fun-msl-8" --key "gov.txt" --body "compliance.txt" --object-lock-mode COMPLIANCE --object-lock-retain-until-date="2024-03-16T00:00:00Z"
```
### Try and delete version
```bash
aws s3api list-object-versions --bucket object-lock-fun-msl-8
aws s3 rm s3://object-lock-fun-msl-8/gov.txt
```
    ```
    {
        "Versions": [
            {
                "ETag": "\"4d732c02f0f616abb456ac223280d075\"",
                "Size": 20,
                "StorageClass": "STANDARD",
                "Key": "gov.txt",
                "VersionId": "0ULAP59MV9j67XPw6RWNxR5XUGzlirHJ",
                "IsLatest": false,
                "LastModified": "2024-03-14T18:22:07+00:00",
                "Owner": {
                    "DisplayName": "mlehr3",
                    "ID": "3788614c13153906a469f2edb86756479abbb4b0680f79231feda6813bff712f"
                }
            }
        ],
        "DeleteMarkers": [
            {
                "Owner": {
                    "DisplayName": "mlehr3",
                    "ID": "3788614c13153906a469f2edb86756479abbb4b0680f79231feda6813bff712f"
                },
                "Key": "gov.txt",
                "VersionId": "zxyUoFsiV89zNm6qde7_n75Jl9q_qlTZ",
                "IsLatest": true,
                "LastModified": "2024-03-14T18:26:53+00:00"
            }
        ],
        "RequestCharged": null
    }
    ```

```bash
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "gov.txt" --version-id="0ULAP59MV9j67XPw6RWNxR5XUGzlirHJ" --bypass-governance-retention
# An error occurred (AccessDenied) when calling the DeleteObject operation: Access Denied
#can't do it
```
## Legal Holds

```bash
touch legal.txt

aws s3 cp legal.txt s3://object-lock-fun-msl-8/legal.txt

aws s3api put-object-legal-hold --bucket object-lock-fun-msl-8 --key "legal.txt" --legal-hold Status=ON

```
### Try and delete
```bash
aws s3 rm s3://object-lock-fun-msl-8/legal.txt
aws s3api list-object-versions --bucket object-lock-fun-msl-8
# {... xuP.N9L3.0cDRaOQOqk8l_m87bXBd7_B ...}
# delete marker : mlqSL.1TpiEP8egL_xQ2jB0mco.g8PG2
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "legal.txt" --version-id="xuP.N9L3.0cDRaOQOqk8l_m87bXBd7_B" 

# Access Denied
```
### Turn off legal hold
```bash
aws s3api put-object-legal-hold --bucket object-lock-fun-msl-8 --key "legal.txt" --version-id="xuP.N9L3.0cDRaOQOqk8l_m87bXBd7_B" --legal-hold Status=OFF

aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "legal.txt" --version-id="xuP.N9L3.0cDRaOQOqk8l_m87bXBd7_B" 
# Access Denied
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "legal.txt" --version-id="mlqSL.1TpiEP8egL_xQ2jB0mco.g8PG2" 
# Deleted ((delete marker))
aws s3api delete-object --bucket="object-lock-fun-msl-8" --key "legal.txt" --version-id="xuP.N9L3.0cDRaOQOqk8l_m87bXBd7_B" --bypass-governance-retention
```
