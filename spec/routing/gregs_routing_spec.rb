require "spec_helper"

describe GregsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/gregs" }.should route_to(:controller => "gregs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/gregs/new" }.should route_to(:controller => "gregs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/gregs/1" }.should route_to(:controller => "gregs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/gregs/1/edit" }.should route_to(:controller => "gregs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/gregs" }.should route_to(:controller => "gregs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/gregs/1" }.should route_to(:controller => "gregs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/gregs/1" }.should route_to(:controller => "gregs", :action => "destroy", :id => "1")
    end

  end
end
