## Create bucket

```sh
aws s3 mb s3://sf-star-trek-example1 --region us-east-1
```

## Enable event bridge configuration
```sh
aws s3api put-bucket-notification-configuration \
    --bucket sf-star-trek-example1 \
    --notification-configuration '
        {
            "EventBridgeConfiguration": {

            }
        }
        '
```
## Upload pictures

```sh
aws s3 cp picard.jpg s3://sf-star-trek-example1/picard.jpg --region us-east-1


```


## State function

