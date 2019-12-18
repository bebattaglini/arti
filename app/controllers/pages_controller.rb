class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
  end

  def panel
    @myproducts = []
    @myproducts = Product.all.where(user_id: current_user.id)
    authorize @myproducts
    @myproducts = @myproducts.order('created_at DESC')
  end

end
