require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get products_all_url
    assert_response :success
  end

  test "should get details" do
    get products_details_url
    assert_response :success
  end

  test "should get info" do
    get products_info_url
    assert_response :success
  end

  test "should get new" do
    get products_new_url
    assert_response :success
  end

end
