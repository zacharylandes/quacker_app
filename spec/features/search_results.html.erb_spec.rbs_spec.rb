require 'rails_helper'

RSpec.feature "SearchResults.html.erbSpec.rbs", type: :feature do
  it 'should display posts containing the substring searched for' do
    new_search_results
    visit path
    fill_in("Search:", with: "MyString")
    click_on("Search:")
    expect(page).to have_content("post")
  end
end
