class PlanetsController < ApplicationController
  # before_action :set_list, only: [:show, :destroy]
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :type, :temperature, :orbital_period, :radius, :around_planet, :moons, :surface_area, :price_per_day, :description)
  end
end
