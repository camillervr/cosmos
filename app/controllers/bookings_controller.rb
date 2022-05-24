class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  # def total_price
  #   period = @booking.end_date - @booking.start_date
  #   period * @booking.planet.price_per_day
  # end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.user = current_user
    authorize @booking
    if @booking.save

    else

    end
    #redirect_to => view checkout completed
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
