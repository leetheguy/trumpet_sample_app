class CreateTrumpets < ActiveRecord::Migration
  def change
    create_table :trumpets do |t|
      t.string :name
      t.integer :total
      t.boolean :acts_as_level, :default => false
      t.boolean :acts_as_achievement, :default => false
      t.string :gamified_table
      t.integer :gamified_id
      t.timestamps
    end
  end
end
