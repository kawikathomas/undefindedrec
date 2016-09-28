class Game < ApplicationRecord
  attr_accessor :hour, :minutes
  has_many :team_games
  has_many :teams, through: :team_games
  has_many :players, through: :teams
  belongs_to :league
  belongs_to :winner, class_name: :Team, optional: true

  validates :starts_at, presence: true
  validates :league_id, presence: true

  scope :today, ->{ where(starts_at: Date.today) }

  def result
    if self.winner_id == nil
      return "---"
    else
      return self.winner.name
    end
  end

  def return_score
    if self.winner_id == nil
      return "0-0"
    else
      return "#{self.winner_score} - #{self.loser_score}"
    end
  end

  def as_json(options = {})
    h = super(options)
    h[:starts_at_str] = starts_at.strftime("%A, %b %d")
    h[:starts_at_time_str] = starts_at.strftime("%I:%M %p")
    return h
  end
end
