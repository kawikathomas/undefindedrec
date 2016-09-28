require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:league) {League.create(sport: "basketball", skill_level: "casual")}
  let(:game) {Game.create(starts_at: DateTime.now, league: league)}
  let(:team1) {Team.create(name: "Bobcats", league: league)}
  let(:team2) {Team.create(name: "Bulldogs", league: league)}

  it "has an associated league" do
    expect(game.league).to be(league)
  end

end
