class Movie

    attr_accessor :name, :characters

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # Return all characters in a movie
    def characters
        all_movie_char = MovieCharacter.all.select do |moviecharacter|
            moviecharacter.movie == self
        end
        all_movie_char.map do |moviecharacter|
            moviecharacter.character
        end
    end

    #Return all actors in a movie
    def actors
        #Loop through all characters in a movie
        #Create an array of all actors in a movie
        array = []
        self.characters.each do |character|
            if !array.include?(character.actor)
                array << character.actor
            end
        end
        array
    end


    #Return movie with the most actors in it
    def self.most_actors
        # Loop through moviecharacter table
        # Find 
    end
end