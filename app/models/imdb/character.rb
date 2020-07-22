
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

end