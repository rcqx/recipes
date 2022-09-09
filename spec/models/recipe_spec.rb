require 'rails_helper'

describe Recipe, type: :model do
  subject do
    user = User.new(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')
    recipe = user.recipes.new(
      user: user,
      name: 'Pizza', preparation_time: 25,
      cooking_time: 120, description: 'Classic Hawaiian Pizza!',
      is_public: false
    )
    recipe
  end

  describe 'validation tests' do
    it 'tests a recipe is invalid without a name' do
      expect(subject).to be_valid
      subject.name = ''
      expect(subject).to_not be_valid
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'tests a recipe name is less than 250 character' do
      expect(subject).to be_valid
      subject.name = 'a' * 251
      expect(subject).to_not be_valid
    end

    it 'test validation for description' do
      expect(subject).to be_valid
      subject.description = 'a' * 1001
      expect(subject).to be_invalid
    end
  end
end