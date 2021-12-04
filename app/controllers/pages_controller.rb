class PagesController < ApplicationController
  def home
  end

  def dashboard
    if current_user
      @user = current_user
      @clowns = @user.clowns
      @bookings = Booking.where(user: @user)
    else
      redirect_to new_user_session_url
    end
  end
end
