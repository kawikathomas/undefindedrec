class AdminController < ApplicationController

  def show
    @games = Game.all
    @leagues = League.all
    @teams = Team.all
  end

end
