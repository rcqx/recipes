class RecipeFood < ApplicationRecord
  belongs_to :recipe, class_name: 'Recipe'
  belongs_to :food, class_name: 'Food'

  validates :quantity, presence: true
  validates :recipe_id, presence: true
  validates :food_id, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
