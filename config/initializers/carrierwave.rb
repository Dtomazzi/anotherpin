CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials.aws_key,                        # required unless using use_iam_profile
    aws_secret_access_key: Rails.application.credentials.aws_password,                        # required unless using use_iam_profile

  }
  config.fog_directory  = Rails.application.credentials.aws_bucket                                      # required

end
