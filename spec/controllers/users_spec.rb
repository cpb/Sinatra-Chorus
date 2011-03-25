require File.join(File.dirname(__FILE__),"..",'/spec_helper')

describe Controllers::Users do
  it "should respond to /users" do
    get '/users'
    last_response.should be_ok
  end
  
  it "should respond to put /users" do
    put '/users'
    last_response.should be_ok
  end
  
  it "should not respond to /feature" do
    get '/feature'
    last_response.should_not be_ok
  end

  it "should not respond to /" do
    get '/'
    last_response.should_not be_ok
  end

  it "should respond to /guess/Frank" do
    get "/guess/Frank"
    last_response.should be_ok
    last_response.body.should eql("You missed!")
    # this is the splat responder
  end

  it "should respond to /guess/Tim" do
    get "/guess/Tim"
    last_response.should be_ok
    last_response.body.should eql("You missed!")
  end
end