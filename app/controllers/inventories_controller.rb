class InventoriesController < ApplicationController
  def new; end

  def create; end

  def destroy
    Inventory.find(params[:id]).destroy
    redirect_to inventories_path
  end

  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
    @inventories = Inventory.all
  end
end
