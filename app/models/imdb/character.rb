
class Character

    @@all = []

    attr_reader :actor

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def number_of_shows
        #Loop through ShowCharacter
        #Return number of shows the character has appeared in
        all = ShowCharacter.all.select do |showcharacter|
            showcharacter.character == self
        end
        all.length
    end

    def number_of_movies
        all = MovieCharacter.all.select do |moviecharacter|
            moviecharacter.character == self
        end
        all.length
    end

    def total_appearances
        #Return number of total appearances in both shows and movies
        self.number_of_movies + self.number_of_shows
    end

    def self.most_appearances
        #Loop through all characters
        #Find the character with the highest number of total_appearances

        self.all.max_by do |character|
            character.total_appearances
        end
    end

end