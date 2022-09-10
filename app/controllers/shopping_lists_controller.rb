class ShoppingListsController < ApplicationController
  def index
    @stock = InventoryFood.includes(:food).where(inventory: Inventory.where(user: current_user))
    @ingredients = RecipeFood.includes(:food).where(recipe: Recipe.where(user: current_user))
  end

  def new
    @inventories = Inventory.all
  end

  def create
    redirect_to "/recipes/#{params[:recipe_id]}/shopping_lists?recipe_id=#{params[:recipe_id]}&inventory_id=#{params[:inventory_id]}"
  end
end
