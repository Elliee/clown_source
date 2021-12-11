class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :authenticate_user!
  def new
    @booking = Booking.new
  end

  def show

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @clown = Clown.find(params[:clown_id])
    @booking.clown = @clown
    if @booking.save
      flash.notice = "Booking Made!"
      redirect_to clown_path(@clown)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :clown_id)
  end
end
