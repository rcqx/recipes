class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prepataion_time
      t.string :cooking_time
      t.string :description
      t.boolean :is_public
      t.timestamps
    end
  end
end
