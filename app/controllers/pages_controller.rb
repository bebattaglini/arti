class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :panel]
  skip_before_action :authenticate_artist!, only: [:home, :dashboard]

  def home
  end

  def dashboard
  end

  def panel
    @myproducts = []
    @myproducts = Product.all.where(artist_id: current_artist.id)
    authorize @myproducts
    @myproducts = @myproducts.order('created_at DESC')
  end
end
