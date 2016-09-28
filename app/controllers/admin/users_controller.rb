class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  def edit
    @user = User.find_by(id: params[:id])
  end

  def removeteam
    @user = User.find_by(id: params[:player_id])
    @teamplayer = TeamPlayer.find_by(player_id: @user.id)
    @user.update(league_id: nil)
    @teamplayer.destroy
  end

  def update
    @user = User.find_by(id: params[:user][:user_id])
    @user.update_attributes(admin: params[:user][:admin])
  end


private
  def require_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end
end


