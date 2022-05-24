class PlanetsController < ApplicationController
  # before_action :set_list, only: [:show, :destroy]
  def index
    @planet = policy_scope(Planet)
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
    authorize @planet
  end

  def new
    @planet = Planet.new
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    authorize @planet
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    authorize @planet
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(
      :name,
      :type,
      :temperature,
      :orbital_period,
      :radius,
      :around_planet,
      :moons,
      :surface_area,
      :price_per_day,
      :description,
      :object,
      :photo
    )
  end
end
