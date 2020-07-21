require_relative "./driver.rb"
require_relative "./passenger.rb"
require_relative "./ride.rb"
require "pry"

kate = Passenger.new("Kate")
alice = Passenger.new("Alice")
bob = Driver.new("Bob")
lana = Driver.new("Lana")

kates_ride = Ride.new(kate, bob, 15)
alices_ride = Ride.new(alice, lana, 50)
alices_ride2 = Ride.new(alice, bob, 60)

puts "Kate's driver:"
print kates_ride.driver.name
puts "\n"

puts "How many miles Alice traveled:"
print alices_ride.distance
puts "\n"

puts "All of Alice's rides:"
print alice.rides
puts "\n"

puts "All of Alice's drivers:"
print alice.drivers
puts "\n"

puts "Bob's rides:"
print bob.rides
puts "\n"

puts "Bob's passengers:"
print bob.passengers
puts "\n"

puts "Average distance of all rides:"
print Ride.average_distance
puts "\n"

puts "Alice's total distance:"
print alice.total_distance
puts "\n"

puts "Premium members:"
print Passenger.premium_members
puts "\n"

puts "Drivers who exceeded mileage cap:"
print Driver.mileage_cap(50.0)