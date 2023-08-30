# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

RecipeIngredient.destroy_all
UploadedIngredient.destroy_all
RecipeIngredient.destroy_all
UploadedIngredient.destroy_all
PantryIngredient.destroy_all
Ingredient.destroy_all
Review.destroy_all
Meal.destroy_all
User.destroy_all
Recipe.destroy_all

user1 = User.create(email: "horace@lewagon.co", password: "password")
user2 = User.create(email: "aliia@lewagon.co", password: "password")
user3 = User.create(email: "kai@lewagon.co", password: "password")
user4 = User.create(email: "vincent@lewagon.co", password: "password")
users = [user1, user2, user3, user4]

6.times do
  User.create(email: Faker::Internet.email(domain: "lewagon.co"), password: "password")
end
p 'users made'

categories = {
  "Baking" => [
    "All-purpose flour",
    "Baking powder",
    "Baking soda",
    "Yeast",
    "Cocoa powder",
    "Cornstarch",
    "Rice flour",
    "Almond meal",
    "Bread",
    "Cereal",
    "Oats",
    "Coconut flour",
    "Bread flour",
    "Cake flour",
    "Pastry flour",
    "Millet flour",
    "Rye flour",
    "Bread crumbs",
    "Potato starch",
    "Tapioca flour",
    "Arrowroot powder",
    "Gelatin",
    "Sourdough starter",
    "Chickpea flour",
    "Xanthan gum",
    "Graham cracker crumbs",
    "Wheat gluten",
    "Semolina",
    "Caster sugar",
    "Oat flour",
    "Flour",
    "Spelt flour",
    "Cornmeal",
    "Sorghum flour",
    "Masa harina",
  ],
  "Canned and Jarred" => [
    "Baby corn",
    "Chicken broth",
    "Bamboo shoots",
    "Vegetable broth",
    "Lentils",
    "Tomato sauce",
    "Coconut milk",
    "Canned peaches",
    "Mandarin oranges",
    "Water chestnuts",
    "Pickled ginger",
    "Beetroot",
    "Black beans",
    "Kimchi",
    "Artichoke hearts",
    "Canned tomatoes",
    "Pickled jalapenos",
    "Canned lychee",
    "Canned olives",
    "Chickpeas",
    "Canned tuna",
    "Canned jackfruit",
    "Anchovies",
    "Sardines",
    "Canned spinach",
    "Green curry paste",
    "Pickled vegetables",
    "Pineapple slices",
    "Sauerkraut",
    "Tinned tomatoes",
    "Canned salmon",
    "Canned corn",
    "Red curry paste",
    "Canned beans",
    "Beef broth",
  ],
  "Cheese" => [
    "Cheddar",
    "Mozzarella",
    "Parmesan",
    "Feta",
    "Cream cheese",
    "Ricotta",
    "Gouda",
    "Blue cheese",
    "Brie",
    "Swiss cheese",
    "Goat cheese",
    "Camembert",
    "Provolone",
    "Cottage cheese",
    "Mascarpone",
    "Colby",
    "Emmental",
    "Gruyere",
    "Havarti",
    "Edam",
    "Gorgonzola",
    "Fontina",
    "Roquefort",
    "Halloumi",
    "Quark",
    "Stilton",
    "Pecorino",
    "Queso fresco",
    "Paneer",
  ],
  "Condiments" => [
    "Gochujang",
    "Dijon mustard",
    "Tartar sauce",
    "BBQ sauce",
    "Soy sauce",
    "Mint sauce",
    "Horseradish",
    "Wasabi",
    "Sweet chili sauce",
    "Miso paste",
    "Ponzu sauce",
    "Plum sauce",
    "Sambal Oelek",
    "Chimichurri sauce",
    "Mirin",
    "Oyster sauce",
    "Thai sweet basil paste",
    "Hoisin sauce",
    "Fish sauce",
    "Sriracha",
    "Fermented bean paste",
    "Mustard",
    "Worcestershire sauce",
    "Mayonnaise",
    "Tamarind paste",
    "Pickle relish",
    "Teriyaki sauce",
    "Vinegar",
    "Ketchup",
  ],
  "Meat" => [
    "Chicken thigh",
    "Chicken drumsticks",
    "Beef mince",
    "Pork belly",
    "Pork loin",
    "Turkey breast",
    "Kangaroo meat",
    "Chicken mince",
    "Ground lamb",
    "Veal",
    "Duck breast",
    "Beef short ribs",
    "Pork shoulder",
    "Lamb shank",
    "Beef chuck",
    "Ground pork",
    "Chicken breast",
    "Venison",
    "Pork chops",
    "Chicken wings",
    "Beef brisket",
    "Beef tenderloin",
    "Corned beef",
    "Ground turkey",
    "Beef liver",
    "Lamb chops",
    "Goat meat",
    "Quail",
    "Chicken liver",
    "Beef tongue",
  ],
  "Milk, Eggs, Other Dairy" => [
    "Whole milk",
    "Eggs",
    "Butter",
    "Yogurt",
    "Heavy cream",
    "Sour cream",
    "Whipping cream",
    "Lactose-free yogurt",
    "Buttermilk",
    "Skim milk",
    "Ghee",
    "Cottage cheese",
    "Almond milk",
    "Coconut milk",
    "Evaporated milk",
    "Condensed milk",
    "Oat milk",
    "Lactose-free milk",
    "Soy milk",
    "Rice milk",
    "Cashew milk",
    "Goat milk",
    "Lassi",
    "Egg whites",
    "Cream cheese",
    "Clotted cream",
    "Creme fraiche",
    "Yoghurt",
    "Greek yogurt",
  ],
  "Nuts" => [
    "Chia seeds",
    "Pistachios",
    "Hemp seeds",
    "Peanuts",
    "Cashews",
    "Black walnuts",
    "Peanut butter",
    "Macadamia nuts",
    "Almond butter",
    "Poppy seeds",
    "Ginkgo nuts",
    "Tiger nuts",
    "Coconut",
    "Flaxseeds",
    "Hazelnuts",
    "Chestnuts",
    "Sesame seeds",
    "Pine nuts",
    "Pumpkin seeds",
    "Almonds",
    "Brazil nuts",
    "Walnuts",
    "Hazelnut butter",
    "Pistachio butter",
    "Sunflower seeds",
    "Walnut oil",
    "Acorns",
    "Pecans",
    "Cashew butter",
    "Safflower seeds",
  ],
  "Oil, Vinegar, Salad Dressing" => [
    "Olive oil",
    "Vegetable oil",
    "Coconut oil",
    "Sesame oil",
    "Peanut oil",
    "Avocado oil",
    "Sunflower oil",
    "Red wine vinegar",
    "Vinegar",
    "Garlic oil",
    "Chili oil",
    "Grapeseed oil",
    "Rice bran oil",
    "Corn oil",
    "Palm oil",
    "Safflower oil",
    "Walnut oil",
    "Flaxseed oil",
    "Hemp oil",
    "Argan oil",
    "Toasted sesame oil",
    "Red palm oil",
    "Hazelnut oil",
    "Almond oil",
    "Soybean oil",
    "Balsamic vinegar",
    "Apple cider vinegar",
    "Rice vinegar",
    "Macadamia oil",
    "Rapeseed oil",
  ],
  "Produce" => [
    "Sweet potatoes",
    "Lemons",
    "Onions",
    "Apples",
    "Bananas",
    "Cauliflower",
    "Watermelon",
    "Rice",
    "Artichoke",
    "Asparagus",
    "Tomatoes",
    "Beetroot",
    "Carrots",
    "Spinach",
    "Kale",
    "Swiss chard",
    "Grapes",
    "Mushrooms",
    "Potatoes",
    "Corn",
    "Ginger",
    "Squash",
    "Brussels sprouts",
    "Strawberries",
    "Peaches",
    "Cucumber",
    "Lettuce",
    "Oranges",
    "Radish",
    "Courgette",
    "Bell peppers",
    "Blueberries",
    "Noodles",
    "Garlic",
    "Pumpkin",
    "Quinoa",
    "Cabbage",
    "Pineapple",
    "Celery",
    "Leek",
    "Broccoli",
    "Pasta",
    "Aubergine",
  ],
  "Seafood" => [
    "Salmon",
    "Shrimp",
    "Tuna",
    "Cod",
    "Sardines",
    "Mackerel",
    "Trout",
    "Oysters",
    "Clams",
    "Lobster",
    "Squid",
    "Crab",
    "Scallops",
    "Anchovies",
    "Halibut",
    "Tilapia",
    "Haddock",
    "Crayfish",
    "Mahi-mahi",
    "Red snapper",
    "Octopus",
    "Catfish",
    "Sea bass",
    "Flounder",
    "Mussels",
    "Swordfish",
    "Grouper",
    "Barramundi",
    "Eel",
    "Bream",
  ],
  "Spices and Seasonings" => [
    "Chili powder",
    "Basil",
    "Black pepper",
    "Ginger powder",
    "Star anise",
    "Coriander",
    "Vanilla",
    "Cloves",
    "Cinnamon",
    "Rosemary",
    "Turmeric",
    "Allspice",
    "Lemongrass",
    "Curry powder",
    "Cardamom",
    "Oregano",
    "Mint",
    "Thyme",
    "Fennel seeds",
    "Fenugreek",
    "Paprika",
    "Cumin",
    "Sage",
    "Dill",
    "Nutmeg",
    "Saffron",
    "Salt",
    "Spices",
    "Tarragon",
    "Bay leaves",
    "Pepper",
    "Garlic powder",
  ],
  "Sweeteners (Nut butters, Jams, and Honey)" => [
    "Sugar",
    "Honey",
    "Maple syrup",
    "Agave nectar",
    "Brown sugar",
    "Nutella",
    "Coconut sugar",
    "Cane sugar",
    "Golden syrup",
    "Palm sugar",
    "Rice syrup",
    "Date syrup",
    "Sorghum syrup",
    "Barley malt syrup",
    "Apricot jam",
    "Blueberry jam",
    "Almond syrup",
    "Molasses",
    "Stevia",
    "Xylitol",
    "Erythritol",
    "Sucralose",
    "Aspartame",
    "Saccharin",
    "Mannitol",
    "Sorbitol",
    "Lactitol",
    "Tagatose",
    "Treacle",
  ],
}

# Seed the database
categories.each do |category, ingredients|
  ingredients.each do |ingredient_name|
    Ingredient.create!(name: ingredient_name, category: category)
  end
end

puts "Seeded #{Ingredient.count} ingredients."

recipe1 = Recipe.create(
  title: "Vincent's Fried Chicken",
  image: "https://www.coles.com.au/content/dam/coles/inspire-create/july22-images/Jul22-The-new-fried-chicken-976x549.jpg",
  content: "Southern beer battered chicken wings",
  cuisine: "American",
  time: 2,
  people: 3
)
RecipeIngredient.create(
  serving: 6,
  ingredient: Ingredient.all.sample,
  recipe: recipe1
)
RecipeIngredient.create(
  serving: 2,
  ingredient: Ingredient.all.sample,
  recipe: recipe1
)
RecipeIngredient.create(
  serving: 3,
  ingredient: Ingredient.all.sample,
  recipe: recipe1
)
# recipe2 = Recipe.create(
#   title: "Vincent's Fried Chicken",
#   image: "https://www.coles.com.au/content/dam/coles/inspire-create/july22-images/Jul22-The-new-fried-chicken-976x549.jpg",
#   content: "Southern beer battered chicken wings",
#   cuisine: "American",
#   time: 2,
#   people: 3
# )
# RecipeIngredient.create(
#   serving: rand(1..5),
#   ingredient_id: Ingredient.all.sample.id,
#   recipe_id: recipe2.id
# )

30.times do
  recipe = Recipe.create(
    title: Faker::Food.dish,
    image: "http://source.unsplash.com/featured/?#{Faker::Food.dish}&#{rand(1000)}",
    content: Faker::Food.description,
    cuisine: Faker::Food.ethnic_category,
    time: rand(1..5),
    people: rand(1..10)
  )
  RecipeIngredient.create(
    serving: rand(1..5),
    ingredient_id: Ingredient.all.sample.id,
    recipe_id: recipe.id
  )
end

p 'recipes made'
20.times do
  meal = Meal.create(
    user_id: User.all.sample.id,
    recipe_id: Recipe.all.sample.id,
    cuisine_preference: Faker::Food.ethnic_category,
    img: "http://source.unsplash.com/featured/?#{Faker::Food.dish}&#{rand(1000)}",
    time_preference: rand(1..3),
    people_preference: rand(1..5)
  )
  UploadedIngredient.create(
    meal_id: meal.id,
    ingredient_id: Ingredient.all.sample.id
  )
end
p 'meals created'

Review.create(
  content: "No sugar",
  meal_id: Meal.all.sample.id
)

Review.create(
  content: "Change thyme for basil",
  meal_id: Meal.all.sample.id
)

Review.create(
  content: "I like this one!",
  meal_id: Meal.all.sample.id
)
p 'reviews created'
