class RecipeFoodController < ApplicationController
  def index
    @recipe_food = RecipeFood.find(params[:recipe_id]);
    @recipe = Recipe.find(params[:recipe_id])
  end
end
