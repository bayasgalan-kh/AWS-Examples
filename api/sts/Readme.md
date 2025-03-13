## Create a user with no permissions

We need to create a new user with no permissions and generates out access keys
```sh
aws iam create-user --user-name StsMachineUser
aws iam create-access-key --user-name StsMachineUser --output table
```

## Create a Role
We need to create a role that will access a new resource

```sh
aws configure
```
copy access key id and secret

Check credentials file
```sh
open ~/.aws/credentials
```

Test who you are are
```sh
aws sts get-caller-identity --profile sts
```

Check if you don't have access
```sh
aws s3 ls --profile sts

chmod u+x bin/deploy
./bin/deploy
```

##  Use new user credentials and assume role

```sh
aws iam put-user-policy \
--user-name StsMachineUser \
--policy-name StsAssumePolicy \
--policy-document file://policy.json
```

```sh
aws sts assume-role \
--role-arn arn:aws:iam::851725435979:role/my-sts-fun-stack-111-StsRole-nqMWISuZefGa \
--role-session-name s3-sts-fun \
--profile sts
```

```sh
aws sts get-caller-identity --profile assumed
```

```sh
aws s3 ls --profile assumed
```

## Cleanup

Tear down stack from cloudformation console

```sh
aws iam delete-user-policy --user-name StsMachineUser --policy-name StsAssumePolicy
aws iam delete-access-key --access-key-id ?? --user-name StsMachineUser
aws iam delete-user --user-name StsMachineUser
```