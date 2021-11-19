class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @hide_navbar = true
  end

  def profile
    @profile_user = current_user
    @offerscreated = Offer.where(["user_id = '%s'", @profile_user.id])
    @hide_footer = true
  end

  def accept
    @profile_user = current_user
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save!
    redirect_to '/profile'
  end

  def reject
    @profile_user = current_user
    @booking = Booking.find(params[:id])
    @booking.status = 'rejected'
    @booking.save!
    redirect_to '/profile'
  end
end
