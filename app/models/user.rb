class User < ActiveRecord::Base
  add_trumpet_methods

  attr_accessor :trumpet_points, :trumpet_levels, :trumpet_achievements, :rules, :rule_sheet
  attr_accessible :name
  after_initialize :assign_rule_sheet

  def assign_rule_sheet
    @rule_sheet = TrumpetRule.new
  end

  def toot_listener(type, &block)

  end

  def toot(message)

  end

#Point/level/achievement status methods

  def decrease_points(value, type)
    points = User.find_or_create_points(type)
    points.total -= value
    points.save
    points.total
  end

  def current_points(type)
    User.find_or_create_points(type).total
  end

  def current_level(type)
    User.find_or_create_level(type).total
  end

  def award_achievement(type)
    a = User.find_or_create_achievement(type)
    a.total = 1
    a.save
    self.has_achievement?(type)
  end

  def has_achievement?(type)
    User.find_or_create_achievement(type).total == 1
  end

# #SUMMARY METHODS

  def level_sheet

  end

  def achievement_sheet

  end
#private
#  def self.find_or_create_points(type)
#    if (tp = Trumpet.where(acts_as_level: false, acts_as_achievement: false).find_by_name(type))
#      tp
#    else
#      Trumpet.create(name: type, total: 0)
#    end
#  end

  def self.find_or_create_achievement(type)
    if (tp = Trumpet.where(acts_as_level: false, acts_as_achievement: true).find_by_name(type))
      tp
    else
      Trumpet.create(name: type, acts_as_achievement: true, total: 0)
    end
  end

  def self.find_or_create_level(type)
    if (tp = Trumpet.where(acts_as_level: true, acts_as_achievement: false).find_by_name(type))
      tp
    else
      Trumpet.create(name: type, acts_as_level: true, total: 0)
    end
  end
end

