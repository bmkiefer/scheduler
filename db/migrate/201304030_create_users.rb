class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :total_score
      t.integer :level_one_flag
      t.string :role
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
