class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, limit: 40
      t.string :description, limit: 250
      t.string :place_name, limit: 30
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
