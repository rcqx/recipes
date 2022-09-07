class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy

  validates :name, presence: true, length: { in: 2..75 }
end
