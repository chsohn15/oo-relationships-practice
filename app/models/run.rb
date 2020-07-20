require_relative "./Ingredient.rb"
require "pry"

sprinkles = Ingredient.new("sprinkles")
print sprinkles

print Ingredient.find_all_by_name("sprinkles")

