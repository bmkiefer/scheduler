class CreateLevels < ActiveRecord::Migration
  def up
    create_table :levels do |t|
      t.name :level_name
      t.integer :points
      t.string :activity
    end
  end

  def down
    drop_table :levels
  end
end
