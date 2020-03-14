require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'



CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY'],
    aws_secret_access_key: ENV['SECRET_KEY'],
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'baseballwear2'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/baseballwear2'
end