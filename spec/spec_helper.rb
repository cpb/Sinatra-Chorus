require File.join(File.dirname(__FILE__), '..', 'environment.rb')

require 'rack/test'
require 'rspec'

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    described_class
  end

  config.before(:each) do
    described_class.set :environment, :test
    described_class.set :run, false
    described_class.set :raise_errors, true
    described_class.set :logging, false
  end
end