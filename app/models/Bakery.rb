# create files for your ruby classes in this directory


class Bakery

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        # Loop through dessert-ingredient pairs
        # Find desserts with this bakery
        
        all_desserts = Dessert_Ingredient.all.select do |pair|
            pair.dessert.bakery == self
        end

        all_desserts.map do |dessert|
            dessert.ingredient
        end
        # Return ingredients of those desserts
            
    end

    def desserts
        all_desserts = Dessert_Ingredient.all.select do |pair|
            pair.dessert.bakery == self
        end

        all_desserts.map do |dessert1|
            dessert1.dessert
        end
    end

    def average_calories
        all_calories = self.desserts.map do |dessert|
            dessert.calories
        end
        average = all_calories.inject(0, :+)/all_calories.length
        average
    end

    def shopping_list
        all_ingredients = ingredients.map do |ingredient|
            ingredient.name
        end
        all_ingredients.uniq.join(", ")
    end

end