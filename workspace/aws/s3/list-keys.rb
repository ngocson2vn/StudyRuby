require 'date'
require 'aws-sdk'


target_time = Time.now.gmtime
target_year  = target_time.year
target_month = target_time.strftime('%m')

bucket_name = 'fincs-staging'
prefix = "download/#{target_year}/#{target_month}/"

client = Aws::S3::Client.new()

resp = client.list_objects(
  bucket: bucket_name,
  prefix: prefix
)

resp.contents.each do |object|
  if object.key.include?('.csv')
    print "#{object.key}\n"
  end
end
