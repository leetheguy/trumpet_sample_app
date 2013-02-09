require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase

#Point/level/achievement status methods

#  test "test fails" do
#    assert_equal false, true
#  end

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

  test "can get user.current_level" do
    user = User.first
    assert_equal 0, user.current_level(:test)
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

#  test "trumpet_points, trumpet_level, trumpet_achievement should be hashes" do
#    user = User.new
#    tl = user.trumpet_levels
#    ta = user.trumpet_achievements
#    assert tl.is_a?(Hash)
#    assert ta.is_a?(Hash)
#  end

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

#  test "can automatically assign and increase user points" do
#    user = User.first
#    points = user.current_points(:test)
#    user.increase_points(3, :test)
#    assert_equal points + 3, user.current_points(:test)
#  end

  test "can automatically assign and increase user points and levels by increasing points" do
    user = User.first
    user.rule_sheet.declare_level(:test, [20])
    user.increase_points(10, :test)
    assert_equal 0, user.current_level(:test)
    user.increase_points(20, :test)
    assert_equal 1, user.current_level(:test)
  end

#  test "can automatically assign and increase user points and achievements by increasing points" do
#    user = User.first
#    user.rule_sheet.declare_level(:test, [20])
#    user.increase_points(10, :test)
#    assert_equal 0, user.current_level(:test)
#    user.increase_points(20, :test)
#    assert_equal 1, user.current_level(:test)
#  end
#
  test "can assign achievement with award_acheivement" do
    user = User.first
    assert user.award_achievement(:test_badger)
  end

  test "can check for achievement with has_acheivement" do
    user = User.first
    user.award_achievement(:test_badger)
    assert user.has_achievement?(:test_badger)
  end

  test "has_achievement should return false if it hasn't been created" do
    user = User.first
    assert !user.has_achievement?(:test)
  end

#  test "only declared levels are auto-incremented" do
#  end

#  test "only declared achievements are auto-incremented" do
#  end

#   # test "trumpeted model class can hold a hash of declared achievements" do
#   #   trumpet_model
#   # end

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
