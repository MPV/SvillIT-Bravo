require 'test_helper'

class AdversisersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adversisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adversiser" do
    assert_difference('Adversiser.count') do
      post :create, :adversiser => { }
    end

    assert_redirected_to adversiser_path(assigns(:adversiser))
  end

  test "should show adversiser" do
    get :show, :id => adversisers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => adversisers(:one).to_param
    assert_response :success
  end

  test "should update adversiser" do
    put :update, :id => adversisers(:one).to_param, :adversiser => { }
    assert_redirected_to adversiser_path(assigns(:adversiser))
  end

  test "should destroy adversiser" do
    assert_difference('Adversiser.count', -1) do
      delete :destroy, :id => adversisers(:one).to_param
    end

    assert_redirected_to adversisers_path
  end
end
