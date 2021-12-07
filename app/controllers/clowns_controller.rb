class ClownsController < ApplicationController
  before_action :set_clown, only: %i[show edit update destroy]

  def index
    @clowns = Clown.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @clown = Clown.new
  end

  def create
    @clown = Clown.new(clown_params)
    @clown.user = current_user
    if @clown.save
      redirect_to clown_path(@clown)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @clown.update(clown_params)
    redirect_to clown_path(@clown)
  end

  def destroy
    @clown.destroy
    redirect_to clowns_path
  end

  private

  def set_clown
    @clown = Clown.find(params[:id])
  end

  def clown_params
    params.require(:clown).permit(:name, :price, :description, photos: [])
  end
end
