class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|

      t.timestamps
      t.belongs_to :event_attendee, foreign_key: { to_table: :users }
      t.belongs_to :attended_event, foreign_key: { to_table: :events }
    end
  end
end
