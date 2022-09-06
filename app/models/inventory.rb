class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_food, dependent: :destroy

  validates :name, presence: true, length: { in: 2..75 }
end
