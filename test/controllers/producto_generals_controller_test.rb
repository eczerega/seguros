require 'test_helper'

class ProductoGeneralsControllerTest < ActionController::TestCase
  setup do
    @producto_general = producto_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_general" do
    assert_difference('ProductoGeneral.count') do
      post :create, producto_general: { filtro1: @producto_general.filtro1, filtro2: @producto_general.filtro2, filtro3: @producto_general.filtro3, filtro4: @producto_general.filtro4, filtro5: @producto_general.filtro5, filtro6: @producto_general.filtro6 }
    end

    assert_redirected_to producto_general_path(assigns(:producto_general))
  end

  test "should show producto_general" do
    get :show, id: @producto_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_general
    assert_response :success
  end

  test "should update producto_general" do
    patch :update, id: @producto_general, producto_general: { filtro1: @producto_general.filtro1, filtro2: @producto_general.filtro2, filtro3: @producto_general.filtro3, filtro4: @producto_general.filtro4, filtro5: @producto_general.filtro5, filtro6: @producto_general.filtro6 }
    assert_redirected_to producto_general_path(assigns(:producto_general))
  end

  test "should destroy producto_general" do
    assert_difference('ProductoGeneral.count', -1) do
      delete :destroy, id: @producto_general
    end

    assert_redirected_to producto_generals_path
  end
end
