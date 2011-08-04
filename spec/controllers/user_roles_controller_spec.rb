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

describe UserRolesController do

  # This should return the minimal set of attributes required to create a valid
  # UserRole. As you add validations to UserRole, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all user_roles as @user_roles" do
      user_role = UserRole.create! valid_attributes
      get :index
      assigns(:user_roles).should eq([user_role])
    end
  end

  describe "GET show" do
    it "assigns the requested user_role as @user_role" do
      user_role = UserRole.create! valid_attributes
      get :show, :id => user_role.id.to_s
      assigns(:user_role).should eq(user_role)
    end
  end

  describe "GET new" do
    it "assigns a new user_role as @user_role" do
      get :new
      assigns(:user_role).should be_a_new(UserRole)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_role as @user_role" do
      user_role = UserRole.create! valid_attributes
      get :edit, :id => user_role.id.to_s
      assigns(:user_role).should eq(user_role)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserRole" do
        expect {
          post :create, :user_role => valid_attributes
        }.to change(UserRole, :count).by(1)
      end

      it "assigns a newly created user_role as @user_role" do
        post :create, :user_role => valid_attributes
        assigns(:user_role).should be_a(UserRole)
        assigns(:user_role).should be_persisted
      end

      it "redirects to the created user_role" do
        post :create, :user_role => valid_attributes
        response.should redirect_to(UserRole.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_role as @user_role" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserRole.any_instance.stub(:save).and_return(false)
        post :create, :user_role => {}
        assigns(:user_role).should be_a_new(UserRole)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserRole.any_instance.stub(:save).and_return(false)
        post :create, :user_role => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_role" do
        user_role = UserRole.create! valid_attributes
        # Assuming there are no other user_roles in the database, this
        # specifies that the UserRole created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserRole.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => user_role.id, :user_role => {'these' => 'params'}
      end

      it "assigns the requested user_role as @user_role" do
        user_role = UserRole.create! valid_attributes
        put :update, :id => user_role.id, :user_role => valid_attributes
        assigns(:user_role).should eq(user_role)
      end

      it "redirects to the user_role" do
        user_role = UserRole.create! valid_attributes
        put :update, :id => user_role.id, :user_role => valid_attributes
        response.should redirect_to(user_role)
      end
    end

    describe "with invalid params" do
      it "assigns the user_role as @user_role" do
        user_role = UserRole.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserRole.any_instance.stub(:save).and_return(false)
        put :update, :id => user_role.id.to_s, :user_role => {}
        assigns(:user_role).should eq(user_role)
      end

      it "re-renders the 'edit' template" do
        user_role = UserRole.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserRole.any_instance.stub(:save).and_return(false)
        put :update, :id => user_role.id.to_s, :user_role => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_role" do
      user_role = UserRole.create! valid_attributes
      expect {
        delete :destroy, :id => user_role.id.to_s
      }.to change(UserRole, :count).by(-1)
    end

    it "redirects to the user_roles list" do
      user_role = UserRole.create! valid_attributes
      delete :destroy, :id => user_role.id.to_s
      response.should redirect_to(user_roles_url)
    end
  end

end
