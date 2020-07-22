class Show

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end
    
end