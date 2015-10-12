require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  describe "Post sign_up" do

    let!(:new_user) {FactoryGirl.create(:user)}
    it "sets current user if succesfull" do
      post :sign_up,  user: {name: new_user.name, password: new_user.password}
      expect(session[:current_user_id]).to eq(new_user[:id])
    end
  end
end
