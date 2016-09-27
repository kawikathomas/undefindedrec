class UsersController < ApplicationController

  def update
    @user = User.find_by(id: params[:user][:user_id])
    @user.update_attributes(admin: params[:user][:admin])
  end

  def addleagueid
    @user = current_user
    @user.update_attributes(league_id: [params[:league_id]])
  end



end
