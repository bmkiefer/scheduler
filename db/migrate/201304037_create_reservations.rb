class CreateReservations < ActiveRecord::Migration
  def up
    create_table :reservations do |t|
      t.references :game
      t.references :venue
      t.references :user
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
