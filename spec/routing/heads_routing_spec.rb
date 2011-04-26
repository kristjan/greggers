require "spec_helper"

describe HeadsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/heads" }.should route_to(:controller => "heads", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/heads/new" }.should route_to(:controller => "heads", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/heads/1" }.should route_to(:controller => "heads", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/heads/1/edit" }.should route_to(:controller => "heads", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/heads" }.should route_to(:controller => "heads", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/heads/1" }.should route_to(:controller => "heads", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/heads/1" }.should route_to(:controller => "heads", :action => "destroy", :id => "1")
    end

  end
end
