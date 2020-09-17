require 'rubygems'
require 'date'
require 'aws-sdk'


target_time = Time.now.gmtime
target_year  = target_time.year
target_month = target_time.strftime('%m')

bucket_name = 'fincs-staging'
prefix = "download/#{target_year}/#{target_month}/"

client = Aws::S3::Client.new()

s3 = Aws::S3::Resource.new(client: client)

bucket = s3.bucket(bucket_name)

resp = client.list_objects(
  bucket: bucket_name,
  prefix: prefix
)

resp.contents.each do |object|
  if object.key.include?('.csv')
    presigned_url = bucket.object(object.key).presigned_url(:get, expires_in: 3600, response_content_disposition: "attachment; filename=#{object.key}")
    print "#{object.key}\n"
    print "#{presigned_url}\n\n"
  end
end
