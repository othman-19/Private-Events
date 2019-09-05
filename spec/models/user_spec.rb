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
      event8 = user8.created_events.create(title: 'event1',
                                           description: 'event8 description',
                                           date: '01-01-2020',
                                           location: 'remote')
      expect(user8.created_events.count).to eq 1
    end
  end

  # User model validations Tests.
  context 'he must have valid information' do
    before(:each) do
      user9 = User.create!(name: 'user9',
                           email: 'user9@gmail.com',
                           password: 'password')
    end

    it 'should be valid ' do
      User.build(:user).should be_valid
    end
  end
end
