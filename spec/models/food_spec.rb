require 'rails_helper'

RSpec.describe Food, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  subject { Food.new(name: 'oranges', price: 1.5, measurement_unit: 'Kg', user_id: 1) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'measurement_unit should be present' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'user_id must be a float greater or equal than zero' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'Price must be a float greater or equal than zero' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
