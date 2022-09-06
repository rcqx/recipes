class CreateFoodRecipeJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :foods, :recipes do |t|
      t.integer :quantity
      t.index [:food_id, :recipe_id]
      t.index [:recipe_id, :food_id]
    end
  end
end
