Airbrake.configure do |config|
  config.api_key = ENV['ERRBIT_KEY']
  config.host    = 'errors.stephan.com'
  config.port    = 80
  config.secure  = config.port == 443
end