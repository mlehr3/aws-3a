# s3.rb

require "aws-sdk-s3"
require "pry"
require "securerandom"

# CLI Execution:
# BUCKET_NAME='my-ruby-bucket' bundle exec ruby s3.rb 

# Get the bucket name from the environment variable
bucket_name = ENV['BUCKET_NAME']
region = 'us-east-1'

ENV['BUCKET_NAME'] = 'us-east-1'
# Initialize an AWS S3 client
client = Aws::S3::Client.new(
    region: region
    # Andrew Brown said you didn't need to worry ab a credentials file in gitpod, but it isn't running w/o
) 

# Create a new S3 bucket
resp = client.create_bucket({
  bucket: bucket_name, 
  create_bucket_configuration: {
    location_constraint: region
  }
})
binding.pry

# Generate a random number of files
number_of_files = 1 + rand(6)
puts "Number of Files: #{number_of_files}"

# Upload each file to the S3 bucket
number_of_files.times.each do |i|
    puts "File Index: #{i}"
    filename = "file_#{i}.txt"
    output_path = "/tmp/#{filename}"

    # Generate a file with a random UUID
    File.open(output_path, "w") do |f|
        f.write SecureRandom.uuid
    end

    # Upload the file to S3
    File.open(output_path, "rb") do |file|
        client.put_object(
            bucket: bucket_name,
            key: filename,
            body: file
        )
    end
end
