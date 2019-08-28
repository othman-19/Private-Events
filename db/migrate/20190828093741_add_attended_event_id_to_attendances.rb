class AddAttendedEventIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attended_event_id, :integer
  end
end
