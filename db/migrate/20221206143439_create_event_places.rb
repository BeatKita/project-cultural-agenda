class CreateEventPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :event_places do |t|
      t.string :name, limit: 30
      t.string :description, limit: 250
      t.string :place_name, limit: 100
      t.string :open_hour
      t.string :close_hour
      
      t.timestamps
    end
  end
end
