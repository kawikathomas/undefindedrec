class Game < ApplicationRecord
  attr_accessor :hour, :minutes
  has_many :team_games
  has_many :teams, through: :team_games
  has_many :players, through: :teams
  belongs_to :league

  validates :starts_at, presence: true
  validates :league_id, presence: true

  scope :today, ->{ where(starts_at: Date.today) }

end
