Rails.application.config.middleware.use OmniAuth::Builder do
  # Keep keys out of your Git repository! This uses environment variables from your
  # shell's configuration file.

  provider :twitter, ENV['RR_ID'], ENV['RR_Secret']
end
