class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name, default: 'Add your name...'
      t.float :preparation_time, default: 0.0
      t.float :cooking_time, default: 0.0
      t.text :description, default: 'Add a description...'
      t.boolean :public, default: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
