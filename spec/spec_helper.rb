ENV['RACK_ENV'] = 'test'

# require our Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'features/web_helpers'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# tell Capybara about our app class
Capybara.app = Battle
