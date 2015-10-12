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
    it 'sets current user if successful' do
      post :sign_in, user: {name: user.name, password: user.password}
      expect(session[:current_user_id]).to be(user.id)
    end
    it 'sets flash error if unsuccessful' do
      post :sign_in, user: {text: 'some garbage'}
      expect(flash[:error]).to_not be_nil
    end
    it 'redirects to index page'
  end
end
