class CreateTransactions < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
      t.string :complete_flag
      t.references 'user'
      t.references 'level'
    end
  end

  def down
    drop_table :transactions
  end
end
