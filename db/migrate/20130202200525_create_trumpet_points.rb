class CreateTrumpetPoints < ActiveRecord::Migration
  def change
    create_table :trumpet_points do |t|
      t.integer :count
      t.string :name
      t.boolean :acts_as_level
      t.boolean :acts_as_acheivement

      t.timestamps
    end
  end
end
