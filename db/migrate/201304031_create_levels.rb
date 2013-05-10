class CreateLevels < ActiveRecord::Migration
  def up
    create_table :levels do |t|
      t.string :level_name
      t.integer :points
      t.text :activity
    end
  end

  def down
    drop_table :levels
  end
end
