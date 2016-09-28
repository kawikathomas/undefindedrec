require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:league) {League.create(sport: "basketball", skill_level: "casual")}
  let(:game) {Game.new(starts_at: DateTime.now, league: league)}

  it "has a start time" do
    expect(game.starts_at).to be_a(DateTime)
  end
end
