require 'test_helper'

class StoreUsersControllerTest < ActionController::TestCase
  setup do
    @store_user = store_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_user" do
    assert_difference('StoreUser.count') do
      post :create, store_user: { store_id: @store_user.store_id, user_id: @store_user.user_id }
    end

    assert_redirected_to store_user_path(assigns(:store_user))
  end

  test "should show store_user" do
    get :show, id: @store_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_user
    assert_response :success
  end

  test "should update store_user" do
    patch :update, id: @store_user, store_user: { store_id: @store_user.store_id, user_id: @store_user.user_id }
    assert_redirected_to store_user_path(assigns(:store_user))
  end

  test "should destroy store_user" do
    assert_difference('StoreUser.count', -1) do
      delete :destroy, id: @store_user
    end

    assert_redirected_to store_users_path
  end
end
