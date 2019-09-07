# frozen_string_literal: true

require 'rails_helper'
# User model tests.
RSpec.describe User, type: :model do
  context 'Association tests' do
    describe 'User model associations' do
      it 'has many events' do
        assc = User.reflect_on_association(:created_events)
        expect(assc.macro).to eq :has_many
      end
      it 'has many attendances' do
        assc = User.reflect_on_association(:attendances)
        expect(assc.macro).to eq :has_many
      end
      it 'has many attended events' do
        assc = User.reflect_on_association(:attended_events)
        expect(assc.macro).to eq :has_many
      end
    end
  end

  context 'Validation tests' do
    subject { User.new }
    it 'is valid with valid attributes' do
      subject.name = 'Anything'
      subject.email = 'Anything@gmail.com'
      subject.password = 'password'
      expect(subject).to be_valid
    end
    it 'is not valid without a name' do
      expect(subject).to_not be_valid
    end
    it 'is not valid without email' do
      subject.name = 'Anything'
      expect(subject).to_not be_valid
    end
    it 'is not valid without password' do
      subject.name = 'Anything'
      subject.email = 'Anything@gmail.com'
      expect(subject).to_not be_valid
    end
  end
end
