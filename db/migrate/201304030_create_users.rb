class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :position
      t.string :department
      t.string :leader
    end
  end

  def down
    drop_table :users
  end
end
