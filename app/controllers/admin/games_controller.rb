class Admin::GamesController < ApplicationController
  def new
    @game = Game.new
    @team_game = TeamGame.new
    @teams = Team.all
  end

  def create
    @game = Game.create(starts_at: params[:game][:starts_at], league_id: params[:game][:league_id])
    @team_game = TeamGame.create(game: @game, team_id: params[:team_game][:team1])
    @team_game = TeamGame.create(game: @game, team_id: params[:team_game][:team2])
  end

end
