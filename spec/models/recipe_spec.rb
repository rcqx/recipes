require 'rails_helper'

RSpec.describe Recipe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  subject do
    Recipe.new(name: 'Steak', preparation_time: 1.5, cooking_time: 2, description: 'a deep grilled steak', public: true,
               user_id: 1)
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'user_id must be a float greater or equal than zero' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'Cooking_time must be a float greater or equal than zero' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'Preparation_time must be a float greater or equal than zero' do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end
end
