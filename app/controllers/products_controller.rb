class ProductsController < ApplicationController
  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.artist = current_user
    @product.available = true
    if @product.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def my_products
    @artist = current_user
    @products = Products.all
    @myproducts = @products.where(artist: @artist.id)
    authorize @myproducts
    @mytips = @mytips.order('created_at DESC')
  end

  private

  def product_params
    params.require(:product).permit(:title, :price, :location, :description, :category_id)
  end

  def set_tip
    @product = Product.find(params[:id])
    authorize @product
  end
end

