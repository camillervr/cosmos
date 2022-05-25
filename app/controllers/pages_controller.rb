class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @my_planets = @user.planets
    @my_booked_planets = @user.booked_planets
    @my_rented_planets = @user.rented_planets
  end
end

