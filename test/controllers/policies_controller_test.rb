require 'test_helper'

class PoliciesControllerTest < ActionController::TestCase
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post :create, policy: { code: @policy.code, insured_id: @policy.insured_id, product_id: @policy.product_id, user_id: @policy.user_id }
    end

    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should show policy" do
    get :show, id: @policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy
    assert_response :success
  end

  test "should update policy" do
    patch :update, id: @policy, policy: { code: @policy.code, insured_id: @policy.insured_id, product_id: @policy.product_id, user_id: @policy.user_id }
    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete :destroy, id: @policy
    end

    assert_redirected_to policies_path
  end
end