# $LOAD_PATH.unshift(File.dirname(__FILE__))
# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "rubygems"
require "bundler/setup"

require 'sofa'
require 'fakeweb'
require 'crack'

FakeWeb.allow_net_connect = false

RSpec.configure do |config|
  config.mock_with :rspec
end