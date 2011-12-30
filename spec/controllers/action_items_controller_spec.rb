require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ActionItemsController do

  # This should return the minimal set of attributes required to create a valid
  # ActionItem. As you add validations to ActionItem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all action_items as @action_items" do
      action_item = ActionItem.create! valid_attributes
      get :index
      assigns(:action_items).should eq([action_item])
    end
  end

  describe "GET show" do
    it "assigns the requested action_item as @action_item" do
      action_item = ActionItem.create! valid_attributes
      get :show, :id => action_item.id
      assigns(:action_item).should eq(action_item)
    end
  end

  describe "GET new" do
    it "assigns a new action_item as @action_item" do
      get :new
      assigns(:action_item).should be_a_new(ActionItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested action_item as @action_item" do
      action_item = ActionItem.create! valid_attributes
      get :edit, :id => action_item.id
      assigns(:action_item).should eq(action_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ActionItem" do
        expect {
          post :create, :action_item => valid_attributes
        }.to change(ActionItem, :count).by(1)
      end

      it "assigns a newly created action_item as @action_item" do
        post :create, :action_item => valid_attributes
        assigns(:action_item).should be_a(ActionItem)
        assigns(:action_item).should be_persisted
      end

      it "redirects to the created action_item" do
        post :create, :action_item => valid_attributes
        response.should redirect_to(ActionItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved action_item as @action_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActionItem.any_instance.stub(:save).and_return(false)
        post :create, :action_item => {}
        assigns(:action_item).should be_a_new(ActionItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ActionItem.any_instance.stub(:save).and_return(false)
        post :create, :action_item => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested action_item" do
        action_item = ActionItem.create! valid_attributes
        # Assuming there are no other action_items in the database, this
        # specifies that the ActionItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ActionItem.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => action_item.id, :action_item => {'these' => 'params'}
      end

      it "assigns the requested action_item as @action_item" do
        action_item = ActionItem.create! valid_attributes
        put :update, :id => action_item.id, :action_item => valid_attributes
        assigns(:action_item).should eq(action_item)
      end

      it "redirects to the action_item" do
        action_item = ActionItem.create! valid_attributes
        put :update, :id => action_item.id, :action_item => valid_attributes
        response.should redirect_to(action_item)
      end
    end

    describe "with invalid params" do
      it "assigns the action_item as @action_item" do
        action_item = ActionItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActionItem.any_instance.stub(:save).and_return(false)
        put :update, :id => action_item.id, :action_item => {}
        assigns(:action_item).should eq(action_item)
      end

      it "re-renders the 'edit' template" do
        action_item = ActionItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ActionItem.any_instance.stub(:save).and_return(false)
        put :update, :id => action_item.id, :action_item => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested action_item" do
      action_item = ActionItem.create! valid_attributes
      expect {
        delete :destroy, :id => action_item.id
      }.to change(ActionItem, :count).by(-1)
    end

    it "redirects to the action_items list" do
      action_item = ActionItem.create! valid_attributes
      delete :destroy, :id => action_item.id
      response.should redirect_to(action_items_url)
    end
  end

end