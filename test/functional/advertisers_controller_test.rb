require 'test_helper'

class AdvertisersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertiser" do
    assert_difference('Advertiser.count') do
      post :create, :advertiser => { }
    end

    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  test "should show advertiser" do
    get :show, :id => advertisers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => advertisers(:one).to_param
    assert_response :success
  end

  test "should update advertiser" do
    put :update, :id => advertisers(:one).to_param, :advertiser => { }
    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  test "should destroy advertiser" do
    assert_difference('Advertiser.count', -1) do
      delete :destroy, :id => advertisers(:one).to_param
    end

    assert_redirected_to advertisers_path
  end
end
