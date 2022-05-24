class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @booking.start_date
    @booking.end_date
    @planet.name
    @planet.price_per_day
  end
end
