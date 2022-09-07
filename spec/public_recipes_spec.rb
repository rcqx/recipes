require 'rails_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe 'PublicRecipes', type: :system do
  context 'As an user' do
    let(:user) { create(:user) }

    before do
      sign_in(user)
      user.confirm

      @r1 = create(:recipe, public: true)
      @r2 = create(:recipe, public: true, name: 'r2')
      @r3 = create(:recipe, public: true)

      @f1 = create(:food, user:, name: 'apple')
      @f2 = create(:food, user:, name: 'orange')
      @f3 = create(:food, user:, name: 'pasta')

      @rf11 = create(:recipe_food, recipe: @r1, food: @f1, quantity: 5)
      @rf12 = create(:recipe_food, recipe: @r1, food: @f2, quantity: 8)

      @rf21 = create(:recipe_food, recipe: @r2, food: @f3, quantity: 2)

      5.times { create(:recipe) }

      visit public_recipes_path
    end

    context 'when I go to public recipes page' do
      it 'shows me a list of all public recipes' do
        within('#public-recipes') do
          expect(all('li').size).to eq(3)
        end
      end

      it 'shows me all public recipes names' do
        within('#public-recipes') do
          name_elements = all('h3', count: 3)
          names = name_elements.map(&:text)
          expect(names).to contain_exactly(@r1.name, @r2.name, @r3.name)
        end
      end

      it 'shows me all public recipe author names' do
        within('#public-recipes') do
          authors_elements = all('p', count: 3)
          authors = authors_elements.map(&:text)
          expect(authors).to contain_exactly(/#{@r1.user.name}/i, /#{@r2.user.name}/i, /#{@r3.user.name}/i)
        end
      end

      it 'shows me the amount of ingredients for each recipe' do
        within('#public-recipes') do
          counter_elements = all('span', text: /items/i, count: 3)
          counters = counter_elements.map(&:text)
          expect(counters).to contain_exactly(/#{@r1.foods.size}/i, /#{@r2.foods.size}/i,
                                              /#{@r3.foods.size}/i)
        end
      end

      it 'shows me the total price of the recipe' do
        within('#public-recipes') do
          prices_elements = all('span', text: /price/i, count: 3)
          prices = prices_elements.map(&:text)

          p1 = 0
          @r1.foods.each { |food| p1 += food.price }
          p2 = 0
          @r2.foods.each { |food| p2 += food.price }
          p3 = 0
          @r3.foods.each { |food| p3 += food.price }
          expect(prices).to contain_exactly(/#{p1}/i, /#{p2}/i, /#{p3}/i)
        end
      end

      context 'When I click on a recipe' do
        it 'takes me to the details of that recipe' do
          within('#public-recipes') do
            click_on @r2.name
          end
          expect(page).to have_current_path(recipe_path(@r2))
        end
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
