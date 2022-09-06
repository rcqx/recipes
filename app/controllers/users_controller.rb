class UsersController < ApplicationController
  def new; end

  def create; end

  def destroy; end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
