class League < ApplicationRecord
  has_many :teams
  has_many :games
  has_many :players, through: :teams

  validates :sport, presence: true
  vlaidates :skill_level, presence: true
end
