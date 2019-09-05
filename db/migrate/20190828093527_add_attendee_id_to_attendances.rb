# frozen_string_literal: true

# add attendee_id column to attendances table
class AddAttendeeIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attendee_id, :integer
  end
end
