class League < ApplicationRecord
  has_many :teams
  has_many :games
  has_many :players, through: :teams
  has_many :players, class_name: :User

  validates :sport, presence: true
  validates :skill_level, presence: true
end
