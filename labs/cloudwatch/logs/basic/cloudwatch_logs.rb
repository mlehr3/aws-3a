require 'aws-sdk-cloudwatchlogs'

class CloudWatchLogs
  def initialize(log_group_name, log_stream_name, log_file_path)
    @log_group_name = log_group_name
    @log_stream_name = log_stream_name
    @log_file_path = log_file_path
    @client = Aws::CloudWatchLogs::Client.new
  end

  def create_log_group
    @client.create_log_group(log_group_name: @log_group_name)
  rescue Aws::CloudWatchLogs::Errors::ResourceAlreadyExistsException
    puts "Log group already exists."
  end

  def create_log_stream
    @client.create_log_stream(log_group_name: @log_group_name, log_stream_name: @log_stream_name)
  rescue Aws::CloudWatchLogs::Errors::ResourceAlreadyExistsException
    puts "Log stream already exists."
  end

  def parse_logs
    log_events = []
    File.readlines(@log_file_path).each_with_index do |line, index|
      timestamp, message = parse_log_line(line)
      log_events << { timestamp: timestamp, message: message }
    end
    log_events
  end

  def parse_log_line(line)
    parts = [line[0..19], line[20..-1]] # First 19 characters are date.
    [Time.now.to_i * 1000, parts[1]]  # changes time to now in order to not send stale data by AWS's standards
  end

  def put_logs
    # Sequence Token no longer needed
    log_events = parse_logs
    @client.put_log_events(
      log_group_name: @log_group_name,
      log_stream_name: @log_stream_name,
      log_events: log_events
    )
  end

end

# Usage
log_group_name = '/example/basic/app'
log_stream_name = '1753009140'
log_file_path = 'web_server_elf_log.txt'

logs = CloudWatchLogs.new(log_group_name, log_stream_name, log_file_path)
logs.create_log_group
logs.create_log_stream
logs.put_logs