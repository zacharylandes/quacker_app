require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    let(:user) {FactoryGirl.create(:user)}


  describe "GET #new" do
     it "redirects to new users profile" do
      expect(response).to redirect_to(user_path(user[:id]))
    end
  end

  describe "create" do
    it "returns http success" do
        post :show
      expect(response).to redirect_to(user_path)
      end
     end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to render_template('user_path')
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
