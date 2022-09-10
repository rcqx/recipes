require 'rails_helper'

RSpec.describe 'recipe_controller_requests', type: :request do
  describe 'GET #index' do
    before(:example) { get recipes_path }

    it 'is receiving an Ok response from the server' do
      expect(response).to have_http_status(200)
    end

    it 'renders index template correctly' do
      expect(response).to render_template('index')
    end
  end
end
