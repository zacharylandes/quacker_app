require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  describe "Post sign_up" do

    context "valid login" do
      let(:new_user) {FactoryGirl.create(:user)}
      it "sets current user if succesfull" do
        post :log_in,  user: {name: new_user.name, password: new_user.password}
        expect(session[:current_user_id]).to eq(new_user[:id])
      end
    end

    context "invalid login" do
      before { post :log_in, user: {text: 'some garbage'} }
      it 'sets flash error if unsuccessful' do
        expect(flash[:error]).to_not be_nil
      end
    end
  end
end

