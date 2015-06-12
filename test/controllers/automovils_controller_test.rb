require 'test_helper'

class AutomovilsControllerTest < ActionController::TestCase
  setup do
    @automovil = automovils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:automovils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create automovil" do
    assert_difference('Automovil.count') do
      post :create, automovil: { ano: @automovil.ano, marca: @automovil.marca, modelo: @automovil.modelo, tipo: @automovil.tipo }
    end

    assert_redirected_to automovil_path(assigns(:automovil))
  end

  test "should show automovil" do
    get :show, id: @automovil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @automovil
    assert_response :success
  end

  test "should update automovil" do
    patch :update, id: @automovil, automovil: { ano: @automovil.ano, marca: @automovil.marca, modelo: @automovil.modelo, tipo: @automovil.tipo }
    assert_redirected_to automovil_path(assigns(:automovil))
  end

  test "should destroy automovil" do
    assert_difference('Automovil.count', -1) do
      delete :destroy, id: @automovil
    end

    assert_redirected_to automovils_path
  end
end
