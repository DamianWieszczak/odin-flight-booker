class Flight < ApplicationRecord
  validates :origin_airport_id, :destination_airport_id, :start_datetime, :flight_duration, presence: true

  belongs_to :departure_airport, class_name: "Airport", foreign_key: "origin_airport_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "destination_airport_id"
end
