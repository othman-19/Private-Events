# frozen_string_literal: true

require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = :user1
    @event = @user.events.build(title: 'User7 event', description: 'User7 event description')
  end

  test 'should be valid' do
    assert @event.valid?
  end
end
