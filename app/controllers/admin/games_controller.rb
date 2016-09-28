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

  def edit
    @game = Game.find(params[:id])
    @teams = @game.teams
  end

  def update
    @game = Game.find(params[:id])
    @game.update(winner: params[:game][:winner], winner_score:params[:game][:winner_score], loser: params[:game][:loser], loser_score:params[:game][:loser_score] )
    redirect_to admin_profile_path
  end
end
