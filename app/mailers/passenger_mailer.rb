class PassengerMailer < ApplicationMailer
  default from: "odinflightbooker@example.com"

  def confirmation_email
    @booking = params[:booking]
    mail(to: @booking.passengers.pluck(:email), subject: 'Your booking has been confirmed')
  end


end
