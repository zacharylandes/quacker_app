require 'rails_helper'

RSpec.describe "users/new.html.erb", type: :feature do
  describe'has ' do
    it 'has the new user form' do
      visit new_user_path
    expect(page).to have_content('Create Your Profile')
    end
  end
   describe'has submit buttom ' do
    it 'submit buttom produces flash message' do
      visit new_user_path
      click_button('Create Profile')
    expect(page).to have_content('Thank you for creating a profile')
    end


  end
