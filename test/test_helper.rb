require 'simplecov'
require 'undercover/simplecov_formatter'
SimpleCov.formatter = SimpleCov::Formatter::Undercover
SimpleCov.start do
  add_filter(/^\/test\//)
  enable_coverage(:branch)
  enable_coverage(:eval)
end

ENV['RAILS_ENV'] ||= 'test'
require 'mocha/minitest'
require_relative '../config/environment'
require 'rails/test_help'
class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
