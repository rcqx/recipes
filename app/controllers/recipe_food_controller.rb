class RecipeFoodController < ApplicationController
  def index
    @recipe_food = RecipeFood.find(params[:recipe_id]);
    @recipe = Recipe.find(params[:recipe_id])
  end

  def update; end

  def destroy
    RecipeFood.destroy(params[:id])
    redirect_to recipe_path
  end
end
