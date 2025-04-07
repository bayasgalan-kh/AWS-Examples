## Convert to json command

yq -o json policy.yaml > policy.json

## Bash script

```sh
./convert
```

## Create policy

```sh
aws iam create-policy \
--policy-name my-fun-policy \
--policy-document file://policy.json
```

## Attach policy to user

```sh
aws iam attach-user-policy \
--policy-arn arn:aws:iam::851725435979:policy/my-fun-policy \
--user-name aws-examples
```