class Admin::TeamsController < ApplicationController
  #need authorization
  def new
    @team = Team.new
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
