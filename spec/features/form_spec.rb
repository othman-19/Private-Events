# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rspec'
RSpec.feature 'Forms', type: :feature do

  scenario 'User can login with registered name' do
    user11 = User.create(name:'user11',
                  email: 'user11@gmail.com',
                  password: 'password')
    visit login_path
    fill_in :Name, with: "user11"
    page.find("#session_name").click
    user11.reload
    expect(user11.email).to eq(user11.email)
  end
end
