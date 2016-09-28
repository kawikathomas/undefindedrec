class Admin::TeamsController < ApplicationController
  #need authorization
  def new
    @team = Team.new
    players = User.where(league_id: params[:league_id])
    @players = []
    players.each do |player|
      if player.teams.length == 0
        @players.push(player)
      end
    end
  end

  def create
    p params
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
