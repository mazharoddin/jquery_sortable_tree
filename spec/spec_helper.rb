require 'rubygems'
require 'bundler'
ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../dummy_app/config/environment',  __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'
require 'faker'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = 'random'
end
