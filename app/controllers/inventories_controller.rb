class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def destroy
    Inventory.find(params[:id]).destroy
    redirect_to inventories_path
  end
end
