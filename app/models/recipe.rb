class Recipe < ApplicationRecord
  has_many :recipe_foods, foreign_key: 'recipe_id'
  belongs_to :user, class_name: 'User'

  validates :name, presence: true
  validates :description, presence: true
  validates :preparation_time, numericality: { greater_than_or_equal_to: 0 }
  validates :cooking_time, numericality: { greater_than_or_equal_to: 0 }
  validates :user_id, presence: true
end