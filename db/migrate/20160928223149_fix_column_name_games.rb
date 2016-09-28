class FixColumnNameGames < ActiveRecord::Migration[5.0]
  def change
    rename_column :games, :winner, :winner_id
    rename_column :games, :loser, :loser_id
  end
end
