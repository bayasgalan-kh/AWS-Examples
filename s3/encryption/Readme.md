## Create bucket

aws s3 mb s3://encryption-fun-example-1122

## Create a file

echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://encryption-fun-example-1122

## Put object with encryption of KMS

aws s3api put-object \
--bucket encryption-fun-example-1122 \
--key hello.txt \
--body hello.txt \
--server-side-encryption aws:kms \
--ssekms-key-id 71f6869c-6440-486b-8a19-a6c1ba6d64a8