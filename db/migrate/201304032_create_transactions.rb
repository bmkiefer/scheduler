class CreateTransactions < ActiveRecord::Migration
  def up
    create_table :transactionlevels do |t|
      t.string :complete_flag
      t.references :user
      t.references :level
    end
     create_table :transactionmissions do |t|
      t.string :complete_flag
      t.references :user
      t.references :level
      t.references :mission
    end
  end

  def down
    drop_table :transactionlevels
    drop_table :transactionmissions
  end
end
