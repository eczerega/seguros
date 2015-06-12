require 'test_helper'

class InsuredsControllerTest < ActionController::TestCase
  setup do
    @insured = insureds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insureds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insured" do
    assert_difference('Insured.count') do
      post :create, insured: { address: @insured.address, cel: @insured.cel, email: @insured.email, last_name: @insured.last_name, name: @insured.name, phone: @insured.phone, rut: @insured.rut }
    end

    assert_redirected_to insured_path(assigns(:insured))
  end

  test "should show insured" do
    get :show, id: @insured
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insured
    assert_response :success
  end

  test "should update insured" do
    patch :update, id: @insured, insured: { address: @insured.address, cel: @insured.cel, email: @insured.email, last_name: @insured.last_name, name: @insured.name, phone: @insured.phone, rut: @insured.rut }
    assert_redirected_to insured_path(assigns(:insured))
  end

  test "should destroy insured" do
    assert_difference('Insured.count', -1) do
      delete :destroy, id: @insured
    end

    assert_redirected_to insureds_path
  end
end
