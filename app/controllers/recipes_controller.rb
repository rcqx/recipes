class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @user = current_user.id
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_food = RecipeFood.includes(:food).where(recipe_id: params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    Rails.logger.debug("My recipe: #{@recipe.inspect}")
    @recipe.save
    redirect_to user_recipes_path(current_user)
  end

  def destroy
    Recipe.destroy(params[:user_id])
    redirect_back(fallback_location: user_recipes_path)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
