class HomeController < ApplicationController
  def public_recipes
    @recipes = Recipe.includes([:user]).where(public: true)
  end
end
