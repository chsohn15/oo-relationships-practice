class Actor 

    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end
    
    def self.all
        @@all
    end

    def all_characters
        #Returns all characters the actor has played
        Character.all.select do |character|
            character.actor == self
        end
    end

    def num_of_characters
        self.all_characters.length
    end

    def self.most_characters
        Actor.all.max_by do |actor|
            actor.num_of_characters
        end
    end
end