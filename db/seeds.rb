# Create Users
@user_one = User.create(name: "Fatima", email: "fatimaazahir@gmail.com", password: "123456", password_confirmation: "123456")

[@user_one].each do |user|
# Create Recipes
@pounded_yam_and_bitter_leaf_soup = Recipe.create(name: "Pounded Yam & Bitter Leaf Soup", preparation_time: 30, cooking_time: 50, description: "Bitter Leaf Soup, also known as Ofe Onugbu is a popular Nigerian soup. Bitter leaf Soup is peculiar to the Igbo tribe of Eastern Nigeria. \n\nA common misconception is that bitter leaf soup is bitter. However Ofe Onugbu does not taste bitter in the slightest. When the leaves are thoroughly washed, this gets rid of the bitterness before it’s added to the soup.", is_public: true, user: user)
@moin_moin_and_garri = Recipe.create(name: "Moin Moin & Garri", preparation_time: 40, cooking_time: 45, description: "When Nigerian people enjoy Jollof rice and fried plantains, they often place a dish of Moin Moin on the table. They also serve it at parties and special occasions alongside salad and soft drinks. Moin Moin is one of the most popular Nigerian side dishes.\n\nThis amazing food staple originated in the West of Nigeria. It is in the form of a thick and creamy paste made from black-eyed beans, onion, and ground red peppers. Depending on the preference of the cook, it can have a pyramid or cylindrical shape.", is_public: true, user: user)
@jollof_rice_and_chicken = Recipe.create(name: "Jollof Rice & Chicken", preparation_time: 45, cooking_time: 90, description: "Jollof rice is a popular West African dish that is made with rice, tomatoes, onions, and spices. It is a staple food in many West African countries, including Nigeria, Ghana, and Sierra Leone.\n\n It is also popular in the Caribbean, where it is known as rice and peas. Jollof rice is a staple food in many West African countries, including Nigeria, Ghana, and Sierra Leone. It is also popular in the Caribbean, where it is known as rice and peas.", is_public: false, user: user)
@yam_and_egg_sauce = Recipe.create(name: "Yam & Egg Sauce", preparation_time: 25, cooking_time: 25, description: "Egg sauce recipe is a dish cook with tomato, egg, pepper, onion, vegetable oil, and seasoning cube. It’s typically one of Nigerian staple food that is perfect for breakfast, lunch or dinner.\n\n Nigerian egg sauce is normally served with boiled yam.", is_public: false, user: user)
@rice_and_chicken_stew = Recipe.create(name: "Rice & Chicken Stew", preparation_time: 35, cooking_time: 50, description: "Rice and stew is a popular Nigerian dish made with rice, meat, and vegetables.\n\n It is a staple food in Nigeria and is often served with fried plantains.", is_public: false, user: user)

# Create Foods/Ingredients
@palm_oil = Food.create(name: "Palm Oil", measurement_unit: "L(s)", price: 3500, quantity: 2, user: user)
@bitter_leaf = Food.create(name: "Bitter Leaf", measurement_unit: "g(s)", price: 1200, quantity: 500, user: user)
@stock_fish = Food.create(name: "Stock Fish", measurement_unit: "g(s)", price: 2600, quantity: 140, user: user)
@cocoyam = Food.create(name: "Cocoyam", measurement_unit: "peice(s)", price: 4000, quantity: 15, user: user)
@blended_cray_fish = Food.create(name: "Blended Cray Fish", measurement_unit: "g(s)", price: 1600, quantity: 700, user: user)
@abuja_yam = Food.create(name: "Abuja Yam", measurement_unit: "tuber(s)", price: 2500, quantity: 1, user: user)
@red_meat = Food.create(name: "Red Meat", measurement_unit: "kg", price: 2500, quantity: 1, user: user)
@salt = Food.create(name: "Salt", measurement_unit: "g", price: 100, quantity: 500, user: user)
@maggi = Food.create(name: "Chicken bouillon Cubes(Maggi)", measurement_unit: "cube(s)", price: 1500, quantity: 100, user: user)
@dry_pepper = Food.create(name: "Dry Pepper", measurement_unit: "g", price: 1400, quantity: 700, user: user)
@iru = Food.create(name: "Locust Beans (Iru)", measurement_unit: "g", price: 1500, quantity: 200, user: user)
@oloyin_beans = Food.create(name: "Oloyin Beans", measurement_unit: "kg", price: 3500, quantity: 4, user: user)
@eggs = Food.create(name: "Eggs", measurement_unit: "Crate", price: 2500, quantity: 1, user: user)
@onions = Food.create(name: "Onions", measurement_unit: "kg", price: 5, quantity: 1, user: user)
@vegetable_oil = Food.create(name: "Vegetable Oil", measurement_unit: "kg", price: 5, quantity: 1, user: user)
@rice = Food.create(name: "Rice", measurement_unit: "kg", price: 15000, quantity: 25, user: user)
@onions = Food.create(name: "Onions", measurement_unit: "kg", price: 3200, quantity: 5, user: user)
@tomatoes = Food.create(name: "Tomatoes", measurement_unit: "kg", price: 1000, quantity: 1, user: user)
@pepper = Food.create(name: "Pepper", measurement_unit: "kg", price: 1100, quantity: 1, user: user)
@ginger = Food.create(name: "Ginger", measurement_unit: "kg", price: 900, quantity: 1, user: user)
@bay_leaves = Food.create(name: "Bay Leaves", measurement_unit: "g", price: 125, quantity: 2500, user: user)
@chicken = Food.create(name: "Chicken", measurement_unit: "kg", price: 1200, quantity: 1, user: user)
@yellow_garri = Food.create(name: "Yellow Garri", measurement_unit: "kg", price: 3900, quantity: 5, user: user)
@whtie_garri = Food.create(name: "White Garri", measurement_unit: "kg", price: 4400, quantity: 5, user: user)


# Prepare Pounded Yam & Bitter Leaf Soup
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @palm_oil, quantity: 0.5)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @bitter_leaf, quantity: 12)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @stock_fish, quantity: 3)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @cocoyam, quantity: 20)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @blended_cray_fish, quantity: 1)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @abuja_yam, quantity: 1)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @red_meat, quantity: 4)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @salt, quantity: 1)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @maggi, quantity: 2)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @dry_pepper, quantity: 1)
RecipeFood.create(recipe: @pounded_yam_and_bitter_leaf_soup, food: @iru, quantity: 1)


# Prepare Moin Moin & Garri
RecipeFood.create(recipe: @moin_moin_and_garri, food: @oloyin_beans, quantity: 2)
RecipeFood.create(recipe: @moin_moin_and_garri, food: @eggs, quantity: 4)
RecipeFood.create(recipe: @moin_moin_and_garri, food: @onions, quantity: 2)
RecipeFood.create(recipe: @moin_moin_and_garri, food: @vegetable_oil, quantity: 1)
RecipeFood.create(recipe: @moin_moin_and_garri, food: @rice, quantity: 1)


# Jollof Rice and Chicken
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @rice, quantity: 1)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @onions, quantity: 3)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @tomatoes, quantity: 2)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @pepper, quantity: 1)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @ginger, quantity: 1)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @bay_leaves, quantity: 1)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @chicken, quantity: 2)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @salt, quantity: 1)
RecipeFood.create(recipe: @jollof_rice_and_chicken, food: @maggi, quantity: 3)

# Prepare Yam and Egg Sauce
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @yam, quantity: 1)
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @eggs, quantity: 1)
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @onions, quantity: 1)
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @vegetable_oil, quantity: 1)
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @salt, quantity: 1)
RecipeFood.create(recipe: @yam_and_egg_sauce, food: @maggi, quantity: 1)

# Prepare Rice and Chicken Stew
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @rice, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @onions, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @tomatoes, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @pepper, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @bay_leaves, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @chicken, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @salt, quantity: 1)
RecipeFood.create(recipe: @rice_and_chicken_stew, food: @maggi, quantity: 1)
end