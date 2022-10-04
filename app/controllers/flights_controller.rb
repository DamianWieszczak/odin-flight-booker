class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{ |a| [a.code, a.id] }
    @flights_dates = Flight.all.map{ |f| f.start_datetime.to_date }.uniq
    @flights = Flight.all.select{ |f|
        f.start_datetime.to_date.to_s == params[:flight_date] &&
        f.destination_airport_id == params[:arrival_airport].to_i &&
        f.origin_airport_id == params[:departure_airport].to_i
    }
  end
end
