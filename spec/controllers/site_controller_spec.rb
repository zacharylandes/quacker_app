require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #sign_in' do
    let!(:user) { FactoryGirl.create(:user)}

    context "legit sign in" do
      before { post :sign_in, user: {name: user.name, password: user.password} }
      it 'sets current user if successful' do
        expect(session[:current_user_id]).to be(user.id)
      end
      it 'redirects to index page' do
        expect(response).to redirect_to(root_path)
      end
    end
    context "invalid sign in" do
      before { post :sign_in, user: {text: 'some garbage'} }
      it 'sets flash error if unsuccessful' do
        expect(flash[:error]).to_not be_nil
      end
    end
  end
end
