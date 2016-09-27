class TeamPlayer < ApplicationRecord
  belongs_to :team
  belongs_to :player, class_name: :User

  validates :team_id, presence: true
  validates :player_id, presence: true
end
