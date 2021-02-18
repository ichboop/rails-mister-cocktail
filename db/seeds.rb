# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
# Ingredient.create_all

# Ingredient.each do |name|

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
  json = open(url).read
  # json.read
  #Parse the JSON into a hash
  parsed = ActiveSupport::JSON.decode(json)
  # p parsed
  parsed['drinks'].each do |result|
    Ingredient.create(name: result['strIngredient1'])
    # p result
  end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
