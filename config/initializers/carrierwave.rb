CarrierWave.configure do |config|
  #config.fog_provider = 'fog-aws'              
  config.fog_credentials = {
    provider:              'AWS',              
    aws_access_key_id:     ENV['S3_ACCES_KEY'],
    aws_secret_access_key: ENV['S3_ACCES_KEY'],
  }
  config.fog_directory  = ENV['S3_BUCKET']
end#