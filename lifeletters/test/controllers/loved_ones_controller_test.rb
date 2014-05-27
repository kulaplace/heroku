require 'test_helper'

class LovedOnesControllerTest < ActionController::TestCase
  setup do
    @loved_one = loved_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loved_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loved_one" do
    assert_difference('LovedOne.count') do
      post :create, loved_one: { first_name: @loved_one.first_name, last_name: @loved_one.last_name, user_id: @loved_one.user_id }
    end

    assert_redirected_to loved_one_path(assigns(:loved_one))
  end

  test "should show loved_one" do
    get :show, id: @loved_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loved_one
    assert_response :success
  end

  test "should update loved_one" do
    patch :update, id: @loved_one, loved_one: { first_name: @loved_one.first_name, last_name: @loved_one.last_name, user_id: @loved_one.user_id }
    assert_redirected_to loved_one_path(assigns(:loved_one))
  end

  test "should destroy loved_one" do
    assert_difference('LovedOne.count', -1) do
      delete :destroy, id: @loved_one
    end

    assert_redirected_to loved_ones_path
  end
end
