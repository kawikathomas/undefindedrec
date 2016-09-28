class Admin::GamesController < ApplicationController
  # respond_to :js, :json, :html

  def new
    @game = Game.new
    @team_game = TeamGame.new
    @league = League.find(params[:league_id])
    @games = @league.games
  end

  def create
    hour = params[:game][:hour].to_i
    minutes = params[:game][:minutes].to_i
    starts_at = (params[:game][:starts_at].to_datetime).change(hour: hour, min: minutes)
    @game = Game.create(starts_at: starts_at, league_id: params[:league_id])
    @team_game1 = TeamGame.create(game: @game, team_id: params[:team_game][:team1])
    @team_game2 = TeamGame.create(game: @game, team_id: params[:team_game][:team2])
    @teams = @game.teams
    @league = @game.league
    respond_to do |format|
      format.json {
        render json: [@game, @teams, @league]
      }
    end
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
