class AdminsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :user_admin?

  def edit
    @user = User.find_by(id: params[:id])
  end

private
  def user_admin?
    current_user.admin == true
  end
end
