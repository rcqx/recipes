class InventoryFood < ApplicationRecord
  belongs_to :inventory
  belongs_to :food, class_name: 'Food'

  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
