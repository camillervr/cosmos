class BookingsController < ApplicationController
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
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def total_price(planet)
    period = @booking.end_date - @booking.start_date
    period.to_i * planet.price_per_day
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
