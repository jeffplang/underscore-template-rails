ENV["RAILS_ENV"] = "test"

require File.expand_path("../sample_app/config/environment.rb",  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

require "capybara"
require "capybara/rails"
require "capybara/rspec"
require "capybara/poltergeist"

Capybara.javascript_driver = :poltergeist
