class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    raise
    @offer.save
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:artist_name, :description)
  end
end
