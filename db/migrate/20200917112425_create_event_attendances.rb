class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|
      t.references :events, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
