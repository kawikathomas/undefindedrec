class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.datetime :starts_at
      t.integer :winner
      t.integer :loser
      t.integer :winner_score
      t.integer :loser_score
      t.integer :league_id

      t.timestamps
    end
  end
end
