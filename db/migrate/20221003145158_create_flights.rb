class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :orign_airport_id
      t.integer :destinantion_airport_id
      t.datetime :start_datetime
      t.float :flight_duration

      t.timestamps
    end
  end
end
