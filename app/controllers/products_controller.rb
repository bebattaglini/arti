class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
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

  def show; end

  private

  def product_params
    params.require(:product).permit(:title, :price, :location, :description, :category_id)
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end

