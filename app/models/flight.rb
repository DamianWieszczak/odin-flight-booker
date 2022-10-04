class Flight < ApplicationRecord
  validates :origin_airport_id, :destination_airport_id, :start_datetime, :flight_duration, presence: true

  belongs_to :departure_airport, class_name: "Airport", foreign_key: "origin_airport_id", inverse_of: :arriving_flights
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "destination_airport_id", inverse_of: :departing_flights

  has_many :bookings
end
