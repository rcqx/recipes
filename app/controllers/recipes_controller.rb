class RecipesController < ApplicationController
  def new; end

  def create; end

  def destroy
    Recipe.destroy(params[:id])
    redirect_to '/recipes'
  end

  def index
    if current_user
      @recipes = Recipe.where(user_id: current_user.id)
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end 
end
