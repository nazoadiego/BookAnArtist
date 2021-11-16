class OffersController < ApplicationController
  def index
    @offers = Offer.all
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to @offer
    else
      render 'offers/show'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:artist_name, :description, photos: [])
  end
end
