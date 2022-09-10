class ShoppingListsController < ApplicationController
  def index; end

  def new
    @inventories = Inventory.all
  end

  def create; end
end
