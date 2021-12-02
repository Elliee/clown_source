class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @clowns = @user.clowns
    @bookings = Booking.where(users_id: @user.id)
  end
end
