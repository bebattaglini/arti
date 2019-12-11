class ArtistsController < ApplicationController
  def index
    @artists = Artists.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def featured
    @featured = Artist.all.where(rating: 5)
  end
end
