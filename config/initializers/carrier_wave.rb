

if Rails.env.production?
  CarrierWave.configure do |config|
  	config.fog_provider = 'fog'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AccessKeyID'],
      aws_secret_access_key: ENV['SecretAccessKey'],
      region: 'eu-west-1'
    }


    config.fog_directory = ENV['S3-BUCKET']
  end
end
