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
      redirect_to new_product_image_path(@product)
    else
      render :new
    end
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
