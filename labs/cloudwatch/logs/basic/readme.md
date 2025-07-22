## AWS CLI `logs`
## Create Log Group
```sh
aws logs create-log-group --log-group-name "/example/basic/app"  # never expires
```

## Set Retention on Log Group
```shell
aws logs put-retention-policy --log-group-name "/example/basic/app" --retention-in-days 1
```

## Create Log Stream
Using UNIX Data Format as the stream name
```shell
aws logs create-log-stream \
--log-group-name "/example/basic/app" \
--log-stream-name $(date +%s)
```

## Send Logs to our Log Stream
Standardized Log Formats: Common Log Format, Extended Log Format
https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CloudWatchLogs/Client.html#put_log_events-instance_method
```shell
bundle exec ruby put_logs.rb
```

## Clean Up 
```shell
aws logs delete-log-group \
--log-group-name "/example/basic/app"
```
