class CreateProfiles < ActiveRecord::Migration
  def up
    create_table :profiles do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.integer :total_score
    end
  end

  def down
    drop_table :profiles
  end
end
