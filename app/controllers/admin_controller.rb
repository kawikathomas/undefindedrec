class AdminController < ApplicationController

  def show
    @games = Game.order(:starts_at)
    @leagues = League.all
    @teams = Team.all
  end

end
