class TeamsController < ApplicationController

  def show
    @team = Team.find_by(id: params[:id])
    @games = @team.games
  end

end
