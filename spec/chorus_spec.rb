require File.dirname(__FILE__) + '/spec_helper'

describe Chorus do
  it "should respond to /" do
    get '/'
    last_response.should be_ok
  end
  
  it "should respond to /users" do
    get '/users'
    last_response.should be_ok
  end
  
  it "should respond to put /users" do
    put '/users'
    last_response.should be_ok
  end
  
  it "should respond to /feature" do
    get '/feature'
    last_response.should be_ok
  end
  
  it "should respond to /guess/Frank" do
    get "/guess/Frank"
    last_response.should be_ok
    last_response.body.should eql("You got me!")
  end

  it "should respond to /guess/Tim" do
    get "/guess/Tim"
    last_response.should be_ok
    last_response.body.should eql("You missed!")
  end
end