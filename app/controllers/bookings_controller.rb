class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @user = @booking.user
    @offer = @booking.offer
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(book_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to @booking
    else
      render 'bookings/show'
    end
  end

  private

  def book_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
