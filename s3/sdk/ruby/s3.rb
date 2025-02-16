require 'aws-sdk-s3'        # AWS SDK for interacting with S3 services.
require 'pry'                # Provides an interactive debugger for the script (useful for debugging).
require 'securerandom'       # Used to generate random UUIDs.

# Environment variable holding the name of the S3 bucket.
bucket_name = ENV['BUCKET_NAME']  

# AWS region where the S3 bucket is located.
region = 'us-east-1' 

# Creating an S3 client to interact with AWS S3 services.
client = Aws::S3::Client.new

# Creates a new S3 bucket with the given bucket name and region.
resp = client.create_bucket({
  bucket: bucket_name, 
#   create_bucket_configuration: {
#     location_constraint: region
#   }
})

# Generate a random number between 1 and 6, inclusive, representing how many files to create.
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"   # Output the number of files to be created.

# Loop to create and upload files to the S3 bucket.
number_of_files.times.each do |i|
    puts "i: #{i}"   # Output the current iteration index.

    # Create a filename based on the current iteration.
    filename = "file_#{i}.txt"

    # Define the output path for the file (temporary storage location).
    output_path = "/tmp/#{filename}"

    # Open the file for writing.
    File.open(output_path, "w") do |f|
        # Write a randomly generated UUID to the file.
        f.write SecureRandom.uuid
    end

    # Open the generated file for reading and upload it to S3.
    File.open(output_path, 'rb') do |f|
        # Upload the file to the S3 bucket with the specified bucket name and key (filename).
        client.put_object(
            bucket: bucket_name,
            key: filename,
            body: f
        )
    end
end
