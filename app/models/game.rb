class Game < ApplicationRecord
  has_many :team_games
  has_many :teams, through: :team_games
  has_many :players, through: :teams
  belongs_to :league

  validates :starts_at, presence: true
  validates :league_id, presence: true
end
