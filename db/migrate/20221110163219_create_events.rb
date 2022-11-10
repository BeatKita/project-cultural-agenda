class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :place_name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
