# frozen_string_literal: true
#User Model
class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances, foreign_key: 'attendee_id'
  has_many :attended_events, through: :attendances

  validates :name,
            presence: true,
            length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def self.create_digest(string)
    Digest::SHA1.hexdigest string
  end

  def remember
    self.token = User.new_token
    self.remember_digest = User.create_digest(token)
  end

  def forget
    self.remember_digest = nil
  end
end
