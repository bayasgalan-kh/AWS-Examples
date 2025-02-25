## Create a new s3 bucket

```md
aws s3 mb s3://checksums-examples-ab-234211
```

## Create a new file to do checksum on

```
echo "Hello Mars" > myfile.txt
```

## Get a checksum of a file for md5
```md5
md5sum myfile.txt
# 8ed2d86f12620cdba4c976ff6651637f  myfile.txt
```

## Upload our file to s3

aws s3 cp myfile.txt s3://checksums-examples-ab-234211
aws s3api head-object --bucket checksums-examples-ab-234211 --key myfile.txt

## Lets upload a file with a different kind of checksum

```ruby
bundle exec ruby crc.rb
```

```
aws s3api put-object \
--bucket checksums-examples-ab-234211 \
--key myfilecrc32.txt \
--body myfile.txt \
--checksum-algorithm="SHA1" \
--checksum-sha1="c28ccc2c5e214036806014df9fb43634f3e770b2"
```