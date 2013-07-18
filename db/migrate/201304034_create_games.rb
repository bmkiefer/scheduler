class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.datetime :game_time
      t.string :team
      t.string :opposing_team
    end
  end

  def down
    drop_table :games
  end
end
