class Chorus < Sinatra::Base

  enable :method_override

  include Controllers

  get "/" do
    "hello"
  end
end

if __FILE__ == $0
  host = ARGV.shift || 'localhost'
  port = ARGV.shift || 8080
  Chorus.run! :host=>host,:port=>port
end