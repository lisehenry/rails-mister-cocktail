# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# puts 'Cleaning databases...'
# Ingredient.destroy_all
# Cocktail.destroy_all
# Dose.destroy_all
# puts 'Databases cleaned!'

# puts 'Creating 10 fake ingredients...'

# api = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
# ingredients = JSON.parse(api).to_h

# 10.times do
#   Ingredient.create(
#     name: ingredients['drinks'].sample['strIngredient1']
#   )
# end

# puts 'Finished!'

# API structure
# drinks = [{'strIngredient1' => VALUE }, {...}, ...]
# drinks[index] = {'strIngredient1' => VALUE }
# drinks[index].sample["strIngredient1"]
