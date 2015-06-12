require 'test_helper'

class ShopPointsControllerTest < ActionController::TestCase
  setup do
    @shop_point = shop_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_point" do
    assert_difference('ShopPoint.count') do
      post :create, shop_point: { city: @shop_point.city, comuna: @shop_point.comuna, image: @shop_point.image, name: @shop_point.name, rut: @shop_point.rut, street: @shop_point.street }
    end

    assert_redirected_to shop_point_path(assigns(:shop_point))
  end

  test "should show shop_point" do
    get :show, id: @shop_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_point
    assert_response :success
  end

  test "should update shop_point" do
    patch :update, id: @shop_point, shop_point: { city: @shop_point.city, comuna: @shop_point.comuna, image: @shop_point.image, name: @shop_point.name, rut: @shop_point.rut, street: @shop_point.street }
    assert_redirected_to shop_point_path(assigns(:shop_point))
  end

  test "should destroy shop_point" do
    assert_difference('ShopPoint.count', -1) do
      delete :destroy, id: @shop_point
    end

    assert_redirected_to shop_points_path
  end
end
