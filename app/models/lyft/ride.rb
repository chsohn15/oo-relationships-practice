class Ride

    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        all_rides = self.all.map do |ride|
            ride.distance
        end
        all_rides.inject(0, :+)/self.all.length
    end

end