require "pry"
class Ingredient

        @@all = []

        attr_accessor :name, :calories

        def initialize(name, calories)
            @name = name
            @calories = calories
            @@all << self
        end

        def self.all
            @@all
        end

        def self.find_all_by_name(ingredient_name)
            #take a string argument and return 
            #an array of all ingredients that include 
            #that string in their name
                self.all.select do |ingredient|
                    ingredient.name.include?(ingredient_name)
                    # Use include? instead?
                end
        end

        def dessert(ingredient)
            Dessert_Ingredient.all.select do |pair|
                pair.ingredient == ingredient
            end
        end

        def bakeries
            #Loop through dessert_ingredients
            #Find desserts that uses ingredient
            #return bakery of that dessert

            all_pairs = Dessert_Ingredient.all.select do |pair|
                pair.ingredient == self
            end
            all_pairs.map do |pair|
                pair.dessert.bakery
            end
        end

end
