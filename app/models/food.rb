class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

   validates :name, presence: true, length: { maximum: 250 }
  validates :measurement_unit, presence: true, inclusion: { in: %w[kg units l ml cl g] }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
