class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render template: "products/show"
  end

  def last_product
    @product = Product.last
    render template: "products/show"
  end

  def all_products
    @products = Product.all
    render template: "products/index"
  end
end
