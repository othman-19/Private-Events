# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rspec'
RSpec.describe 'events managments', type: :feature do
  scenario 'events have all events index' do
    visit events_path
    sleep(2)
    expect(page).to have_content('All Events')
  end
  scenario 'events have Past events index' do
    visit events_path
    sleep(2)
    expect(page).to have_content('Past Events')
  end
  scenario 'events have Future events index' do
    visit events_path
    sleep(2)
    expect(page).to have_content('Future Events')
  end
  scenario 'Not logged user should not see create new event form' do
    visit events_path
    click_link "Create New Event"
    expect(page).to have_content('You are not logged, try to Log in here!')
  end
  scenario 'Not registred user should not see create new event form' do
    visit events_path
    click_link "Create New Event"
    expect(page).to have_content('If you are not a member, Sign up here!')
  end
end
