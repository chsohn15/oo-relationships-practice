require_relative "./Dessert_Ingredient.rb"
require_relative "./Ingredient.rb"
require_relative "./Dessert.rb"
require_relative "./Bakery.rb"
require "pry"

sprinkles = Ingredient.new("sprinkles", 10.0)
red_sprinkles = Ingredient.new("red sprinkles", 10)
sugar = Ingredient.new("sugar", 20)
sprinkles

magnolia = Bakery.new("Magnolia")

cupcake = Dessert.new("cupcake", magnolia)
cake = Dessert.new("cake", magnolia)

cupcake_sprinkles = Dessert_Ingredient.new(cupcake, sprinkles)
cupcake_sugar = Dessert_Ingredient.new(cupcake, sugar)
cupcake.ingredients

cake_sugar = Dessert_Ingredient.new(cake, sugar)

puts "\n"
puts "Magnolia Bakery's ingredients:"
print magnolia.ingredients
puts "\n"
puts "\n"
puts "Magnolia Bakery's desserts:"
print magnolia.desserts
puts "\n"
puts "\n"
# puts "Bakery with cupcakes:"
# print cupcake.bakery

# puts "The bakery that serves sprinkles:"
# puts sprinkles.bakeries
# print Ingredient.find_all_by_name("sprinkles")

# puts "Array of cupcake calories:"
# print cupcake.calories

puts "Average calories at Magnolia:"
print magnolia.average_calories
puts "\n"
puts "Magnolia's shopping list:"
print magnolia.shopping_list

