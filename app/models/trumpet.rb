class TrumpetRule < ActiveRecord::Base
  attr_accessible :gamified_id, :gamified_table, :name, :total, :acts_as_level, :acts_as_achievement

  def self.find_or_create_points(type)
    if (tp = Trumpet.where(acts_as_level: false, acts_as_achievement: false).find_by_name(type))
      tp
    else
      Trumpet.create(name: type, total: 0)
    end
  end

end
