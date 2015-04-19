CarrierWave.configure do |config|
    config.storage    =  :aws                  # required
    config.aws_bucket =  ENV['S3_BUCKET']      # required
    config.aws_acl    =  :public_read

    config.aws_credentials = {
      access_key_id:      ENV['S3_ACCES_KEY'],       # required
      secret_access_key:  ENV['S3_SECRET_KEY']     # required
    }

    config.aws_attributes = {
                              'Cache-Control'=>"max-age=#{365.day.to_i}",
                              'Expires'=>'Tue, 29 Dec 2015 23:23:23 GMT'
                            }
  end