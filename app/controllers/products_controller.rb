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
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )

    if @product.valid?
      render :show, status: 200
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  # def create
  #   @product = Product.create(
  #     name: "Bench",
  #     price: 299,
  #     image_url: "https://dks.scene7.com/is/image/dkscdn/17AU6UTHSTLTYBNCHWGH_is?wid=1400\u0026fmt=jpg",
  #     description: "deluxe",
  #   )
  #   render :show

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
    )

    if @product.valid?
      render :show, status: 200
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Successfully destroyed product" }
  end
end
