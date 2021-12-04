class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @clowns = @user.clowns
    @bookings = Booking.where(user_id: @user.id)
  end
end
