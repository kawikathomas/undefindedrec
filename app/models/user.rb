class User < ApplicationRecord

  has_many :team_players, foreign_key: :player_id
  has_many :teams, through: :team_players
  has_many :team_games, through: :teams
  has_many :games, through: :team_games
  belongs_to :league, optional: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
