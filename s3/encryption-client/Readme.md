## Create bucket

aws s3 mb s3://encryption-fun-example-1122

## Run our ruby script

bundle init
bundle install
bundle exec ruby encrypt.rb

## Cleanup

aws s3 rm s3://encryption-fun-example-1122/hello.txt
aws s3 rb s3://encryption-fun-example-1122
