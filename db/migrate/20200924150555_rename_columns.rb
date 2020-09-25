class RenameColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :event_attendances, :event_id, :attended_event_id
    rename_column :event_attendances, :user_id, :attendee_id
  end
end
