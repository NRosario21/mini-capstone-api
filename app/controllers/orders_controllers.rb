class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    render :index
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price
    calculated_subtototal = price * params[:quantity].to_i
    calculated_tax = calculated_subtototal * 0.09
    calculated_total = calculated_subtototal + calculated_tax
    @order = Order.create(
      user_id: current_user.id,
      subtotal: calculated_subtototal,
      tax: calculated_tax,
      total: calculated_total,
    )
    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end
end
