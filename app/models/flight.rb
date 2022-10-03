class Flight < ApplicationRecord
  validates :origin_airport_id, :destinantion_airport_id, :start_datetime, :flight_duration, presence: true
  
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
end
