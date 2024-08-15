require "test_helper"

class CreateCartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get create_carted_products_user_id:integer_url
    assert_response :success
  end

  test "should get product_id:integer" do
    get create_carted_products_product_id:integer_url
    assert_response :success
  end

  test "should get quantity:integer" do
    get create_carted_products_quantity:integer_url
    assert_response :success
  end

  test "should get status" do
    get create_carted_products_status_url
    assert_response :success
  end

  test "should get order_id:integer" do
    get create_carted_products_order_id:integer_url
    assert_response :success
  end
end
