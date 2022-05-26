class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy accept decline]
  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(booking_params)
    @booking.planet = @planet
    @booking.total_price = total_price(@planet)
    @booking.user = @user
    @booking.status = "Space Mission Pending"
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  def accept
    authorize @booking
    @booking.update(status: "Space Mission Accepted")
    redirect_to dashboard_path
  end

  def decline
    authorize @booking
    @booking.update(status: "Space Mission Denied")
    redirect_to dashboard_path
  end

  private

  def total_price(planet)
    period = @booking.end_date - @booking.start_date
    period.to_i * planet.price_per_day
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :guests)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
