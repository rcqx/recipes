class UsersController < ApplicationController
  def new; end

  def create; end

  def destroy; end

  def index
    @users = User.all
    if current_user
      redirect_to recipes_path
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
