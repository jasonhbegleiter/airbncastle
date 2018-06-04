class CastlesController < ApplicationController
    before_action :set_castle, only:[:destroy, :edit, :show, :update]
  def index
    @castles = Castle.all.order({city: desc})
  end

  def show
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.create!(castle_params)
    redirect_to castle_path(@castle)
  end

  def edit
  end

  def update
    @castle.update(castle_params)
    redirect_to castle_path(@castle)
  end

  def destroy
    @castle.destroy
    redirect_to castles_path
  end

  private
  def set_castle
    @castle = Castle.find(params[:id])
  end

  def castle_params
    params.require(:castle).permit(:name, :summary, :price_per_night, :address, :no_of_guests, :no_of_bedrooms, :no_of_bathrooms, :city, :user)
  end
end
