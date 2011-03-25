module Controllers
  class Feature < Sinatra::Base
    get "/feature" do
      "your super feature!"
    end

    get '/guess/:who' do
      pass unless params[:who] == 'Frank'
      'You got me!'
    end
  end
end