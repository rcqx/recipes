class RecipesController < ApplicationController
  def new; end

  def create; end

  def destroy
    Recipe.destroy(params[:id])
    redirect_to '/recipes'
  end

  def index
    @recipes = Recipe.all
  end

  def show; end
end
