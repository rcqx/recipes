class ShoppingListsController < ApplicationController
  def index
    @inventory = Inventory.find(params[:inventory_id])
    @recipe = Recipe.find(params[:recipe_id])
  end

  def new
    @inventories = Inventory.all
  end

  def create
    redirect_to "/recipes/#{params[:recipe_id]}/shopping_lists?recipe_id=#{params[:recipe_id]}&inventory_id=#{params[:inventory_id]}"
  end
end
