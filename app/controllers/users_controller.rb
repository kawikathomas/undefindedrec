class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    @user = User.find_by(id: params[:user][:user_id])
    @user.update_attributes(admin: params[:user][:admin])
  end

  def join
    @user = current_user
    @user.update!(league_id: params[:league_id])

  end



end
