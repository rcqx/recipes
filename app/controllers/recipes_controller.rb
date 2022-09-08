class RecipesController < ApplicationController
  def new; end

  def create; end

  def destroy
    Recipe.destroy(params[:id])
    redirect_to '/recipes'
  end

  def index
    @recipes = if current_user
                 Recipe.where(user_id: current_user.id)
               else
                 Recipe.all
               end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.public = @recipe.public == false
    @recipe.save
  end
end
