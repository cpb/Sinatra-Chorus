require File.join(File.dirname(__FILE__),"..",'/spec_helper')

describe Controllers::Feature do
  it "should respond to /feature" do
    get '/feature'
    last_response.should be_ok
  end

  it "should not respond to /users" do
    get '/users'
    last_response.should_not be_ok
  end
  
  it "should not respond to put /users" do
    put '/users'
    last_response.should_not be_ok
  end

  it "should not respond  to /" do
    get '/'
    last_response.should_not be_ok
  end
end