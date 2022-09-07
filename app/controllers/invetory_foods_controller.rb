class InvetoryFoodsController < ApplicationController
  def new; end

  def create
    inventory = Inventory.all
    food = Food.all
    InventoryFood.create(user: current_user, inventory: inventory.id, food: food.id)
  end
end
