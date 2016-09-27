class AdminController < ApplicationController

  def show
    @games = Game.all
    @leagues = League.all
  end

end
