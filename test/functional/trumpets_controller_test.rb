# require 'test_helper'

# class TrumpetsControllerTest < ActionController::TestCase
#   setup do
#     @trumpet = trumpets(:one)
#   end

#   test "should get index" do
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:trumpets)
#   end

#   test "should get new" do
#     get :new
#     assert_response :success
#   end

#   test "should create trumpet" do
#     assert_difference('Trumpet.count') do
#       post :create, :trumpet => { :gamified_id => @trumpet.gamified_id, :gamified_table => @trumpet.gamified_table }
#     end

#     assert_redirected_to trumpet_path(assigns(:trumpet))
#   end

#   test "should show trumpet" do
#     get :show, :id => @trumpet
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit, :id => @trumpet
#     assert_response :success
#   end

#   test "should update trumpet" do
#     put :update, :id => @trumpet, :trumpet => { :gamified_id => @trumpet.gamified_id, :gamified_table => @trumpet.gamified_table }
#     assert_redirected_to trumpet_path(assigns(:trumpet))
#   end

#   test "should destroy trumpet" do
#     assert_difference('Trumpet.count', -1) do
#       delete :destroy, :id => @trumpet
#     end

#     assert_redirected_to trumpets_path
#   end
# end
