class AddTitleAndLocationToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :title, :text
    add_column :events, :location, :text
  end
end
