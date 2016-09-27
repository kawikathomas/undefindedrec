class Admin::UsersController < ApplicationController
  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:user][:user_id])
    @user.update_attributes(admin: params[:user][:admin])
  end
end
