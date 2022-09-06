class FoodsController < ApplicationController
  # before_action :authenticate_user!
  include ApplicationHelper

  def index
    @foods = Food.all
  end

  def new
    # render :new
    @food = Food.new
  end

  def create
    new_food = Food.new(food_params)
    new_food.user = current_user
    if new_food.save
      flash[:success] = 'You successfully added a food item'
      redirect_to foods_path
    else
      flash.now[:error] = 'Error: You could not add a food item'
      render :new
    end
  end

  def destroy
    @food = Food.find(params[:id]).destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:add_food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
