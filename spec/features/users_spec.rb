require 'rails_helper'
# require 'pry'

RSpec.describe 'users', type: :feature, js: true do
  before do
    visit("/users")
  end

  it 'finds a index page' do
    expect(page).to have_selector('h1', text: 'Listing Users')
    click_on('New User')
    expect(page).to have_selector('h1', text: 'New User')
  end
end
