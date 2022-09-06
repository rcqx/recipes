class InventoriesController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def index
    @inventories = Inventory.all
  end

  def show
  end
end
