# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  # Event model associations Tests.
  context 'He have association with creator' do
    it 'event foreign key should equal to user id' do
      event8 = user8.created_events.create(title: 'event8',
                                           description: 'event8 description',
                                           date: '01-01-2020',
                                           location: 'remote')
      expect(event8.creator_id).to eq user8.id
    end
  end

  # User model validations Tests.
  context 'he must have valid information' do
    before(:each) do
      event9 = Event.create(title: 'event9',
                            description: 'event9 description',
                            date: '01-01-2020',
                            location: 'remote')
    end

    it 'should be valid ' do
      Event.build(:event).should be_valid
    end
  end
end
