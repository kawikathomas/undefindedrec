class Admin::TeamsController < ApplicationController
  #need authorization
  def new
    @league = params[:league_id]
    players = User.where(league_id: params[:league_id])
    @players = []
    players.each do |player|
      if player.teams.length == 0
        @players.push(player)
      end
    end
  end

  def create
    @team = Team.new(name: params[:team][:name], league_id: params[:league_id], wins: 0, losses: 0, ties: 0)
    if @team.save
      if request.xhr?
        render json: @team
      else
        render :new
      end
    end
  end


  def edit
    @team = Team.find_by(id: params[:id])
    @league = params[:league_id]
    players = User.where(league_id: params[:league_id])
    @players = []
    players.each do |player|
      if player.teams.length == 0
        @players.push(player)
      end
    end
  end

  def teamplayer
    TeamPlayer.create(player_id: params[:user_id], team_id: params[:team_id])
  end

  def update

  end

  def destroy
  end

end
