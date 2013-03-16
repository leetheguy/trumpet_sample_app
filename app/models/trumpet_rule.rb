class TrumpetRule < ActiveRecord::Base
  add_rule_sheet_methods

  attr_accessible :gamified_id, :gamified_table, :name, :total, :acts_as_level, :acts_as_achievement

  def self.add_rules
    trumpet_levels = {}
    trumpet_achievements = {}

    declare_level(:gnar, [1,2,3])
    binding.pry
  end

#  def self.find_or_create_points(type)
#    if (tp = Trumpet.where(acts_as_level: false, acts_as_achievement: false).find_by_name(type))
#      tp
#    else
#      Trumpet.create(name: type, total: 0)
#    end
#  end

end
