require 'test_helper'

class TrumpetPointsControllerTest < ActionController::TestCase
  setup do
    @trumpet_point = trumpet_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trumpet_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trumpet_point" do
    assert_difference('TrumpetPoint.count') do
      post :create, :trumpet_point => { :acts_as_acheivement => @trumpet_point.acts_as_acheivement, :acts_as_level => @trumpet_point.acts_as_level, :count => @trumpet_point.count, :name => @trumpet_point.name }
    end

    assert_redirected_to trumpet_point_path(assigns(:trumpet_point))
  end

  test "should show trumpet_point" do
    get :show, :id => @trumpet_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trumpet_point
    assert_response :success
  end

  test "should update trumpet_point" do
    put :update, :id => @trumpet_point, :trumpet_point => { :acts_as_acheivement => @trumpet_point.acts_as_acheivement, :acts_as_level => @trumpet_point.acts_as_level, :count => @trumpet_point.count, :name => @trumpet_point.name }
    assert_redirected_to trumpet_point_path(assigns(:trumpet_point))
  end

  test "should destroy trumpet_point" do
    assert_difference('TrumpetPoint.count', -1) do
      delete :destroy, :id => @trumpet_point
    end

    assert_redirected_to trumpet_points_path
  end
end
