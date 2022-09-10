

module ApplicationHelper
  def ingredient(recipe_food, ingredient_food)
    quantity = recipe_food.quantity - ingredient_food.quantity
    return if quantity.negative? || quantity.zero?

    { name: recipe_food.food.name, quantity:, price: quantity * recipe_food.food.price }
  end

  def total_price(ingredients)
    total_price = 0
    ingredients.each do |ing|
      total_price += ingredient(ing)[:price] if ingredient(ing)
    end
    total_price
  end

  def total_ingredients(ingredients)
    quantity = 0
    ingredients.each do |ing|
      quantity += ingredient(ing)[:quantity] if ingredient(ing)
    end
    quantity
  end

  def amount_of_ingredients(ingredients)
    amount = 0
    ingredients.each do |ing|
      amount += 1 if ingredient(ing)
    end
    amount
  end
end