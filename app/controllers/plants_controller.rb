class PlantsController < ApplicationController
  wrap_parameters format: []
  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create
    new_plant = Plant.create(params.permit(:name, :price, :image))
    render json: new_plant, status: :created
  end
end
