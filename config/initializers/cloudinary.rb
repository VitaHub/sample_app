=begin
Cloudinary.config do |config|
  config.cloud_name = 'sample'
  config.api_key = '874837483274837'
  config.api_secret = 'a676b67565c6767a6767d6767f676fe1'
  config.cdn_subdomain = true
end

CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    
    config.fog_directory     =  ENV['S3_BUCKET']
  end

  
CarrierWave.config do |config|
  config.fog_credentials = {
    :provider => 'Cloudinary'
    :cloud_name => 'sample'
    :api_key => '874837483274837'
    :api_secret => 'a676b67565c6767a6767d6767f676fe1'
    :cdn_subdomain => true
  }
end
=end