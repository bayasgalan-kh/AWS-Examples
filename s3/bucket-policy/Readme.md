## Create bucket

aws s3 mb s3://bucket-policy-example-1122

## Change bucket policy

aws s3api put-bucket-policy --bucket bucket-policy-example-1122 --policy file://policy.json

## Cleanup

aws s3 rb s3://bucket-policy-example-1122