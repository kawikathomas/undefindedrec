class LeaguesController < ApplicationController
  def show
    @leagues = League.where(sport: params[:id])
    @casuals = @leagues.where(skill_level: "casual")
    @competitives = @leagues.where(skill_level: "competitives")
  end
end
