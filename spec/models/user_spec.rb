# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # User model associations Tests.
  context 'He can build events' do
    user8 = User.create!(name: 'user8',
                         email: 'user8@gmail.com',
                         password: 'password')

    it 'has none to begin with' do
      expect(user8.created_events.count).to eq 0
    end

    it 'has one event after creation' do
      expect(user8.created_events.count).to eq 1
    end
  end

  # User model validations Tests.
  context 'he must have valid information' do
    it 'should be valid ' do
      User.build(:user).should be_valid
    end
  end
end
