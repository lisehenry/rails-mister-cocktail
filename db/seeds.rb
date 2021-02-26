# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

# puts 'Cleaning ALL databases...'

# Cocktail.destroy_all
# Ingredient.destroy_all
# Dose.destroy_all

# puts 'Seeding some ingredients...'

# api = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
# results = JSON.parse(api).to_h
# ingredients = results['drinks']

# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient['strIngredient1'])
# end

# puts 'Finished!'

# API structure
# 'drinks' => [{'strIngredient1' => VALUE }, {...}, ...]
# drinks[index] = {'strIngredient1' => VALUE }
# drinks[index].sample["strIngredient1"]
