require 'test_helper'

class Administrator::UsersControllerTest < ActionController::TestCase
  setup do
    @administrator_user = administrator_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrator_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrator_user" do
    assert_difference('Administrator::User.count') do
      post :create, administrator_user: {  }
    end

    assert_redirected_to administrator_user_path(assigns(:administrator_user))
  end

  test "should show administrator_user" do
    get :show, id: @administrator_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrator_user
    assert_response :success
  end

  test "should update administrator_user" do
    patch :update, id: @administrator_user, administrator_user: {  }
    assert_redirected_to administrator_user_path(assigns(:administrator_user))
  end

  test "should destroy administrator_user" do
    assert_difference('Administrator::User.count', -1) do
      delete :destroy, id: @administrator_user
    end

    assert_redirected_to administrator_users_path
  end
end
