class CreateRequests < ActiveRecord::Migration
  def up
    create_table :requests do |t|
      t.string :status
      t.references :user
      t.references :reservation
      t.string :phone_number
      t.datetime :desired_date
      t.string :any_flag
      t.string :purpose
      t.string :business_client
      t.integer :extra_tickets
      t.timestamps
    end
  end

  def down
    drop_table :requests
  end
end
