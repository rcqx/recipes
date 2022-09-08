class RecipeFoodController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.all
  end

  def create
    @foods = Food.all
    @food = Food.find_by(id: params[:food_id])
    @recipe = Recipe.find_by(id: params[:recipe_id])
    @recipe_food = RecipeFood.new(quantity: params[:quantity], food: @food, recipe: @recipe)

    if @recipe_food.save
      flash[:success] = '...created!'
      redirect_to recipe_path(params[:recipe_id])
    else
      flash[:error] = '...with problems, try again...'
      render :new
    end
  end

  def show
    @recipe_food = RecipeFood.find(params[:recipe_id])
  end

  def update
    @recipe_food = RecipeFood.find(params[:recipe_id])
    @recipe_food.quantity = params[:quantity]
    @recipe_food.save
    redirect_to recipe_path
  end

  def destroy
    RecipeFood.destroy(params[:id])
    redirect_to recipe_path
  end
end
