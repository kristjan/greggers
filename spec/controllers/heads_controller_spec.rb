require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HeadsController do

  def mock_head(stubs={})
    @mock_head ||= mock_model(Head, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all heads as @heads" do
      Head.stub(:all) { [mock_head] }
      get :index
      assigns(:heads).should eq([mock_head])
    end
  end

  describe "GET show" do
    it "assigns the requested head as @head" do
      Head.stub(:find).with("37") { mock_head }
      get :show, :id => "37"
      assigns(:head).should be(mock_head)
    end
  end

  describe "GET new" do
    it "assigns a new head as @head" do
      Head.stub(:new) { mock_head }
      get :new
      assigns(:head).should be(mock_head)
    end
  end

  describe "GET edit" do
    it "assigns the requested head as @head" do
      Head.stub(:find).with("37") { mock_head }
      get :edit, :id => "37"
      assigns(:head).should be(mock_head)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created head as @head" do
        Head.stub(:new).with({'these' => 'params'}) { mock_head(:save => true) }
        post :create, :head => {'these' => 'params'}
        assigns(:head).should be(mock_head)
      end

      it "redirects to the created head" do
        Head.stub(:new) { mock_head(:save => true) }
        post :create, :head => {}
        response.should redirect_to(head_url(mock_head))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved head as @head" do
        Head.stub(:new).with({'these' => 'params'}) { mock_head(:save => false) }
        post :create, :head => {'these' => 'params'}
        assigns(:head).should be(mock_head)
      end

      it "re-renders the 'new' template" do
        Head.stub(:new) { mock_head(:save => false) }
        post :create, :head => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested head" do
        Head.stub(:find).with("37") { mock_head }
        mock_head.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :head => {'these' => 'params'}
      end

      it "assigns the requested head as @head" do
        Head.stub(:find) { mock_head(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:head).should be(mock_head)
      end

      it "redirects to the head" do
        Head.stub(:find) { mock_head(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(head_url(mock_head))
      end
    end

    describe "with invalid params" do
      it "assigns the head as @head" do
        Head.stub(:find) { mock_head(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:head).should be(mock_head)
      end

      it "re-renders the 'edit' template" do
        Head.stub(:find) { mock_head(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested head" do
      Head.stub(:find).with("37") { mock_head }
      mock_head.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the heads list" do
      Head.stub(:find) { mock_head }
      delete :destroy, :id => "1"
      response.should redirect_to(heads_url)
    end
  end

end
