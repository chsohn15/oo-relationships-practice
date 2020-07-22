class ShowCharacter

    @@all = []

    attr_reader :character, :show

    def initialize(character, show)
        @character = character
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end
    
end