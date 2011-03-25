class Chorus < Sinatra::Base

  enable :method_override

  include Controllers

  get "/" do
    "Hello, beautiful world!"
  end
end