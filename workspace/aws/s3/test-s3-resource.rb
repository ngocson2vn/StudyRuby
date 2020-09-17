require 'rubygems'
require 'date'
require 'aws-sdk'


target_time = Time.now.gmtime
target_year  = target_time.year
target_month = target_time.strftime('%m')

bucket_name = 'fincs-staging'
key = "download/2019/11//45ce1443e3afe1d671c2571311773dfa.csv"

client = Aws::S3::Client.new()

object = client.get_object(
  bucket: bucket_name,
  key: key
)

p "#{object.body.string}"
print("\n")

s3 = Aws::S3::Resource.new(region: "ap-northeast-1")
object2 = s3.client.get_object(bucket: bucket_name, key: key)
p "#{object2.body.string}"
