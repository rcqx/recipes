class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, default: 'Add a name...'
      t.string :measurement_unit, default: 'Add a unit...'
      t.integer :price, default: 0
      t.integer :quantity, default: 0
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
