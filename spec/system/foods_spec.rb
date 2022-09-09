require 'rails_helper'

RSpec.describe 'food/index', type: :system do
  let(:user) do
    user = User.new(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')
    user.password = '123456'
   user.password_confirmation = '123456'
   user.confirm
   user
  end 

  subject(:food) { user.Food.create(name: "Palm Oil", measurement_unit: "L(s)", price: 3500, quantity: 2, user: ,
    is_public: true ) }

  before(:each) do
    fill_in 'email', with: 'fatimaazahir@gmail.com'
    fill_in 'password', with: '123456'
    click_button 'Log in'
  end

  # before do
  before(:example) do
    visit foods_path
  end

  describe 'Navigates through the page with no problems' do
    context 'The page shows the correct information' do
      it 'has a button to create a new food' do
        expect(page).to have_content('Add Food')
      end
      
      it 'has a table with four columns: food, measurement unit, unit price and actions' do
        expect(page).to have_selector('th', text: 'Food')
        expect(page).to have_selector('th', text: 'Measurement Unit')
        expect(page).to have_selector('th', text: 'Unit Price')
        expect(page).to have_selector('th', text: 'Quantity')
        expect(page).to have_selector('th', text: 'Actions')
      end

      it 'clicking on add food should redirected me to the page to create a new food' do
        click_on 'Add Food'
        expect(page).to have_current_path(new_food_path)
      end
    end
  end
end