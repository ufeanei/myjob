

if Rails.env.production?
  CarrierWave.configure do |config|

    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["SECRET_ACCESS_KEY"],
      region: 'eu-west-1'
    }


    config.fog_directory = ENV['S3-BUCKET']
  end
end
