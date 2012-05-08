# encoding: utf-8
require 'spec_helper'

describe "LayoutLinks" do

  it "shold have a Home page at '/'" do
    get '/'
    response.should be_selector('title', :content => "Home")
  end
  it "should have a Contact page at '/'" do
    get '/'
    response.should be_selector('title', :content => "Contact")
  end
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should be_selector('title', :content => "Sign up")
  end
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get layout_links_index_path
      response.status.should be(200)
    end
  end
end
