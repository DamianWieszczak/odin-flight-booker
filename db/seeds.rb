# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all
Flight.destroy_all

puts "Seeding..."

Airport.create(code: "GDN", location: "Gdansk")
Airport.create(code: "WRO", location: "Wroclaw")
Airport.create(code: "POZ", location: "Poznan Lawica")
Airport.create(code: "KRK", location: "Krakow Balice")
Airport.create(code: "LHR", location: "London Heathrow")
Airport.create(code: "JFK", location: "New York JFK")

Flight.create([
  {
    origin_airport_id: Airport.find_by(code: "GDN").id,
    destination_airport_id: Airport.find_by(code: "LHR").id,
    start_datetime: DateTime.now + 60.days,
    flight_duration: "2,5"
  },
  {
    origin_airport_id: Airport.find_by(code: "WRO").id,
    destination_airport_id: Airport.find_by(code: "GDN").id,
    start_datetime: DateTime.now + 70.days,
    flight_duration: "1"
  },
  {
    origin_airport_id: Airport.find_by(code: "POZ").id,
    destination_airport_id: Airport.find_by(code: "KRK").id,
    start_datetime: DateTime.now + 80.days,
    flight_duration: "1"
  },
  {
    origin_airport_id: Airport.find_by(code: "KRK").id,
    destination_airport_id: Airport.find_by(code: "JFK").id,
    start_datetime: DateTime.now + 100.days,
    flight_duration: "11,5"
  },
  {
    origin_airport_id: Airport.find_by(code: "JFK").id,
    destination_airport_id: Airport.find_by(code: "GDN").id,
    start_datetime: DateTime.now + 150.days,
    flight_duration: "11,5"
  },
])

puts "Seeding done."