class AddQuantityToInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_foods, :quantity, :decimal
  end
end