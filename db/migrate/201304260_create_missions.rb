class CreateMissions < ActiveRecord::Migration
  def up
    create_table :missions do |t|
      t.string :mission_name
      t.text :description
      t.integer :points
      t.string :urllink_type
      t.text :url
      t.references :level
    end
  end

  def down
    drop_table :missions
  end
end
