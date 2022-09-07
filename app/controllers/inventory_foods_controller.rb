class InventoryFoodsController < ApplicationController
  def new
    @foods = Food.all
    @inventory = Inventory.find(params[:inventory_id])
  end

  def create
    @foods = Food.all

    @food = Food.find_by(id: params[:food_id])
    @inventory = Inventory.find_by(id: params[:inventory_id])

    @inventory_food = InventoryFood.new(quantity: params[:quantity], food: @food, inventory: @inventory)

    if @inventory_food.save
      flash[:success] = '...created!'
      redirect_to inventory_path(params[:inventory_id])
    else
      flash[:error] = '...with problems, try again...'
      render :new
    end
  end

  def destroy; end
end
