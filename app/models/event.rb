# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendances, foreign_key: 'attended_event_id'
  has_many :attendees, through: :attendances, foreign_key: 'attendee_id'

  scope :past, -> { where('date < ?', DateTime.now) }
  scope :upcoming, -> { where('date > ?', DateTime.now) }
end
