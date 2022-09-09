require 'rails_helper'

describe 'Testing Recipes pages', type: :request do
#   let(:user) do
#     user = User.new(first_name: 'Joshua', last_name: 'Ivie', email: 'joshua@joshuaivie.com', password: 'password')

#     user.password = 'password'
#     user.password_confirmation = 'password'
#     user.confirm
#     user
#   end

  context 'with valid parameters' do
    let(:user) do

        { recipe: { user:, name: "Rice & Chicken Stew", preparation_time: 35, cooking_time: 50, 
        description: "Rice and stew is a popular Nigerian dish made with rice, meat, and vegetables.\n\n It is a staple food in Nigeria and is often served with fried plantains.", public: true } }
end

# before(:each) { get recipes_path }

    # @recipe = user.Recipe.create(name: "Rice & Chicken Stew", preparation_time: 35, cooking_time: 50, 
    # description: "Rice and stew is a popular Nigerian dish made with rice, meat, and vegetables.\n\n It is a staple food in Nigeria and is often served with fried plantains.",
    #  is_public: false, user: )

  before(:each) do
    sign_in(user)
  end

  after(:each) do
    sign_out(user)
  end

  describe 'GET #index page' do
    get recipes_path 
    it 'should return correct response' do
      expect(response).to have_http_status(200)
    end
    it 'should render the correct template' do
      expect(response).to render_template(:index)
    end
    it 'should have the text from food name' do
      expect(response.body).to include('Rice & Chicken Stew')
    end
    it 'should have the text from description' do
      expect(response.body).to include('Rice and stew is a popular Nigerian dish made with rice, meat, and vegetables.\n\n It is a staple food in Nigeria and is often served with fried plantains.')
    end
  end
end
