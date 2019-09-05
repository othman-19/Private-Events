# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe 'events managments', type: :feature do
  scenario 'events managments have all events index' do
    visit events_path
    expect(page).to have_content('All Events')
  end
  scenario 'events managments have Past events index' do
    visit events_path
    expect(page).to have_content('Past Events')
  end
  scenario 'events managments have Future events index' do
    visit events_path
    expect(page).to have_content('Future Events')
  end
end
