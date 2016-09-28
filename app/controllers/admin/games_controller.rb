class Admin::GamesController < ApplicationController
  def new
    @game = Game.new
    @team_game = TeamGame.new
    @league = League.find(params[:league_id])
    @games = @league.games
  end

  def create
    @game = Game.create(starts_at: params[:game][:starts_at], league_id: params[:league_id])
    @team_game = TeamGame.create(game: @game, team_id: params[:team_game][:team1])
    @team_game = TeamGame.create(game: @game, team_id: params[:team_game][:team2])
    redirect_to new_admin_league_game_path
  end

end
