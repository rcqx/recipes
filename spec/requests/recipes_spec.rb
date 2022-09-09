require 'rails_helper'

describe 'Recipes', type: :request do

  let(:user) do
    user = User.new(name: 'Fatima', email: 'fatimaazahir@gmail.com', password: '123456')
    user.password = 'password'
   user.password_confirmation = 'password'
   user.confirm
   user
  end 
   
  subject(:recipe) { user.Recipe.create(name: "Rice & Chicken Stew", preparation_time: 35, cooking_time: 50, 
   description: "Rice and stew is a popular Nigerian dish made with rice, meat, and vegetables.",
    is_public: true ) }
  
    before(:each) do
      sign_in(user)
    end
  
    after(:each) do
      sign_out(user)
    end


  describe 'GET /index' do
  before(:example) do
    get recipes_path 
  end
    it 'should return correct response' do
      expect(response).to have_http_status(:ok)
    end
    it 'should render the correct template' do
      expect(response).to render_template(:index)
    end
    it 'has the correct placeholder text' do
      expect(response.body).to include('My Recipes')
    end
  end
end
