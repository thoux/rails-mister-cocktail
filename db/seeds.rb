# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

# require 'json'
# require 'open-uri'

# NEW seed

# url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita'
# ingredient_serialized = open(url).read
# ingredients = JSON.parse(ingredient_serialized)

# ingredients["drinks"].each do |drink|
#   Ingredient.create!(name: drink["strIngredient1"])
# end

# OLD seed
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

ingredients["drinks"].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

cocktail_1 = Cocktail.create!(name: "Cocktail 1", image_url: "https://source.unsplash.com/featured/?cocktail,fraise")
cocktail_2 =Cocktail.create!(name: "Cocktail 2", image_url: "https://source.unsplash.com/featured/?cocktail,ananas")
cocktail_3 =Cocktail.create!(name: "Cocktail 3", image_url: "https://source.unsplash.com/featured/?cocktail,mangue")

ingredient_1 = Ingredient.first
ingredient_2 = Ingredient.second
ingredient_3 = Ingredient.last

#Cocktail 1
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_1, ingredient: ingredient_1)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_1, ingredient: ingredient_2)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_1, ingredient: ingredient_3)

#Cocktail 2
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_2, ingredient: ingredient_1)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_2, ingredient: ingredient_2)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_2, ingredient: ingredient_3)

#Cocktail 3
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_3, ingredient: ingredient_1)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_3, ingredient: ingredient_2)
Dose.create!(description: "Lorem ipsum dolor sit", cocktail: cocktail_3, ingredient: ingredient_3)


