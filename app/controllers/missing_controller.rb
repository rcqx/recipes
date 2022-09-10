class MissingController < ApplicationController
  def index
    @foods = Food.where(user_id: current_user.id)
    @missing_foods = []
    @foods.each do |food|
      inventory_food = InventoryFood.where(food_id: food.id).sum(:quantity)
      recipe_food = RecipeFood.where(food_id: food.id).sum(:quantity)
      @missing_foods.push(food) if recipe_food > inventory_food
    end
  end
end
