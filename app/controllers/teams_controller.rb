class TeamsController < ApplicationController

  def show
    @team = Team.find_by(id: params[:id])
    @games = @team.games
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to :root
  end

end
