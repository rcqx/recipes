require 'rails_helper'

RSpec.describe 'Foods', type: :request do
    let(:user) do
    user = User.new(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')

    user.password = '123456'
    user.password_confirmation = '123456'
    user.confirm
    user
  end

  before(:each) do
    sign_in(user)
  end

  after(:each) do
    sign_out(user)
  end

  describe 'GET /index' do

    it 'tests the URL path for foods#index' do
        get new_food_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:new)
      expect(response.body).to include('measurement_unit')
    end

    it 'tests the URL path for foods#index' do
      get foods_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
      expect(response.body).to include('Price')
    end
  end
end