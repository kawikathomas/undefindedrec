class LeaguesController < ApplicationController
  def show
    @leagues = League.where(sport: params[:id])
  end
end
