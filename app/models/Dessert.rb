

class Dessert

    @@all = []

    attr_accessor :ingredient, :bakery

    def initialize (name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        # Loop through Dessert-Ingredient list
        # Find ingredients associated with this dessert
        pairs = Dessert_Ingredient.all.select do |pair|
            pair.dessert == self
        end
        pairs.map do |item|
            item.ingredient
        end
    end

    def calories
        # Loop through ingredients-dessert pairs
        # Calculate calories for each ingredient
        # Add them together
        calorie_array = self.ingredients.map do |ingredient|
            ingredient.calories
        end
        all_calories = calorie_array.inject(0, :+)
        all_calories.to_f
    end







end