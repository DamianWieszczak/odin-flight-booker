class AddAirportForeignKeysToFlights < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :origin_airport_id
    add_foreign_key :flights, :airports, column: :destination_airport_id
  end
end
