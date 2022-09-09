require 'rails_helper'

describe Food, type: :model do
  before(:each) do
    @user = User.create!(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')
    @food = @user.foods.create(name: 'Akara', price: 200, measurement_unit: 'kg', quantity: 10)
  end

  it 'Food should be valid' do
    expect(@food).to be_valid
  end

  it 'Food should not be valid without a name' do
    @food.name = nil
    expect(@food).to_not be_valid
    @food.name = ''
    expect(@food).to_not be_valid
  end

  it 'Food should not be valid if name is too long' do
    @food.name = 'g' * 251
    expect(@food).to_not be_valid
  end

  it 'Food should not be valid without a measurement unit' do
    @food.measurement_unit = nil
    expect(@food).to_not be_valid
  end

  it 'Food should not be valid if wrong measurement unit is passed' do
    @food.measurement_unit = 15
    expect(@food).to_not be_valid
    @food.name = true
    expect(@food).to_not be_valid
    @food.name = 'gl'
    expect(@food).to_not be_valid
  end

  it 'Food should not be valid if price is negative' do
    @food.price = - 15
    expect(@food).to_not be_valid
  end

  it 'Food should not be valid if price is not a number' do
    @food.price = 'fifteen'
    expect(@food).to_not be_valid
    @food.price = true
    expect(@food).to_not be_valid
  end
end