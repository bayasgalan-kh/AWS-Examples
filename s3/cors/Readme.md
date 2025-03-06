## Create bucket

aws s3 mb s3://cors-fun-example-1122

## Change block public access

aws s3api put-public-access-block --bucket cors-fun-example-1122 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

## Create bucket policy

aws s3api put-bucket-policy --bucket cors-fun-example-1122 --policy file://policy.json

## Turn on static website hosting

aws s3api put-bucket-website --bucket cors-fun-example-1122 --website-configuration file://website.json

## Upload index.html

aws s3 cp index.html s3://cors-fun-example-1122

## View the website endpoint for s3

http://cors-fun-example-1122.s3-website-us-east-1.amazonaws.com/

## Set CORS on our bucket

aws s3api put-bucket-cors --bucket cors-fun-example-1122 --cors-configuration file://cors.json


## Cleanup

aws s3 rm s3://cors-fun-example-1122/index.html
aws s3 rb s3://cors-fun-example-1122