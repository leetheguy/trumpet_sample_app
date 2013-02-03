require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase

#Point/level/achievement status methods

  test "user exists" do
    user = User.first
    assert user
  end

  test "can use find_or_create_points" do
    assert_not_nil User.find_or_create_points(:test)
  end

  test "can use find_or_create_achievement" do
    assert_not_nil User.find_or_create_achievement(:test)
  end

  test "can use find_or_create_level" do
    assert_not_nil User.find_or_create_level(:test)
  end

  test "can get user.current_points" do
    user = User.first
    assert_equal 0, user.current_points(:test)
  end

  test "can automatically assign and increase user points" do
    user = User.first
    points = user.current_points(:test)
    user.increase_points(3, :test)
    assert_equal points + 3, user.current_points(:test)
  end

  test "can decrease user points" do
    user = User.first
    user.increase_points(5, :test)
    user.decrease_points(3, :test)
    assert_equal 2, user.current_points(:test)
  end

  #test "trumpet_points, trumpet_level, trumpet_achievement should be hashes" do
    # user = User.new
    # tl = user.trumpet_levels
    # ta = user.trumpet_achievements
    # assert tl.is_a?(Hash)
    # assert ta.is_a?(Hash)
  #end

  test "can declare level structures" do
    rules = TrumpetRuleSheet.new
    rules.declare_level(:gnar, [5, 10, 20, 50, 100, 200])
    assert rules.trumpet_levels.length > 0
  end

  test "can declare achievement structures" do
    rules = TrumpetRuleSheet.new
    rules.declare_achievement(:rat_fink, 100)
    assert rules.trumpet_achievements.length > 0
  end

 # test "can automatically assign and increase user points and levels by increasing points" do
 #   user.increase_points(:test, 10)
 #   levelify_threshold[1] = 19
 #   user.increase_points(20)
 #   assert_equal user.level, 2
 # end

#   test "can assign achievement and check for achievement with award_acheivement and has_acheivement" do
# user = User.first
#     user.award_achievement(:test_badger)
#     assert_equal user.has_achievement?(:test_badger), true
#   end

#   # test "trumpeted model class can hold a hash of declared achievements" do
#   #   trumpet_model
#   # end

# # Namify methods
#   test "simplify_name should strip a level name" do
# user = User.first
#     level = :test

#     assert_equal user.simplify_name(level), :test
#   end

#   test "simplify_name should strip a achievement name" do
# user = User.first
#     achievement = :test

#     assert_equal user.simplify_name(achievement), :test
#   end

#   test "simplify_name should strip a points name" do
#     user = User.first
#     points = :test

#     assert_equal user.simplify_name(points), :test
#   end

#   test "levelify_name should add a level name" do
#     user = User.first
#     points = :test

#     achievement = :test

#     assert_equal user.levelify_name(points), :test

#     assert_equal user.levelify_name(achievement), :test

#   end

#   test "pointify_name should add a point name" do
# user = User.first
#     level = :test

#     achievement = :test

#     assert_equal user.pointify_name(level), :test

#     assert_equal user.pointify_name(achievement), :test

#   end

#   test "achievementify_name should add a level name" do
#     user = User.first
#     points = :test

#     level = :test

#     assert_equal user.achievementify_name(points), :test
#     assert_equal user.achievementify_name(level), :test
#   end

#   test "can declare toot listeners" do
#     user = User.first
#     rules = TrumpetRuleSheet.new
#     user.toot_listener(:tootelage) do |test|
#       test.increase_points(3, :test)
#     end
#     user.toot(:tootelage)
#     assert_equal user.current_points(:test), 3
#   end
end
