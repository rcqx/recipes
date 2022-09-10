module ApplicationHelper
  def ingredient(recipe_food, inventory_food)
    inventory_quantity = inventory_food.quantity || 0
    quantity = recipe_food.quantity - inventory_quantity
    return if quantity.negative? || quantity.zero?

    { name: recipe_food.food.name, quantity:, price: quantity * recipe_food.food.price }
  end

  def total_price(ingredients, stock)
    total_price = 0
    stock.zip(ingredients).each do |sto, ing|
      total_price += ingredient(ing, sto)[:price] if ingredient(ing, sto)
    end
    total_price
  end

  def amount_of_ingredients(ingredients, stock)
    amount = 0
    stock.zip(ingredients).each do |sto, ing|
      amount += 1 if ingredient(ing, sto)
    end
    amount
  end
end
