UPLOADS_DIR = Rails.env.test? ? 'uploads_test' : 'uploads'

if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.storage = :file
  end
end
