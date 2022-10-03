class FixColumnName2 < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :destinantion_airport_id, :destination_airport_id
  end
end
