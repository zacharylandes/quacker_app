require 'rails_helper'

RSpec.describe "users/index.html.erb", type: :feature do
  let(:new_user) {FactoryGirl.create(:user)}
  it 'should list a user' do
    new_user
    visit users_path
    expect(page).to have_content('MyString')
  end
  it "should click user and redirect to that user's page" do
    new_user
    visit users_path
    click_on('MyString')
    expect(page).to have_content('MyString')
  end
end
