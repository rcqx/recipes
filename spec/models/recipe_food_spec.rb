require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  subject { RecipeFood.new(quantity: 1.5, recipe_id: 1, food_id: 1) }

  before { subject.save }

  it 'food_id must be a float greater or equal than zero' do
    subject.food_id = nil
    expect(subject).to_not be_valid
  end

  it 'recipe_id must be a float greater or equal than zero' do
    subject.recipe_id = nil
    expect(subject).to_not be_valid
  end

  it 'Quantity must be a float greater or equal than zero' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end
end
