require 'rails_helper'

RSpec.describe 'Foods', type: :request do
    let(:food) do
    user = User.new(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')

    # user.password = 'password'
    # user.password_confirmation = 'password'
    # user.confirm
    # user
  end

#   before(:each) do
#     sign_in(food)
#   end

#   after(:each) do
#     sign_out(food)
#   end

  describe 'GET /index' do

    it 'tests the URL path for foods#index' do
        get new_food_path
      expect(response).to have_http_status(302)
    #   expect(response).to render_template(:index)
    #   expect(response.body).to include('Measurement Unit')
    end

    it 'tests the URL path for foods#index' do
      get foods_path
      expect(response).to have_http_status(302)
      expect(response).to render_template(:index)
    #   expect(response.body).to include('Price')
    end

    # it 'has a link to create a new food' do
    #     get foods_path
    #     expect(page).to have_content('Add Food')
    #   end
  end
end
