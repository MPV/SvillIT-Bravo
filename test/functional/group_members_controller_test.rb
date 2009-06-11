require 'test_helper'

class GroupMembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_members" do
    assert_difference('GroupMembers.count') do
      post :create, :group_members => { }
    end

    assert_redirected_to group_members_path(assigns(:group_members))
  end

  test "should show group_members" do
    get :show, :id => group_members(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => group_members(:one).to_param
    assert_response :success
  end

  test "should update group_members" do
    put :update, :id => group_members(:one).to_param, :group_members => { }
    assert_redirected_to group_members_path(assigns(:group_members))
  end

  test "should destroy group_members" do
    assert_difference('GroupMembers.count', -1) do
      delete :destroy, :id => group_members(:one).to_param
    end

    assert_redirected_to group_members_path
  end
end
