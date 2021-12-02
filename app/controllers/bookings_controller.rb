class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ edit update destroy]
  def new
    @booking = Booking.new
  end

 def create
  @booking = Bookmark.new(booking_params)
  @booking.user = current_user
  @clown = Clown.find(params[:clown_id])
  @booking.clown = @clown
  if @booking.save
    redirect_to clown_path(@clown)
  else
    render :new
  end
 end

 def edit
 end

 def update
  @booking.update(booking_params)
  redirect_to booking_path(@booking)
 end

 def destroy
  @booking.destroy
  redirect_to bookings_path
 end

 private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end