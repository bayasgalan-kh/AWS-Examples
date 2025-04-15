## Create Buckets

aws s3 mb s3://source-datasync-12221

aws s3 mb s3://dest-datasync-12221

## Upload file

touch hello.txt
aws s3 cp hello.txt s3://source-datasync-12221/data/hello.txt

## Created task on AWS Console - DataSync, created task to copy everything from source to dest and wait till complete.

