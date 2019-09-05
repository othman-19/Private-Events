# frozen_string_literal: true
#add attended_event_id column to attendances table
class AddAttendedEventIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attended_event_id, :integer
  end
end
