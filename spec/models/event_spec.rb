# frozen_string_literal: true

require 'rails_helper'

# Event model tests.
RSpec.describe Event, type: :model do
  context 'Association tests' do
    describe 'Event model associations' do
      it 'belongs to creator' do
        assc = Event.reflect_on_association(:creator)
        expect(assc.macro).to eq :belongs_to
      end
      it 'has many attendances' do
        assc = Event.reflect_on_association(:attendances)
        expect(assc.macro).to eq :has_many
      end
      it 'has many attendees' do
        assc = Event.reflect_on_association(:attendees)
        expect(assc.macro).to eq :has_many
      end
    end
  end
  context 'Validation tests' do
    subject { Event.new }
    let(:event_creator) { User.new(name: 'event_creator', email: 'creator@gmail.com', password: 'password') }
    it 'is valid with valid attributes' do
      subject.title = 'Anything'
      subject.description = 'Anything description'
      subject.date = DateTime.now
      subject.location = 'Remote'
      subject.creator = event_creator
      expect(subject).to be_valid
    end
    it 'is not valid without a title' do
      expect(subject).to_not be_valid
    end
    it 'is not valid without a description' do
      subject.title = 'Anything'
      expect(subject).to_not be_valid
    end
    it 'is not valid without a date' do
      subject.title = 'Anything'
      subject.description = 'Lorem ipsum dolor sit amet'
      expect(subject).to_not be_valid
    end
    it 'is not valid without a location' do
      subject.title = 'Anything'
      subject.description = 'Lorem ipsum dolor sit amet'
      subject.date = DateTime.now
      expect(subject).to_not be_valid
    end
  end
end
