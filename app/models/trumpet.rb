class Trumpet < ActiveRecord::Base
  attr_accessible :gamified_id, :gamified_table, :name, :total, :acts_as_level, :acts_as_achievement
end
