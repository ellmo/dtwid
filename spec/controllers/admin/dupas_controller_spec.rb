require 'spec_helper'

describe Admin::DupasController do

  describe "GET 'indesh'" do
    it "should be successful" do
      get 'indesh'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

end
