require "pry"
class Ingredient

        @@all = []

        attr_accessor :name

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
        end

        def self.find_all_by_name(ingredient_name)
                self.all.select do |ingredient|
                    ingredient.name == ingredient_name
                end
                
        end

        def dessert(ingredient)
            Dessert.all.select do |dessert|
                dessert.ingredient == ingredient
            end
        end

end
