class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    params[:num_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
      flash.now[:alert] = "Something went wrong"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :booking_id, :name, :email])
    end

end
