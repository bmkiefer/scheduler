class CreateVenues < ActiveRecord::Migration
  def up
    create_table :venues do |t|
      t.string :location
      t.string :room
      t.integer :tickets
      t.integer :extra_max
    end
  end

  def down
    drop_table :venues
  end
end
