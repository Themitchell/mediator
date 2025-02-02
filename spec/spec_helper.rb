# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'
require 'database_cleaner'


# Capybara
Capybara.default_wait_time  = 5
Capybara.default_selector   = :css
Capybara.javascript_driver  = :webkit
Capybara.app = Rack::ShowExceptions.new(Mediator::Application)

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  config.include FactoryGirl::Syntax::Methods
  config.include HelperMethods, type: :request
end
