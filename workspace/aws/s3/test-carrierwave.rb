require 'carrierwave'
require 'fog/aws'

CarrierWave.configure do |config|
  config.cache_dir = "/tmp/uploads"
  config.storage                          = :fog
  config.fog_credentials                  = {
    :provider              => 'AWS',
    :region                => 'ap-northeast-1',
    :use_iam_profile       => true
  }
  config.fog_directory                    = 'test-bucket'
  config.fog_public                       = false
  config.fog_authenticated_url_expiration = 24 * 60 * 60
end

class AvatarUploader < CarrierWave::Uploader::Base
end

uploader = AvatarUploader.new
uploader.store!(File.open('son-test.txt'))

puts 'OK'
