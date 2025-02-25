## Create a bucket

```sh
aws s3 mb s3://prefixes-fun-ab-1234
```

## Create a folder

```sh
aws s3api put-object --bucket="prefixes-fun-ab-1234" --key="hello/"
```

