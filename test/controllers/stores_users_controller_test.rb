require 'test_helper'

class StoresUsersControllerTest < ActionController::TestCase
  setup do
    @stores_user = stores_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stores_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stores_user" do
    assert_difference('StoresUser.count') do
      post :create, stores_user: { store_id: @stores_user.store_id, user_id: @stores_user.user_id }
    end

    assert_redirected_to stores_user_path(assigns(:stores_user))
  end

  test "should show stores_user" do
    get :show, id: @stores_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stores_user
    assert_response :success
  end

  test "should update stores_user" do
    patch :update, id: @stores_user, stores_user: { store_id: @stores_user.store_id, user_id: @stores_user.user_id }
    assert_redirected_to stores_user_path(assigns(:stores_user))
  end

  test "should destroy stores_user" do
    assert_difference('StoresUser.count', -1) do
      delete :destroy, id: @stores_user
    end

    assert_redirected_to stores_users_path
  end
end
