RSpec.configure do |config|
  # https://github.com/heartcombo/devise#test-helpers
  config.include Devise::Test::IntegrationHelpers, type: :request
end
