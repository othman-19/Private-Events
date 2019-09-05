require 'spec_helper'
require 'rails_helper'
require 'sessions_helper'
RSpec.describe 'Sessions helper' , type: :feature do
    scenario 'valid inputs' do
      visit login_path
      fill_in 'name', with: 'user1'
      click_on 'Okey'
      visit user
      expect(page).to have_content('user1')
    end
end