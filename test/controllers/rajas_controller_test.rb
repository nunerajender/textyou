require 'test_helper'

class RajasControllerTest < ActionController::TestCase
  setup do
    @raja = rajas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rajas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raja" do
    assert_difference('Raja.count') do
      post :create, raja: { message: @raja.message, reciver: @raja.reciver, sender: @raja.sender }
    end

    assert_redirected_to raja_path(assigns(:raja))
  end

  test "should show raja" do
    get :show, id: @raja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raja
    assert_response :success
  end

  test "should update raja" do
    patch :update, id: @raja, raja: { message: @raja.message, reciver: @raja.reciver, sender: @raja.sender }
    assert_redirected_to raja_path(assigns(:raja))
  end

  test "should destroy raja" do
    assert_difference('Raja.count', -1) do
      delete :destroy, id: @raja
    end

    assert_redirected_to rajas_path
  end
end
