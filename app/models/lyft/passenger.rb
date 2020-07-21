class Passenger

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        arr = self.rides.map do |ride|
            ride.distance 
        end
        arr.inject(0, :+)
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end