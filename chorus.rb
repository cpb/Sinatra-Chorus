require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'

$:.unshift(".")
require 'controllers'

class Chorus < Sinatra::Base

  include Controllers

  get "/" do
    "hello world"
  end
end

if __FILE__ == $0
  host = ARGV.shift || 'localhost'
  port = ARGV.shift || 8080
  Chorus.run! :host=>host,:port=>port
end