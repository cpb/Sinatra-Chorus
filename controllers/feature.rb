module Controllers
  class Feature < Sinatra::Base
    get "/feature" do
      "your super feature!"
    end
  end
end