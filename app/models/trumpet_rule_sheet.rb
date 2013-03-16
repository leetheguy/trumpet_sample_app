class TrumpetRuleSheet
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  attr_accessor :trumpet_levels, :trumpet_achievements

#  def initialize
#    @trumpet_levels = {}
#    @trumpet_achievements = {}
#  end

#  def declare_level(type, rules)
#    level  = User.find_or_create_level(type)
#    points = User.find_or_create_points(type)
#    @trumpet_levels[level.name] = rules
#  end
#
#  def declare_achievement(type, rule)
#    achievement = User.find_or_create_achievement(type)
#    points      = User.find_or_create_points(type)
#    @trumpet_achievements[achievement.name] = rule
#  end
#
  # declare_level(:gnar_level, [5, 10, 20, 50, 100, 200])

  # declare_achievement(:rat_fink, points=100)


  #toot_listener :board_stand do |user|
  #  user.increase_points 5, :gnar_points
  #end
end
