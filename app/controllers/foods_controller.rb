class FoodsController < ApplicationController
  before_action :authenticate_user!
  include ApplicationHelper

  def index
    @foods = current_user.foods
  end

  def new
    # render :new
    @food = Food.new
  end

  def create
    new_food = current_user.foods.new(food_params)
    if new_food.save
      flash[:success] = 'You successfully added a food item'
      redirect_to foods_url
    else
      flash.now[:error] = 'Error: You could not add a food item'
      render :new
    end
  end

  def destroy; end

  private

  def food_params
    params.require(:add_food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
