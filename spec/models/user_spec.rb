require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creates" do
    let(:user) {FactoryGirl.build(:user)}
    it "a new user upon form subission" do
      expect{
        user.save
      }.to change{ User.count}.by(+1)
    end
  end
end
