require 'rails_helper'
require 'capybara/rspec'
RSpec.feature "Forms", type: :feature do
  scenario 'User can login with registered name' do
    user = User.create(name:"example10",
                       email:'example10@gmail.com',
                       password:"password")
    visit new_user_path
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Signup'
    click_link "Log out"
    click_on 'Log in'
    fill_in 'Name', with: user.name
    click_on 'Log in'
    expect(page).to have_content("Log out")
  end
end