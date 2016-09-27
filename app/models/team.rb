class Team < ApplicationRecord
  has_many :team_players
  belongs_to :league
  has_many :team_games
  has_many :games, through: :team_games
  has_many :players, through: :team_players

  validates :name, presence: true, uniqueness: true
  validates :league_id, presence: true
end
