class CreateTransactions < ActiveRecord::Migration
  def up
    create_table :transactionlevels do |t|
      t.string :complete_flag
      t.references :user
      t.references :level
    end
  end

  def down
    drop_table :transactionlevels
  end
end
