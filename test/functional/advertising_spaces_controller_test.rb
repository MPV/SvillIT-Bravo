require 'test_helper'

class AdvertisingSpacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertising_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertising_space" do
    assert_difference('AdvertisingSpace.count') do
      post :create, :advertising_space => { }
    end

    assert_redirected_to advertising_space_path(assigns(:advertising_space))
  end

  test "should show advertising_space" do
    get :show, :id => advertising_spaces(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => advertising_spaces(:one).to_param
    assert_response :success
  end

  test "should update advertising_space" do
    put :update, :id => advertising_spaces(:one).to_param, :advertising_space => { }
    assert_redirected_to advertising_space_path(assigns(:advertising_space))
  end

  test "should destroy advertising_space" do
    assert_difference('AdvertisingSpace.count', -1) do
      delete :destroy, :id => advertising_spaces(:one).to_param
    end

    assert_redirected_to advertising_spaces_path
  end
end
