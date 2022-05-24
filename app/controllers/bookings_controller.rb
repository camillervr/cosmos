class BookingsController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
    authorize @booking
  end

  def total_price
    period = @booking.end_date - @booking.start_date
    period * @booking.planet.price_per_day
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.user = @user
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
