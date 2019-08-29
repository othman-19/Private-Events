# frozen_string_literal: true

class AddAttendeeIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attendee_id, :integer
  end
end
