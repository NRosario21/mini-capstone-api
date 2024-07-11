class ProductsController < ApplicationController

  # def last_product
  #   @product = Product.last
  #   render template: "products/show"
  # end

  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: "Bench",
      price: 299,
      image_url: "https://dks.scene7.com/is/image/dkscdn/17AU6UTHSTLTYBNCHWGH_is?wid=1400\u0026fmt=jpg",
      description: "deluxe",
    )
    render :show
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end
end
