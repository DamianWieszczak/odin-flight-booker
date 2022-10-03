class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: :origin_airport_id, class_name: "Flight", dependent: :destroy
  has_many :arriving_flights, foreign_key: :destination_airport_id, class_name: "Flight", dependent: :destroy

  validates :code, :location, presence: true
end
